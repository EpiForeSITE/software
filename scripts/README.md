# Project Status Scripts

This directory contains scripts for automatically tracking the status of EpiForeSITE projects.

## Files

### `update_project_status.R`
Main script that:
1. Reads all YAML files from the `data/` directory
2. Filters projects that have GitHub repositories (`github_link` field)
3. Uses GitHub API to fetch project metrics:
   - Contributors and their avatars
   - Number of open issues (excluding pull requests, which GitHub counts as issues)
   - Number of open pull requests
   - Last commit date and hash
   - Total number of commits
4. Looks up whether the project is published on CRAN (see below)
5. Generates a markdown table in `project_status.md`, sorted by most recent
   commit and prefixed with an activity summary

**Dependencies:** `yaml`, `data.table`, `httr`, `jsonlite`

#### Counting collections

GitHub does not report the size of paginated collections. The script asks for one
item per page and reads the last page number from the `Link` header, which is
exact and costs a single request. The previous approach used the search API,
which is heavily rate limited and silently reports 0 commits for repositories it
has not indexed.

#### CRAN detection

A project gets CRAN version and download badges when it can be matched to a CRAN
package. The optional `cran_name` field in the project's YAML file is
authoritative: set it to the package name to force a match (useful when the names
differ, e.g. `epiworldR` for the `epiworld` repository), or to `no` to skip the
lookup. Without it, the repository name and the first word of `tool_name` are
checked against the CRAN index, and a match is only accepted when the package's
CRAN metadata (`URL` or `BugReports`) points back at the same GitHub owner or
repository. This keeps a project from being matched to an unrelated CRAN package
that happens to share its name.

### `test_workflow.R`
Simple test script to verify the workflow infrastructure works without making API calls.

## GitHub Actions Workflow

The `.github/workflows/project-status-update.yml` workflow:
- Runs daily at 6 AM UTC
- Can be triggered manually via GitHub Actions UI
- Also runs on pushes that modify the scripts or workflow
- Uses the GitHub token for API access (no rate limiting issues)
- Automatically commits the generated `project_status.md` file

## Usage

### Manual execution
```bash
cd /path/to/repository
Rscript scripts/update_project_status.R
```

### Environment variables
- `GITHUB_TOKEN` - GitHub API token for higher rate limits (optional but recommended)

## Output

Generates `project_status.md` with:
- A summary of how many projects are active, slow, dormant, and on CRAN
- Project name linked to GitHub repository, with an activity marker
  (🟢 commit in the last 90 days, 🟡 in the last year, ⚪ older or unknown)
- Contributor avatars and count
- Issue and PR badges
- Last commit information
- Total commit count
- Direct repository links, followed by CRAN version and download badges for
  projects published on CRAN

The dashboard tracks the EpiForeSITE projects in `data/` that have a GitHub
repository (currently 23).