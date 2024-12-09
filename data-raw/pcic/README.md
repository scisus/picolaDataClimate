# PCIC data

Minimum and maximum daily temperature data downloaded in December 2024 from
[Pacific Climate Impacts Consortium](https://www.pacificclimate.org/data/daily-gridded-meteorological-datasets)

PNWNAmet (1945-2012) Werner, A.T., Schnorbus, M.A., Shrestha, R.R., Cannon,
A.J., Zwiers, F.W., Dayon G. and Anslow, F., 2019. A long-term, temporally
consistent, gridded daily meteorological dataset for northwestern North America,
Scientific Data, 6, 180299, doi:10.1038/sdata.2018.299.

Datasets include maximum and miniumum temperatures for areas in BC. Areas
include all sites listed in `picolaDataFlowering::picola_site_coord_elev`, all
seed orchards plus two comparison sites "Border" and "%rench". "Border" is a
more northern site near the BC-Yukon border, and "Trench" is a site in the
northern Rocky Mountain Trench near Williston Lake.

- `PNWNAmet_tasmax_<site>.nc` and `PNWNAmet_tasmin_<site>.nc` include data for
  Daily mean temperature from 1945 to 2012 at PCIC grid square containing each
  site location. (Downloaded 2024).

- `PNWNAmet_daily_temps.csv` contains all the time series, combined into a
  single CSV file

- `download_pcic_data.R` downloads the `.nc` files from PCIC

- `netcdf_extract.R` extracts `PNWNAmet_daily_temps.csv` from the `.nc` files
