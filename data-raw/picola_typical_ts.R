here::i_am("data-raw/picola_typical_ts.R")

picola_typical_ts <- read.csv(here::here("data-raw/picola_typical_ts.csv"))
usethis::use_data(picola_typical_ts, overwrite = TRUE)
