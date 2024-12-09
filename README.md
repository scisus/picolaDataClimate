# picolaDataClimate

<!-- badges: start -->

[![R-CMD-check](https://github.com/scisus/picolaDataClimate/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/scisus/picolaDataClimate/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

This package contains temperature data for lodgepole pine (*Pinus contorta* ssp. *latifolia*) seed orchard sites plus two northern comparison sites, all in British Columbia.

The site locations are those in the `picola_site_coord_elev` dataset in the [`scisus/picolaDataFlowering`](https://github.com/scisus/picolaDataFlowering) package.

Raw NetCDF data sets, like the data from the [Pacific Climate Impacts Consortium](https://www.pacificclimate.org/) are stored in `data-raw`.

Data extracted from the raw datasets in `data-raw` or programs like [ClimateBC](http://climatebc.ca/) are stored in `data`.

Available datasets include

- `picola_climatebc_locs_normal_1961-1990` site normals for annual climate variables
- `picola_climatebc_locs_normal_monthly` 30-year site normals for monthly climate variables 1921-2020
- `picola_climatebc_parent_locs_normal_1961_1990` normals for annual climate variables for genotypes grown in seed orchards
- `picola_corrframemo` correction factor applied to daily site PNWNAmet data from PCIC based on monthly ClimateBC data
- `picola_PNWNAmet_adjusted` raw and adjusted daily temperature data 1945-2012
- `picola_SPU_climsum` annual climate normals for lodgepole pine SPUs
- `picola_typical_ts` daily temperature data averaged from 1945-2012
- `picola_normal_daily` normal daily temperature time series for 30-year periods from 1921-2100

## Installation

You can install the development version of picolaDataClimate like so:

```
# install.packages("devtools")
devtools::install_github("scisus/picolaDataClimate")
```
