here::i_am("data-raw/picola_normal_daily.R")

picola_normal_daily <- read.csv(here::here("data-raw/picola_normal_daily.csv"))
usethis::use_data(picola_normal_daily, overwrite = TRUE)
