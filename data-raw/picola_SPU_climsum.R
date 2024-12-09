## code to prepare `picola_SPU_climsum` dataset goes here
here::i_am("data-raw/picola_SPU_climsum.R")

picola_SPU_climsum <- read.csv("data-raw/picola_SPU_climsum.csv", stringsAsFactors = FALSE, header = TRUE)

usethis::use_data(picola_SPU_climsum, overwrite = TRUE)

