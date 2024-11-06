library(yaml)
library(readxl)

dat <- read_xlsx(
  "data/box/ForeSITE_Tools surveyV2_ Tool D&I only.xlsx",
  skip = 2
  )

# Removing the first row
dat <- dat[-1, ]

# Making column names machine friendly
colnames(dat) <- colnames(dat) |>
  gsub(pattern = "([^[:alnum:]]+)$", replacement = "") |>
  tolower() |>
  trimws() |>
  gsub(pattern = "([^[:alnum:]]+)", replacement = "_")

filenames <- dat$tool_name |>
  gsub(pattern = "([^[:alnum:]]+)$", replacement = "") |>
  tolower() |>
  trimws() |>
  gsub(pattern = "([^[:alnum:]]+)", replacement = "_") |>
  paste0(".yml")

stopifnot(all(table(filenames) == 1))
  
# Looping through the rows
for (i in seq_len(nrow(dat))) {
  # Creating a list
  dat[i,] |>
    write_yaml(file = file.path("data", filenames[i]))
}


