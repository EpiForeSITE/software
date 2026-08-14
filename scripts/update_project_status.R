#!/usr/bin/env Rscript

# Script to generate project status report
# This script reads project YAML files, fetches GitHub data, and generates project_status.md

# Load required libraries
suppressMessages({
  library(yaml)
  library(data.table)
  library(httr)
  library(jsonlite)
})

# Helper function to safely make GitHub API calls.
# Returns the parsed body, with the response headers attached as the
# "response_headers" attribute (needed to read pagination `Link` headers).
github_api_call <- function(url, token = NULL) {
  headers <- list(
    'Accept' = 'application/vnd.github+json',
    'User-Agent' = 'EpiForeSITE-software-tracker'
  )

  if (!is.null(token)) {
    headers[['Authorization']] <- paste0('Bearer ', token)
  }

  tryCatch({
    response <- GET(url, do.call(add_headers, headers))
    if (status_code(response) == 200) {
      parsed <- fromJSON(content(response, as = "text"))
      attr(parsed, "response_headers") <- headers(response)
      return(parsed)
    } else {
      warning(paste("API call failed for", url, "- Status:", status_code(response)))
      return(NULL)
    }
  }, error = function(e) {
    warning(paste("Error in API call for", url, ":", e$message))
    return(NULL)
  })
}

# Size of a paginated collection (commits, contributors, pull requests, ...).
# GitHub does not report collection sizes, but when one item is requested per
# page the last page number in the `Link` header is the number of items. This is
# exact and costs a single request - unlike the search API, which is heavily
# rate limited and silently returns 0 while a repository is unindexed, and
# unlike length(), which counts the columns of the parsed data frame.
count_from_response <- function(response) {
  # A failed request is unknown (NA), an empty collection is a genuine zero
  if (is.null(response)) return(NA_integer_)
  if (length(response) == 0) return(0L)

  link <- attr(response, "response_headers")[["link"]]
  if (!is.null(link)) {
    last_page <- regmatches(link, regexec('[?&]page=([0-9]+)>; rel="last"', link))[[1]]
    if (length(last_page) >= 2) return(as.integer(last_page[2]))
  }

  # No `Link` header means everything fit in the single requested page
  1L
}

github_count <- function(url, token = NULL) {
  separator <- if (grepl("?", url, fixed = TRUE)) "&" else "?"
  count_from_response(github_api_call(paste0(url, separator, "per_page=1"), token))
}

# ---------------------------------------------------------------------------
# CRAN helpers
# ---------------------------------------------------------------------------

# Index of all package names currently on CRAN (downloaded once per run)
cran_index <- local({
  cached <- NULL
  function() {
    if (is.null(cached)) {
      cached <<- tryCatch(
        rownames(available.packages(repos = "https://cloud.r-project.org")),
        error = function(e) {
          warning(paste("Could not fetch the CRAN package index:", e$message))
          character(0)
        }
      )
    }
    cached
  }
})

# Package metadata (DESCRIPTION fields) from the CRAN database
cran_metadata <- function(pkg) {
  tryCatch({
    response <- GET(
      paste0("https://crandb.r-pkg.org/", pkg),
      add_headers('User-Agent' = 'EpiForeSITE-software-tracker')
    )
    if (status_code(response) != 200) return(NULL)
    fromJSON(content(response, as = "text", encoding = "UTF-8"))
  }, error = function(e) NULL)
}

# Resolve the CRAN package a project corresponds to, if any.
#
# The YAML `cran_name` field takes precedence: give the package name to force a
# match, or "no"/"none" to opt out. Without it, the repository name and the
# first word of `tool_name` are tried against the CRAN index, and a hit is only
# accepted when the CRAN metadata points back at the same GitHub owner or
# repository (this is what keeps, e.g., a project named "rabies" from being
# matched to an unrelated CRAN package of the same name).
detect_cran_package <- function(cran_name, tool_name, owner, repo) {
  declared <- !is.na(cran_name) && nzchar(cran_name) && cran_name != ".na.character"

  if (declared) {
    if (tolower(cran_name) %in% c("no", "none", "false")) return(NA_character_)
    return(trimws(cran_name))
  }

  candidates <- unique(c(repo, trimws(sub(":.*$", "", tool_name))))
  candidates <- candidates[!is.na(candidates) & !grepl("[^A-Za-z0-9.]", candidates)]
  candidates <- candidates[candidates %in% cran_index()]

  for (candidate in candidates) {
    meta <- cran_metadata(candidate)
    if (is.null(meta)) next
    urls <- tolower(paste(c(meta$URL, meta$BugReports), collapse = " "))
    same_owner <- !is.na(owner) && grepl(tolower(paste0("github.com/", owner, "/")), urls, fixed = TRUE)
    same_repo <- !is.na(repo) && grepl(tolower(paste0("/", repo)), urls, fixed = TRUE)
    if (same_owner || same_repo) return(candidate)
  }

  NA_character_
}

# CRAN version and download badges for a package
create_cran_badges_html <- function(pkg) {
  if (is.na(pkg)) return("")
  cran_page <- paste0("https://cran.r-project.org/package=", pkg)
  paste(
    paste0("[![CRAN](https://www.r-pkg.org/badges/version/", pkg, ")](", cran_page, ")"),
    paste0("[![Downloads](https://cranlogs.r-pkg.org/badges/grand-total/", pkg, ")](", cran_page, ")"),
    paste0("[![Downloads/month](https://cranlogs.r-pkg.org/badges/", pkg, ")](", cran_page, ")"),
    sep = "<br> "
  )
}

# Function to extract owner and repo from GitHub URL
extract_repo_info <- function(github_url) {

  # Checking if is a vector or not
  if (length(github_url) > 1L)
    return(
      lapply(github_url, extract_repo_info)
    )

  if (is.na(github_url) || github_url == "") return(
    list(owner = NA, repo = NA)
    )
  
  # Remove trailing slash and .git if present
  clean_url <- gsub("/$", "", github_url)
  clean_url <- gsub("\\.git$", "", clean_url)
  
  # Extract owner/repo from GitHub URL
  pattern <- "github\\.com/([^/]+)/([^/]+)"
  matches <- regmatches(clean_url, regexec(pattern, clean_url))
  
  if (length(matches[[1]]) >= 3) {
    return(list(owner = matches[[1]][2], repo = matches[[1]][3]))
  } else {
    return(list(owner = NA, repo = NA))
  }
}

# Function to get project metrics from GitHub API
get_project_metrics <- function(owner, repo, token = NULL) {
  if (is.na(owner) || is.na(repo)) {
    return(list(
      contributors = 0L,
      open_issues = 0L,
      open_prs = 0L,
      last_commit_date = "Unknown",
      last_commit_sha = "Unknown",
      contributor_avatars = character(0),
      total_commits = NA_integer_
    ))
  }
  
  base_url <- paste0("https://api.github.com/repos/", owner, "/", repo)
  
  # Get open pull requests
  open_prs <- github_count(paste0(base_url, "/pulls?state=open"), token)

  # Get repository info. Note that GitHub counts pull requests as issues in
  # `open_issues_count`, so they are discounted to match the issues badge.
  repo_info <- github_api_call(paste0(base_url), token)
  open_issues <- if (!is.null(repo_info)) {
    max(0L, repo_info$open_issues_count - (if (is.na(open_prs)) 0L else open_prs))
  } else {
    NA_integer_
  }

  # Get contributors
  contributors_count <- github_count(paste0(base_url, "/contributors"), token)
  contributors_data <- github_api_call(paste0(base_url, "/contributors?per_page=10"), token)
  contributor_avatars <- character(0)
  if (!is.null(contributors_data) && length(contributors_data) > 0) {
    contributor_avatars <- contributors_data$avatar_url
  }

  # Get last commit and the total commit count (single request, see helper)
  commits_data <- github_api_call(paste0(base_url, "/commits?per_page=1"), token)
  total_commits <- count_from_response(commits_data)

  last_commit_date <- "Unknown"
  last_commit_sha <- "Unknown"
  if (!is.null(commits_data) && length(commits_data) > 0) {
    last_commit_date <- commits_data[1,,drop=FALSE]$commit$committer$date
    last_commit_sha <- substr(commits_data[1,,drop=FALSE]$sha, 1, 7)
    # Convert to readable date
    last_commit_date <- as.Date(substr(last_commit_date, 1, 10))
  }

  return(list(
    contributors = contributors_count,
    open_issues = open_issues,
    open_prs = open_prs,
    last_commit_date = last_commit_date,
    last_commit_sha = last_commit_sha,
    contributor_avatars = contributor_avatars,
    total_commits = total_commits
  ))
}

# Function to create contributor avatars HTML
create_avatars_html <- function(avatars, max_show = 5) {
  if (length(avatars) == 0) return("")
  
  avatars_to_show <- head(avatars, max_show)
  avatar_html <- sapply(avatars_to_show, function(url) {
    paste0('<img src="', url, '" width="20" height="20" style="border-radius: 50%; margin-right: 2px;" alt="Contributor" />')
  })
  
  result <- paste(avatar_html, collapse = "")
  if (length(avatars) > max_show) {
    result <- paste0(result, ' <span style="color: gray;">+', length(avatars) - max_show, ' more</span>')
  }
  
  return(result)
}

# Main processing
main <- function() {
  cat("Starting project status update...\n")
  
  # Get GitHub token from environment (if available)
  github_token <- Sys.getenv("GITHUB_TOKEN", unset = NA)
  if (is.na(github_token)) {
    cat("Warning: GITHUB_TOKEN not found. API rate limits will be lower.\n")
    github_token <- NULL
  }
  
  # Read all YAML files from data directory
  yaml_files <- list.files("data", pattern = "ya?ml$", full.names = TRUE)
  cat(paste("Found", length(yaml_files), "YAML files\n"))
  
  # Load and process YAML files
  projects <- lapply(yaml_files, function(file) {
    tryCatch({
      data <- yaml.load_file(file)
      # Convert to data.table for easier handling
      dt <- as.data.table(data)
      # Add source file for debugging
      dt[, source_file := basename(file)]
      return(dt)
    }, error = function(e) {
      warning(paste("Failed to read", file, ":", e$message))
      return(NULL)
    })
  })
  
  # Remove NULL entries and combine
  projects <- projects[!sapply(projects, is.null)]
  if (length(projects) == 0) {
    cat("No valid YAML files found. Exiting.\n")
    return()
  }
  projects <- rbindlist(projects, fill = TRUE)
  
  # Filter projects with GitHub links (exclude .na.character and empty strings)
  projects_with_github <- projects[
    !is.na(github_link) & 
    github_link != "" & 
    github_link != ".na.character" &
    grepl("github\\.com", github_link, ignore.case = TRUE)
  ]
  cat(paste("Found", nrow(projects_with_github), "projects with GitHub links\n"))
  
  if (nrow(projects_with_github) == 0) {
    cat("No projects with GitHub links found. Exiting.\n")
    return()
  }
  
  # Extract repository information and get metrics
  projects_with_github[, c("owner", "repo") := {
    repo_info <- extract_repo_info(github_link)
    list(
      sapply(repo_info, "[[", "owner"),
      sapply(repo_info, "[[", "repo")
    )}]
  
  # `cran_name` is optional, so it may be missing from every YAML file
  if (!"cran_name" %in% names(projects_with_github)) {
    projects_with_github[, cran_name := NA_character_]
  }

  # Initialize metrics columns
  projects_with_github[, `:=`(
    contributors = as.integer(0),
    open_issues = as.integer(0),
    open_prs = as.integer(0),
    last_commit_date = as.character("Unknown"),
    last_commit_sha = as.character("Unknown"),
    contributor_avatars_html = as.character(""),
    total_commits = NA_integer_,
    cran_package = NA_character_
  )]
  
  # Get metrics for each project (with progress tracking)
  total_projects <- nrow(projects_with_github)
  for (i in seq_len(total_projects)) {
    progress <- sprintf("[%d/%d]", i, total_projects)
    cat(paste(progress, "Processing project:", projects_with_github$tool_name[i], "\n"))
    
    owner <- projects_with_github$owner[i]
    repo <- projects_with_github$repo[i]
    
    if (!is.na(owner) && !is.na(repo)) {
      metrics <- get_project_metrics(owner, repo, github_token)
      # Note: not named `cran_package`, which `:=` below would read as the column
      cran_pkg <- detect_cran_package(
        projects_with_github$cran_name[i],
        projects_with_github$tool_name[i],
        owner, repo
      )

      projects_with_github[i, `:=`(
        contributors = metrics$contributors,
        open_issues = metrics$open_issues,
        open_prs = metrics$open_prs,
        last_commit_date = as.character(metrics$last_commit_date),
        last_commit_sha = metrics$last_commit_sha,
        contributor_avatars_html = create_avatars_html(metrics$contributor_avatars),
        total_commits = metrics$total_commits,
        cran_package = cran_pkg
      )]

      # Log some info about what we found
      cat(paste("  ->", metrics$contributors, "contributors,", metrics$open_issues, "issues,", metrics$open_prs, "PRs\n"))
      if (!is.na(cran_pkg)) {
        cat(paste("  -> on CRAN as", cran_pkg, "\n"))
      }
    } else {
      cat("  -> Invalid repository info, skipping API calls\n")
    }
    
    # Add small delay to be nice to GitHub API
    if (i < total_projects) {
      Sys.sleep(0.5)
    }
  }
  
  # Sort by most recent activity so the projects moving right now come first
  projects_with_github[, last_commit_as_date := as.Date(last_commit_date, optional = TRUE)]
  setorder(projects_with_github, -last_commit_as_date, na.last = TRUE)

  # Activity summary
  today <- Sys.Date()
  days_since <- as.numeric(today - projects_with_github$last_commit_as_date)
  n_active <- sum(!is.na(days_since) & days_since <= 90)
  n_recent <- sum(!is.na(days_since) & days_since > 90 & days_since <= 365)
  n_cran <- sum(!is.na(projects_with_github$cran_package))

  # Generate markdown table
  markdown_content <- c(
    "# Project Status Dashboard",
    "",
    paste("Last updated:", Sys.time(), "(UTC)"),
    "",
    paste("This dashboard tracks", nrow(projects_with_github), "EpiForeSITE projects with GitHub repositories."),
    "",
    "| | |",
    "|---|---|",
    paste0("| 🟢 Active (commit in the last 90 days) | ", n_active, " |"),
    paste0("| 🟡 Slow (commit in the last year) | ", n_recent, " |"),
    paste0("| ⚪ Dormant (no commit in over a year) | ", nrow(projects_with_github) - n_active - n_recent, " |"),
    paste0("| 📦 Published on CRAN | ", n_cran, " |"),
    paste0("| Open issues / open PRs | ",
           sum(projects_with_github$open_issues, na.rm = TRUE), " / ",
           sum(projects_with_github$open_prs, na.rm = TRUE), " |"),
    "",
    "Projects are sorted by most recent commit.",
    "",
    "| Project | Contributors | Issues, PRs, and Last Commit | Commits | CRAN | Repository |",
    "|---------|--------------|------------------------------|---------|------|------------|"
  )

  # Create table rows
  for (i in seq_len(nrow(projects_with_github))) {
    row <- projects_with_github[i]

    # Activity marker, matching the summary above
    days <- as.numeric(today - row$last_commit_as_date)
    activity <- if (is.na(days)) "⚪" else if (days <= 90) "🟢" else if (days <= 365) "🟡" else "⚪"

    project_name <- ifelse(is.na(row$tool_name) || row$tool_name == "", "Unnamed Project", row$tool_name)
    github_link <- row$github_link
    
    # Handle missing or invalid data gracefully
    contributors_display <- if (isTRUE(row$contributors > 0)) {
      if (nchar(row$contributor_avatars_html) > 0) {
        row$contributor_avatars_html
      } else {
        paste0(row$contributors, " contributor", ifelse(row$contributors > 1, "s", ""))
      }
    } else {
      "No data"
    }
    
    # Use badges for issues and PRs with fallback
    issues_display <- if (!is.na(row$owner) && !is.na(row$repo)) {
      paste0("[![Issues](https://img.shields.io/github/issues/", row$owner, "/", row$repo, ")](", github_link, "/issues)")
    } else {
      paste0(row$open_issues, " issues")
    }
    
    prs_display <- if (!is.na(row$owner) && !is.na(row$repo)) {
      paste0("[![PRs](https://img.shields.io/github/issues-pr/", row$owner, "/", row$repo, ")](", github_link, "/pulls)")
    } else {
      paste0(row$open_prs, " PRs")
    }
    
    last_commit_display <- if (row$last_commit_date != "Unknown" && row$last_commit_sha != "Unknown") {
      paste0(row$last_commit_date, " ([`", row$last_commit_sha, "`](", github_link, "/commits))")
    } else {
      "No recent commits"
    }
    
    # Combine Issues, PRs, and Last Commit into single column with line breaks
    combined_issues_prs_commits <- paste(issues_display, prs_display, last_commit_display, sep = "<br> ")
    
    commits_display <- if (isTRUE(row$total_commits >= 0)) {
      as.character(row$total_commits)
    } else {
      "N/A"
    }
    
    repo_cell <- paste0("[", row$owner, "/", row$repo, "](", github_link, ")")

    cran_display <- create_cran_badges_html(row$cran_package)
    if (!nzchar(cran_display)) cran_display <- "&mdash;"

    table_row <- paste0(
      "| ", paste(
        paste0(activity, " [", project_name, "](", github_link, ")"),
        contributors_display,
        combined_issues_prs_commits,
        commits_display,
        cran_display,
        repo_cell,
        sep = " | "
      ), " |"
    )

    markdown_content <- c(markdown_content, table_row)
  }
  
  # Add footer
  markdown_content <- c(
    markdown_content,
    "",
    "---",
    "",
    "*This report is automatically generated daily by the [project status workflow](https://github.com/EpiForeSITE/software/actions).*"
  )
  
  # Write to file
  writeLines(markdown_content, "project_status.md")
  cat("Generated project_status.md successfully!\n")
}

# Run main function if script is executed directly
if (!interactive()) {
  main()
}