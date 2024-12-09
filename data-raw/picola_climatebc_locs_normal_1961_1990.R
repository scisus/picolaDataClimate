here::i_am("data-raw/picola_climatebc_locs_normal_1961_1990.R")

picola_climatebc_locs_normal_1961_1990 <- read.csv("data-raw/climateBC/climatebc_locs_Normal_1961_1990Y.csv")
usethis::use_data(picola_climatebc_locs_normal_1961_1990, overwrite = TRUE)
