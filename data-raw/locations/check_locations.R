# This script cross-checks that all the lat, lon and elevation values in as many files as possible
# are consistent with the picolaDataFlowering package.

here::i_am("data-raw/locations/check_locations.R")

library(dplyr)

check_site_frame <- function(frame, lat_col, lon_col, elev_col) {
    picola <- picolaDataFlowering::picola_site_coord_elev
    return(all.equal(frame[[lat_col]], picola$lat) && all.equal(frame[[lon_col]], picola$lon) && all.equal(frame[[elev_col]], picola$el))
}

check_parent_frame <- function(frame, lat_col, lon_col, elev_col) {
    picola <- picolaDataFlowering::picola_parent_locs %>% dplyr::filter(SPU != "" & !is.na(lat) & !is.na(lon))
    stopifnot(nrow(frame) == nrow(picola))
    return(all.equal(frame[[lat_col]], picola$lat) && all.equal(frame[[lon_col]], picola$lon) && all.equal(frame[[elev_col]], picola$el))
}

check_grid_frame <- function(frame, lat_col, lon_col, elev_col) {
    picola <- read.csv(here::here("data-raw/locations/grid_coordinates.csv"))
    return(all.equal(frame[[lat_col]], picola$Grid_lat) && all.equal(frame[[lon_col]], picola$Grid_lon))
}

check_site_and_grid_frame <- function(frame, lat_col, lon_col, elev_col) {
    frame_site <- frame %>% filter(id == "site")
    frame_grid <- frame %>% filter(id == "grid")
    return(check_site_frame(frame_site, lat_col, lon_col, elev_col) && check_grid_frame(frame_grid, lat_col, lon_col, elev_col))
}

check_climatebc_output_file <- function(file) {
    frame <- read.csv(file)
    frame <- frame %>% dplyr::select(Latitude,Longitude,Elevation,Site,id) %>% dplyr::distinct()
    return(check_site_and_grid_frame(frame, "Latitude", "Longitude", "Elevation"))
}

climatebc_locs <- read.csv(here::here("data-raw/locations/climatebc_locs.csv"))
climatebc_parent_locs <- read.csv(here::here("data-raw/locations/climatebc_parent_locs.csv")) %>% dplyr::filter(id2 != "" & !is.na(lat) & !is.na(lon))

stopifnot(check_site_and_grid_frame(climatebc_locs, "lat", "lon", "el"))
stopifnot(check_parent_frame(climatebc_parent_locs, "lat", "lon", "el"))

climatebc_loc_files <- list.files(here::here("data-raw/climateBC"), recursive = TRUE, pattern = "climatebc_locs.*csv", full.names = TRUE)
for (file in climatebc_loc_files) {
    message("Checking ", file)
    stopifnot(check_climatebc_output_file(file))
}

climatebc_parent_locs_files <- list.files(here::here("data-raw/climateBC"), recursive = TRUE, pattern = "climatebc_parent_locs.*csv", full.names = TRUE)
for (file in climatebc_parent_locs_files) {
    message("Checking ", file)
    frame <- read.csv(file)
    frame <- frame %>% dplyr::select(Latitude,Longitude,Elevation,id1,id2) %>% dplyr::filter(id2 != "" & Latitude != 0 & Longitude != 0)
    stopifnot(check_parent_frame(frame, "Latitude", "Longitude", "Elevation"))
}
