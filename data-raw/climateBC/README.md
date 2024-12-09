# ClimateBC data

All data in this directory from [ClimateBC](https://climatebc.ca/) version 7.30

- `climatebc_locs_8_ensembleGCMs2011-2100MP.csv` GCM ensemble predictions for
monthly climate variables. 8 models included in ensemble justified by Mahony et
al. 2022

- `historical normals/climatebc_locs_Normal_[YEAR]-[YEAR]MP.csv` 30 year climate
normal monthly variables

- `climatebc_parent_locs_Normal_1961_1990Y_v730.csv`
Annual climate variables for normal period 1961-1990 for parent trees

- `monthly1901-2021v730.csv`
Monthly climate variables for site data pulled from ClimateBC v 7.30

All site and parent location data is taken from
`picolaDataClimate::picola_site_coord_elev` and
`picolaDataClimate::picola_parent_locs` respectively, and formatted for input to
ClimateBC in `data-raw/locations/climatebc_locs.csv` and
`data-raw/locations/climatebc_parent_locs.csv`.