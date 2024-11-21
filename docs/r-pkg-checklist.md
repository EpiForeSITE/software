# R Packages Checklist

Our goal is for all R packages under EpiForeSITE to have the following features:

- [ ] Lives on GitHub
- [ ] Documented with [`roxygen2`](https://roxygen2.r-lib.org) ([Rd2roxygen](https://cran.r-project.org/package=Rd2roxygen) converts `.Rd` files to `roxygen2`), including function descriptions, parameters and return values, details, examples, references, and links to other relevant functions
- [ ] Includes at least 1 [`rmarkdown`](https://cran.r-project.org/web/packages/rmarkdown/index.html) vignette with an extended example of package usage
- [ ] Has a website (e.g., using [pkgdown](https://pkgdown.r-lib.org))
- [ ] Uses continuous integration (CI) (e.g., [GitHub Actions](./dev-tools/github-actions.md)) to:
    - [ ] Run `R CMD check` on multiple system configurations
    - [ ] Create the package website

## Advanced Package Checklist

Once the above checklist is completed, there are some additional package features that would be nice to have, but are not required:

- [ ] Published on CRAN (see [CRAN's submission checklist](https://cran.r-project.org/web/packages/submission_checklist.html))
- [ ] Uses [`pre-commit`](https://pre-commit.com) both as part of CI and for local development
- [ ] Automated unit tests (e.g., [`tinytest`](https://cran.r-project.org/web/packages/tinytest/index.html) or [`testthat`](https://cran.r-project.org/web/packages/testthat/index.html)) as part of CI
- [ ] A [`NEWS.md`](https://style.tidyverse.org/news.html#before-release) file