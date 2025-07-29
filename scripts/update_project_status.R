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

# Helper function to safely make GitHub API calls
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
      return(fromJSON(content(response, as = "text")))
    } else {
      warning(paste("API call failed for", url, "- Status:", status_code(response)))
      return(NULL)
    }
  }, error = function(e) {
    warning(paste("Error in API call for", url, ":", e$message))
    return(NULL)
  })
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
      contributors = 0,
      open_issues = 0,
      open_prs = 0,
      last_commit_date = "Unknown",
      last_commit_sha = "Unknown",
      contributor_avatars = character(0),
      total_commits = -1
    ))
  }
  
  base_url <- paste0("https://api.github.com/repos/", owner, "/", repo)
  
  # Get repository info (includes open issues count)
  repo_info <- github_api_call(paste0(base_url), token)
  open_issues <- if (!is.null(repo_info)) repo_info$open_issues_count else 0
  
  # Get contributors
  contributors_data <- github_api_call(paste0(base_url, "/contributors"), token)
  contributors_count <- if (!is.null(contributors_data)) length(contributors_data) else 0
  contributor_avatars <- character(0)
  if (!is.null(contributors_data) && length(contributors_data) > 0) {
    # Get up to first 10 contributors' avatars
    contributor_avatars <- head(contributors_data, 10)$avatar_url
  }
  
  # Get open pull requests
  pulls_data <- github_api_call(paste0(base_url, "/pulls?state=open"), token)
  open_prs <- if (!is.null(pulls_data)) length(pulls_data) else 0
  
  # Get last commit
  commits_data <<- github_api_call(paste0(base_url, "/commits?per_page=1"), token)
  last_commit_date <- "Unknown"
  last_commit_sha <- "Unknown"
  if (!is.null(commits_data) && length(commits_data) > 0) {
    last_commit_date <- commits_data[1,,drop=FALSE]$commit$committer$date
    last_commit_sha <- substr(commits_data[1,,drop=FALSE]$sha, 1, 7)
    # Convert to readable date
    last_commit_date <- as.Date(substr(last_commit_date, 1, 10))
  }
  
  # Get total commits count (use repository stats instead of search API for better reliability)
  total_commits <- -1  # -1 indicates API failure
  # Try getting repo stats first (faster and more reliable)
  stats_data <- github_api_call(paste0(base_url, "/stats/participation"), token)
  if (!is.null(stats_data) && !is.null(stats_data$all)) {
    total_commits <- sum(stats_data$all, na.rm = TRUE)
  } else {
    # Fallback to search API if stats not available
    search_url <- paste0("https://api.github.com/search/commits?q=repo:", owner, "/", repo)
    search_data <- github_api_call(search_url, token)
    if (!is.null(search_data)) {
      total_commits <- search_data$total_count
    }
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
  
  # Initialize metrics columns
  projects_with_github[, `:=`(
    contributors = as.integer(0),
    open_issues = as.integer(0), 
    open_prs = as.integer(0),
    last_commit_date = as.character("Unknown"),
    last_commit_sha = as.character("Unknown"),
    contributor_avatars_html = as.character(""),
    total_commits = as.integer(-1)
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
      
      projects_with_github[i, `:=`(
        contributors = metrics$contributors,
        open_issues = metrics$open_issues,
        open_prs = metrics$open_prs,
        last_commit_date = as.character(metrics$last_commit_date),
        last_commit_sha = metrics$last_commit_sha,
        contributor_avatars_html = create_avatars_html(metrics$contributor_avatars),
        total_commits = metrics$total_commits
      )]
      
      # Log some info about what we found
      cat(paste("  ->", metrics$contributors, "contributors,", metrics$open_issues, "issues,", metrics$open_prs, "PRs\n"))
    } else {
      cat("  -> Invalid repository info, skipping API calls\n")
    }
    
    # Add small delay to be nice to GitHub API
    if (i < total_projects) {
      Sys.sleep(0.5)
    }
  }
  
  # Generate markdown table
  markdown_content <- c(
    "# Project Status Dashboard",
    "",
    paste("Last updated:", Sys.time(), "(UTC)"),
    "",
    paste("This dashboard tracks", nrow(projects_with_github), "EpiForeSITE projects with GitHub repositories."),
    "",
    "| Project | Contributors | Issues, PRs, and Last Commit | Commits | Repository |",
    "|---------|-------------|--------------------------|---------|------------|"
  )
  
  # Create table rows
  for (i in seq_len(nrow(projects_with_github))) {
    row <- projects_with_github[i]
    
    project_name <- ifelse(is.na(row$tool_name) || row$tool_name == "", "Unnamed Project", row$tool_name)
    github_link <- row$github_link
    
    # Handle missing or invalid data gracefully
    contributors_display <- if (row$contributors > 0) {
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
    
    commits_display <- if (row$total_commits >= 0) {
      as.character(row$total_commits)
    } else {
      "N/A"
    }
    
    repo_cell <- paste0("[", row$owner, "/", row$repo, "](", github_link, ")")
    
    table_row <- paste(
      paste0("| [", project_name, "](", github_link, ")"),
      contributors_display,
      combined_issues_prs_commits,
      commits_display,
      repo_cell,
      "|",
      sep = " | "
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