here::i_am("data-raw/build_all.R")

# Reads locations from picolaDataFlowering::picola_site_coord_elev
# and downloads PCIC netCDF files for each location
callr::rscript(here::here("data-raw/pcic/download_pcic_data.R"))

# Reads PCIC netCDF files, writes content to
# data-raw/pcic/PNWNWmet_daily_temps.csv
# and data-raw/locations/grid_coordinates.csv
callr::rscript(here::here("data-raw/pcic/netcdf_extract.R"))

# Reads data-raw/pcic/PNWNWmet_daily_temps.csv
# and data-raw/climateBC/monthly1901-2021v730.csv
# and adjusts PCIC data to match ClimateBC data.
# Writes data/picola_corrframemo.rda as well as
# data-raw/picola_PNWNAmet_adjusted.csv
callr::rscript(here::here("data-raw/adjustPCIC.R"))

# Reads data-raw/climateBC/historical normals/*.csv
# and data-raw/climateBC/climatebc_locs_8_ensembleGCMs2011-2100MP.csv
# and data-raw/picola_PNWNAmet_adjusted.csv
# Writes data-raw/picola_typical_ts.csv
# and data-raw/picola_normal_daily.csv
callr::rscript(here::here("data-raw/timeseries_for_prediction.R"))

# Check our work
callr::rscript(here::here("data-raw/locations/check_locations.R"))

# Export primary data objects to data/
callr::rscript(here::here("data-raw/picola_typical_ts.R"))
callr::rscript(here::here("data-raw/picola_normal_daily.R"))
callr::rscript(here::here("data-raw/picola_PNWNAmet_adjusted.R"))
callr::rscript(here::here("data-raw/picola_climatebc_parent_locs_normal_1961_1990.R"))
callr::rscript(here::here("data-raw/picola_climatebc_locs_normal_1961_1990.R"))
callr::rscript(here::here("data-raw/picola_SPU_climsum.R"))
callr::rscript(here::here("data-raw/picola_climatebc_locs_normal_monthly.R"))
