# This file regenerates the climatebc_locs.csv input file for climateBC from the
# location data stored in the picolaDataFlowering package.

here::i_am("data-raw/locations/climatebc_locs.R")

library(dplyr)

grid_coord <- read.csv(here::here("data-raw/locations/grid_coordinates.csv"), header = TRUE, stringsAsFactors = FALSE) %>%
    rename(lat = Grid_lat, lon = Grid_lon)

gridelevs <- rgbif::elevation(latitude = grid_coord$lat, longitude=grid_coord$lon, elevation_model = "srtm3", username="susannah2")
colnames(gridelevs) <- c("lat", "lon", "el")
grid_coord_elev <- dplyr::full_join(gridelevs, grid_coord) %>%
    select(-contains("Site_"))

climatebc_locs <- picolaDataFlowering::picola_site_coord_elev %>%
    select(Site, lat, lon, el) %>%
    mutate(id = "site") %>%
    full_join(mutate(grid_coord_elev, id = "grid")) %>%
    select(Site, id, lat, lon, el)

write.csv(climatebc_locs, here::here("data-raw/locations/climatebc_locs.csv"), row.names = FALSE, eol = "\r\n")
