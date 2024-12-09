here::i_am("data-raw/picola_PNWNAmet_adjusted.R")

picola_PNWNAmet_adjusted <- read.csv(here::here("data-raw/picola_PNWNAmet_adjusted.csv"))
usethis::use_data(picola_PNWNAmet_adjusted, overwrite = TRUE)
