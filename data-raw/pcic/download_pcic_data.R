here::i_am("data-raw/pcic/download_pcic_data.R")

# PCIC downloads take a while since they are dynamically filtering giant
# netCDF files server side and streaming the subset requested. So we set
# a long timeout.
options(timeout = 9999)

library(ncdf4)
library(here)

urlbase <- "https://data.pacificclimate.org/data/gridded_observations/"
all_locs_at_time_zero_nc <- here("data-raw/pcic/PNWNAmet_tasmax_all_t0.nc")

time_series <- list("tasmin", "tasmax")
time_zero <- "[0:0]"
all_time <- "[0:24836]"
all_loc <- "[][]"

find_gridloc <- function(nc, lat, lon) {
  lat_loc <- which.min(abs(lat - nc$dim$lat$vals))
  lon_loc <- which.min(abs(lon - nc$dim$lon$vals))
  message("lat_loc: ", lat_loc, " lon_loc: ", lon_loc)
  message("Site: ", lat, " ", lon, " Grid: ", nc$dim$lat$vals[lat_loc], " ", nc$dim$lon$vals[lon_loc])
  # We are going to make a request of a 0-based web API, so we need to
  # subtract 1 from the indices.
  lat_loc <- lat_loc - 1
  lon_loc <- lon_loc - 1
  paste0("[", lat_loc, ":", lat_loc, "][", lon_loc, ":", lon_loc, "]")
}

# First do a request to get all PCIC gridlocs at time 0: we use this
# to look up the gridloc for each site.
if (!file.exists(all_locs_at_time_zero_nc)) {
  url <- paste0(urlbase, "PNWNAmet_tasmax.nc.nc?tasmax", time_zero, all_loc)
  download.file(url, all_locs_at_time_zero_nc, mode = "wb")
}

# Map all the site coordinates to the PCIC gridlocs at time 0.
nc <- nc_open(all_locs_at_time_zero_nc)
sites <- picolaDataFlowering::picola_site_coord_elev
sites$gridloc <- mapply(find_gridloc, list(nc), sites$lat, sites$lon)
nc_close(nc)

# Now download a full time series restricted to each site's gridloc.
for (i in seq_len(nrow(sites))) {

  site <- sites$Site[i]
  lat <- sites$lat[i]
  lon <- sites$lon[i]
  gridloc <- sites$gridloc[i]

  for (ts in time_series) {
    message("--------------------")
    output_file <- here(paste0("data-raw/pcic/PNWNAmet_", ts, "_", site, ".nc"))
    if (!file.exists(output_file)) {
      url <- paste0(urlbase, "PNWNAmet_", ts, ".nc.nc?", ts, all_time, gridloc)
      tryCatch({
        message("Downloading: ", url, " for site ", site)
        download.file(url, output_file, mode = "wb")
        message("Downloaded: ", output_file)
      }, error = function(e) {
        message("Failed to download: ", url, " - ", e$message)
      })
    } else {
      message("File already exists: ", output_file)
    }

    # Check the file has a reasonably-close gridpoint to the target location
    nc <- nc_open(output_file)
    message("Checking: ", output_file)
    message("Site: ", site, " Lat: ", lat, " Lon: ", lon)
    message("Grid: ", nc$dim$lat$vals[1], " ", nc$dim$lon$vals[1])
    distance_to_site <- geosphere::distHaversine(c(lon, lat), c(nc$dim$lon$vals[1], nc$dim$lat$vals[1]))
    message("Distance: ", distance_to_site)
    # It's a 6km grid, so we should be within 6km
    stopifnot(distance_to_site < 6000)
  }
}
