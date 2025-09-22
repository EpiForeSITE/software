# ForeSITE Group Handbook

This directory contains the source files for the ForeSITE Group Handbook, which is built using [MkDocs](https://www.mkdocs.org/) and the [Material theme](https://squidfunk.github.io/mkdocs-material/).

## Structure

- `index.md` - Homepage of the handbook
- `r-packages.md` - Best practices for writing R packages
- `python-libraries.md` - Best practices for writing Python libraries  
- `shiny-apps.md` - Guidelines for building Shiny applications
- `code-for-papers.md` - Standards for reproducible research code
- `agile-planning.md` - Agile methodology practices for the group

## Building the Handbook

The handbook is automatically built and deployed using GitHub Actions. To build locally:

1. Install dependencies: `uv sync`
2. Build the site: `uv run mkdocs build`
3. Serve locally: `uv run mkdocs serve`

## Configuration

The handbook configuration is defined in `mkdocs.yml` in the repository root.