here::i_am("data-raw/picola_climatebc_locs_normal_monthly.R")

library(dplyr)
library(purrr)
library(stringr)

file_list <- list.files(path = here::here("data-raw/climateBC/historical normals/"), pattern = "*.csv", full.names = TRUE)

# Read each file, adding a 'normal_period' column with only the year range
picola_climatebc_locs_normal_monthly <- map_dfr(file_list, function(file) {
  # Extract the year range from the filename
  year_range <- str_extract(basename(file), "\\d{4}_\\d{4}") %>% str_replace("_", "-")
  data <- read.csv(file)
  data %>% mutate(normal_period = year_range)
})

usethis::use_data(picola_climatebc_locs_normal_monthly, overwrite = TRUE)