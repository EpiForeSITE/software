# Project Status Scripts

This directory contains scripts for automatically tracking the status of EpiForeSITE projects.

## Files

### `update_project_status.R`
Main script that:
1. Reads all YAML files from the `data/` directory
2. Filters projects that have GitHub repositories (`github_link` field)
3. Uses GitHub API to fetch project metrics:
   - Contributors and their avatars
   - Number of open issues
   - Number of open pull requests
   - Last commit date and hash
   - Total number of commits
4. Generates a markdown table in `project_status.md`

**Dependencies:** `yaml`, `data.table`, `httr`, `jsonlite`

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
- Project name linked to GitHub repository
- Contributor avatars and count
- Issue and PR badges
- Last commit information
- Total commit count
- Direct repository links

The dashboard tracks approximately 19 EpiForeSITE projects with active GitHub repositories.