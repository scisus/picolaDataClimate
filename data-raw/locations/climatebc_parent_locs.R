# This file regenerates the climatebc_parent_locs.csv input file for climateBC from the
# location data stored in the picolaDataFlowering package.

here::i_am("data-raw/locations/climatebc_parent_locs.R")

library(dplyr)

# parent locations and elevations formatted for climatebc
climatebc_parent_locs <- picolaDataFlowering::picola_parent_locs %>%
    rename(id1 = Clone, id2 = SPU)
write.csv(climatebc_parent_locs, here::here("data-raw/locations/climatebc_parent_locs.csv"), row.names = FALSE, eol = "\r\n")
