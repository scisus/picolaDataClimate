#' @title Site annual climate normal variables 1961-1990
#' @description Annual climate variables for normal period 1961-1990 for British Columbia Pinus contorta ssp. latifolia seed orchard and northern comparison sites in British Columbia, as well as enclosing PNWNAmet grid cells
#' @format A data frame with 18 rows and 30 variables:
#' \describe{
#'   \item{\code{Site}}{character Short symbolic name of site}
#'   \item{\code{id}}{character The string "site" if this row identifies the exact location of a site, or "grid" if this row identifies the location of a PNWNAmet grid cell enclosing a site}
#'   \item{\code{Latitude}}{double Latitude of site or grid cell}
#'   \item{\code{Longitude}}{double Longitude of site or grid cell}
#'   \item{\code{Elevation}}{integer Elevation of site or grid cell}
#'   \item{\code{MAT}}{double Mean annual temperature (°C)}
#'   \item{\code{MWMT}}{double Mean warmest month temperature (°C)}
#'   \item{\code{MCMT}}{double Mean coldest month temperature (°C)}
#'   \item{\code{TD}}{double Temperature difference between MWMT and MCMT, or continentality (°C)}
#'   \item{\code{MAP}}{integer Mean annual precipitation (mm)}
#'   \item{\code{MSP}}{integer Mean annual summer (May to Sept.) precipitation (mm)}
#'   \item{\code{AHM}}{double Annual heat-moisture index (MAT+10)/(MAP/1000)}
#'   \item{\code{SHM}}{double Summer heat-moisture index ((MWMT)/(MSP/1000)}
#'   \item{\code{DD_0}}{integer Degree-days below 0°C, chilling degree-days}
#'   \item{\code{DD5}}{integer Degree-days above 5°C, growing degree-days}
#'   \item{\code{DD_18}}{integer Degree-days below 18°C, heating degree-days}
#'   \item{\code{DD18}}{integer Degree-days above 18°C, cooling degree-days}
#'   \item{\code{NFFD}}{integer The number of frost-free days}
#'   \item{\code{bFFP}}{integer The day of the year on which frost-free period (FFP) begins}
#'   \item{\code{eFFP}}{integer The day of the year on which frost-free period (FFP) ends}
#'   \item{\code{FFP}}{integer Frost-free period}
#'   \item{\code{PAS}}{integer Precipitation as snow (mm). For individual years, it covers the period between August in the previous year and July in the current year}
#'   \item{\code{EMT}}{double Extreme minimum temperature over 30 years (°C)}
#'   \item{\code{EXT}}{double Extreme maximum temperature over 30 years (°C)}
#'   \item{\code{MAR}}{double Mean annual solar radiation (MJ m‐2 d‐1)}
#'   \item{\code{Eref}}{integer Hargreaves reference evaporation (mm)}
#'   \item{\code{CMD}}{integer Hargreaves climatic moisture deficit (mm)}
#'   \item{\code{RH}}{integer Mean annual relative humidity (%)}
#'   \item{\code{CMI}}{double Hogg’s climate moisture index (mm)}
#'   \item{\code{DD1040}}{integer Degree-days above 10°C and below 40°C}
#'}
#' @details
#' This dataset provides annual climate normal variables for the period 1961-1990 for seed orchard sites located in British Columbia, as well as for the enclosing PNWNAmet grid cells. These climate variables are relevant for understanding the climatic conditions in the seed orchards.
#'
#' The dataset includes both the exact locations of seed orchard sites and the centers of the PNWNAmet grid cells that enclose these sites. Each row in the dataset corresponds to either a seed orchard site or a grid cell center.
#'
#' The climate data were derived from ClimateBC v7.30, which provides spatially downscaled and customizable climate data for historical and future periods.
#' @source ClimateBC v7.30 https://climatebc.ca/
#' @references Wang T, Hamann A, Spittlehouse D, Carroll C (2016) Locally Downscaled and Spatially Customizable Climate Data for Historical and Future Periods for North America. PLoS ONE 11(6): e0156720. doi:10.1371/journal.pone.0156720
"picola_climatebc_locs_normal_1961_1990"

#' @title Site monthly climate normal variables 1921-2020
#' @description Monthly climate variables for 30-year periods from 1921-1950 for *Pinus contorta* ssp. *latifolia* seed orchard and northern comparison sites in British Columbia, as well as enclosing PNWNAmet grid cells
#' @format A data frame with 108 rows and 66 variables:
#' \describe{
#'   \item{\code{Site}}{character Short symbolic name of site}
#'   \item{\code{id}}{character The string "site" if this row identifies the exact location of a site, or "grid" if this row identifies the location of a PNWNAmet grid cell enclosing a site}
#'   \item{\code{Latitude}}{double Latitude of site or grid cell}
#'   \item{\code{Longitude}}{double Longitude of site or grid cell}
#'   \item{\code{Elevation}}{integer Elevation of site or grid cell}
#'   \item{\code{Tmax01}}{double January maximum mean temperature (°C)}
#'   \item{\code{Tmax02}}{double February maximum mean temperature (°C)}
#'   \item{\code{Tmax03}}{double March maximum mean temperature (°C)}
#'   \item{\code{Tmax04}}{double April maximum mean temperature (°C)}
#'   \item{\code{Tmax05}}{double May maximum mean temperature (°C)}
#'   \item{\code{Tmax06}}{double June maximum mean temperature (°C)}
#'   \item{\code{Tmax07}}{double July maximum mean temperature (°C)}
#'   \item{\code{Tmax08}}{double August maximum mean temperature (°C)}
#'   \item{\code{Tmax09}}{double September maximum mean temperature (°C)}
#'   \item{\code{Tmax10}}{double October maximum mean temperature (°C)}
#'   \item{\code{Tmax11}}{double November maximum mean temperature (°C)}
#'   \item{\code{Tmax12}}{double December maximum mean temperature (°C)}
#'   \item{\code{Tmin01}}{double January minimum mean temperature (°C)}
#'   \item{\code{Tmin02}}{double February minimum mean temperature (°C)}
#'   \item{\code{Tmin03}}{double March minimum mean temperature (°C)}
#'   \item{\code{Tmin04}}{double April minimum mean temperature (°C)}
#'   \item{\code{Tmin05}}{double May minimum mean temperature (°C)}
#'   \item{\code{Tmin06}}{double June minimum mean temperature (°C)}
#'   \item{\code{Tmin07}}{double July minimum mean temperature (°C)}
#'   \item{\code{Tmin08}}{double August minimum mean temperature (°C)}
#'   \item{\code{Tmin09}}{double September minimum mean temperature (°C)}
#'   \item{\code{Tmin10}}{double October minimum mean temperature (°C)}
#'   \item{\code{Tmin11}}{double November minimum mean temperature (°C)}
#'   \item{\code{Tmin12}}{double December minimum mean temperature (°C)}
#'   \item{\code{Tave01}}{double January mean temperature (°C)}
#'   \item{\code{Tave02}}{double February mean temperature (°C)}
#'   \item{\code{Tave03}}{double March mean temperature (°C)}
#'   \item{\code{Tave04}}{double April mean temperature (°C)}
#'   \item{\code{Tave05}}{double May mean temperature (°C)}
#'   \item{\code{Tave06}}{double June mean temperature (°C)}
#'   \item{\code{Tave07}}{double July mean temperature (°C)}
#'   \item{\code{Tave08}}{double August mean temperature (°C)}
#'   \item{\code{Tave09}}{double September mean temperature (°C)}
#'   \item{\code{Tave10}}{double October mean temperature (°C)}
#'   \item{\code{Tave11}}{double November mean temperature (°C)}
#'   \item{\code{Tave12}}{double December mean temperature (°C)}
#'   \item{\code{PPT01}}{integer January precipitation (mm)}
#'   \item{\code{PPT02}}{integer February precipitation (mm)}
#'   \item{\code{PPT03}}{integer March precipitation (mm)}
#'   \item{\code{PPT04}}{integer April precipitation (mm)}
#'   \item{\code{PPT05}}{integer May precipitation (mm)}
#'   \item{\code{PPT06}}{integer June precipitation (mm)}
#'   \item{\code{PPT07}}{integer July precipitation (mm)}
#'   \item{\code{PPT08}}{integer August precipitation (mm)}
#'   \item{\code{PPT09}}{integer September precipitation (mm)}
#'   \item{\code{PPT10}}{integer October precipitation (mm)}
#'   \item{\code{PPT11}}{integer November precipitation (mm)}
#'   \item{\code{PPT12}}{integer December precipitation (mm)}
#'   \item{\code{Rad01}}{double January solar radiation (MJ m-2 d-1)}
#'   \item{\code{Rad02}}{double February solar radiation (MJ m-2 d-1)}
#'   \item{\code{Rad03}}{double March solar radiation (MJ m-2 d-1)}
#'   \item{\code{Rad04}}{double April solar radiation (MJ m-2 d-1)}
#'   \item{\code{Rad05}}{double May solar radiation (MJ m-2 d-1)}
#'   \item{\code{Rad06}}{double June solar radiation (MJ m-2 d-1)}
#'   \item{\code{Rad07}}{double July solar radiation (MJ m-2 d-1)}
#'   \item{\code{Rad08}}{double August solar radiation (MJ m-2 d-1)}
#'   \item{\code{Rad09}}{double September solar radiation (MJ m-2 d-1)}
#'   \item{\code{Rad10}}{double October solar radiation (MJ m-2 d-1)}
#'   \item{\code{Rad11}}{double November solar radiation (MJ m-2 d-1)}
#'   \item{\code{Rad12}}{double December solar radiation (MJ m-2 d-1)}
#'   \item{\code{normal_period}}{character 30-year normal period}
#'}
#' @details
#' This dataset provides monthly climate normal variables for the period 1921-2020 for *Pinus contorta* ssp. *latifolia* seed orchard and comparison sites in British Columbia, as well as for the enclosing PNWNAmet grid cells. The climate data include variables such as temperature, precipitation, and solar radiation, all aggregated into 30-year periods every 10 years starting in 1921.
#'
#' The dataset includes both the exact locations of sites and the centers of the PNWNAmet grid cells that enclose these sites. Each row in the dataset corresponds to either a site or a grid cell center near that site.
#'
#' The data were derived from ClimateBC v7.30, which provides downscaled and customizable climate data for both historical and future periods.
#'
#' @source ClimateBC v7.30 https://climatebc.ca/
#' @references
#' Wang T, Hamann A, Spittlehouse D, Carroll C (2016) Locally Downscaled and Spatially Customizable Climate Data for Historical and Future Periods for North America. PLoS ONE 11(6): e0156720. doi:10.1371/journal.pone.0156720
"picola_climatebc_locs_normal_monthly"

#' @title Parent tree annual climate normal variables 1961-1990
#' @description Annual climate variables for normal period 1961-1990 for provenances of *Pinus contorta* ssp. *latifolia* genotypes grown in British Columbia seed orchards
#' @format A data frame with 2739 rows and 30 variables:
#' \describe{
#'   \item{\code{id1}}{integer Genotype identifier / clone label for the parent tree}
#'   \item{\code{id2}}{character Seed Planting Unit (SPU) identifier}
#'   \item{\code{Latitude}}{double Latitude of tree}
#'   \item{\code{Longitude}}{double Longitude of tree}
#'   \item{\code{Elevation}}{integer Elevation of tree}
#'   \item{\code{MAT}}{double Mean annual temperature (°C)}
#'   \item{\code{MWMT}}{double Mean warmest month temperature (°C)}
#'   \item{\code{MCMT}}{double Mean coldest month temperature (°C)}
#'   \item{\code{TD}}{double Temperature difference between MWMT and MCMT, or continentality (°C)}
#'   \item{\code{MAP}}{integer Mean annual precipitation (mm)}
#'   \item{\code{MSP}}{integer Mean annual summer (May to Sept.) precipitation (mm)}
#'   \item{\code{AHM}}{double Annual heat-moisture index (MAT+10)/(MAP/1000)}
#'   \item{\code{SHM}}{double Summer heat-moisture index ((MWMT)/(MSP/1000)}
#'   \item{\code{DD_0}}{integer Degree-days below 0°C, chilling degree-days}
#'   \item{\code{DD5}}{integer Degree-days above 5°C, growing degree-days}
#'   \item{\code{DD_18}}{integer Degree-days below 18°C, heating degree-days}
#'   \item{\code{DD18}}{integer Degree-days above 18°C, cooling degree-days}
#'   \item{\code{NFFD}}{integer The number of frost-free days}
#'   \item{\code{bFFP}}{integer The day of the year on which frost-free period (FFP) begins}
#'   \item{\code{eFFP}}{integer The day of the year on which frost-free period (FFP) ends}
#'   \item{\code{FFP}}{integer Frost-free period}
#'   \item{\code{PAS}}{integer Precipitation as snow (mm). For individual years, it covers the period between August in the previous year and July in the current year}
#'   \item{\code{EMT}}{double Extreme minimum temperature over 30 years (°C)}
#'   \item{\code{EXT}}{double Extreme maximum temperature over 30 years (°C)}
#'   \item{\code{MAR}}{double Mean annual solar radiation (MJ m‐2 d‐1)}
#'   \item{\code{Eref}}{integer Hargreaves reference evaporation (mm)}
#'   \item{\code{CMD}}{integer Hargreaves climatic moisture deficit (mm)}
#'   \item{\code{RH}}{integer Mean annual relative humidity (%)}
#'   \item{\code{CMI}}{double Hogg’s climate moisture index (mm)}
#'   \item{\code{DD1040}}{integer Degree-days above 10°C and below 40°C}
#'}
#' @details
#' This dataset provides annual climate normal variables for the period 1961-1990 for provenances
#' of *Pinus contorta* ssp. *latifolia* genotypes growing in British Columbia seed orchards. Data was extracted from ClimateBC v7.30, which provides spatially downscaled and locally
#' customizable climate data for historical and future periods across North America.
#'
#' The dataset contains one row per genotype, with climate data aggregated at
#' the annual level for the years 1961-1990.
#' @source ClimateBC v7.30 https://climatebc.ca/
#' @references
#' Wang T, Hamann A, Spittlehouse D, Carroll C (2016) Locally Downscaled and Spatially Customizable Climate Data for Historical and Future Periods for North America. PLoS ONE 11(6): e0156720. doi:10.1371/journal.pone.0156720
"picola_climatebc_parent_locs_normal_1961_1990"

#' @title Site correction factors
#' @description Correction factors for adjusting PNWNAmet daily temperature data by monthly temperatures from ClimateBC v7.30 for the period 1945-2012 for seed orchard and comparison sites in British Columbia
#' @format A data frame with 9 rows and 3 variables:
#' \describe{
#'   \item{\code{Site}}{character Short symbolic name of site}
#'   \item{\code{intercept}}{double Intercept of the adjustment equation}
#'   \item{\code{slope}}{double Slope of the adjustment equation}
#'}
#' @details
#' This dataset contains correction factors (intercepts and slopes) for adjusting the daily temperature data for the period 1945-2012 from PNWNAmet based on more accurate site-specific monthly temperatures obtained from ClimateBC v7.30. The adjustment was necessary due to offsets between PNWNAmet grid cell centers and site locations.
#'
#' PNWNAmet provides daily gridded meteorological data at a resolution of 1/16° (~6 km) over northwest North America, but this grid resolution is insufficient to accurately capture temperature variations at the seed orchard sites, especially in regions with large topographic heterogeneity.
#'
#' To address this, site-specific monthly temperature data for 1945-2012 were generated using ClimateBC v7.30, a model that produces scale-free annual and monthly climate data. This monthly data was then regressed on the corresponding monthly PNWNAmet data to generate site-specific adjustment factors using linear regression.
"picola_corrframemo"

#' @title Normal period daily temperatures 1921-2100
#' @description Estimated daily temperature data for 30-year normal periods at seed orchard and comparison sites from 1921-2100.
#' @format A data frame with 59292 rows and 7 variables:
#' \describe{
#'   \item{\code{Site}}{character Short symbolic name of site}
#'   \item{\code{period}}{character 30 year period for which the data are provided}
#'   \item{\code{scenario}}{character The string "historical" if the data are for a historical period, or "ssp126", "ssp245", "ssp370", "ssp585" if the data are for a future IPCC Shared Socioeconomic Pathway (SSP) scenario}
#'   \item{\code{month}}{integer Month number (1-12)}
#'   \item{\code{DoY}}{integer Day of the year (1-365)}
#'   \item{\code{Date_scale}}{character Representative datestamp for the day of the year (with dummy year 2024)}
#'   \item{\code{mean_temp}}{double Mean temperature (°C)}
#'}
#' @details
#' This dataset provides estimated daily temperature data for 30-year normal periods at *Pinus contorta* ssp. *latifolia* seed orchard and comparison sites in British Columbia, ranging from 1921 to 2100. The data combines historical daily temperatures and future projections under different IPCC Shared Socioeconomic Pathway (SSP) scenarios: SSP126, SSP245, SSP370, and SSP585, which correspond to different levels of radiative forcing (from 4.5 to 8.5 W/m²) by 2100.
#'
#' Monthly climate normals for historical and future periods are obtained from ClimateBC v7.30. These climate normals are used to adjust a "typical" year of the 1941-2012 adjusted PWNAmet daily temperatures (**`picola_PNWNAmet_adjusted`**) to match the climate normals for each period. The typical year is generated by averaging the daily temperatures across the full range of historical data (1945-2012), and the monthly climate normals from ClimateBC are applied to either increase or decrease the daily temperatures to align with the projected or historical monthly mean temperatures.
#' @source ClimateBC v7.30 https://climatebc.ca/
#' @references
#' Wang T, Hamann A, Spittlehouse D, Carroll C (2016) Locally Downscaled and Spatially Customizable Climate Data for Historical and Future Periods for North America. PLoS ONE 11(6): e0156720. doi:10.1371/journal.pone.0156720
#' Mahony, CR, Wang, T; Hamann, A and Cannon, AJ, 2022. A CMIP6 ensemble for downscaled monthly climate normals over North America. International Journal of Climatology 42 (11), 5871-5891 DOI: https://doi.org/10.1002/joc.7566
"picola_normal_daily"

#' @title PNWNAmet daily temperature 1945-2012
#' @description PNWNAmet daily temperature data adjusted by monthly temperatures from ClimateBC v7.30 for the period 1945-2012 for *Pinus contorta* ssp. *latifolia* seed orchard and comparison sites in British Columbia
#' @format A data frame with 223533 rows and 8 variables:
#' \describe{
#'   \item{\code{Date}}{character Date of the temperature measurements}
#'   \item{\code{Site}}{character Short symbolic name of site}
#'   \item{\code{max_temp}}{double Maximum temperature (°C)}
#'   \item{\code{min_temp}}{double Minimum temperature (°C)}
#'   \item{\code{mean_temp_raw}}{double Mean temperature (°C) as measured by PNWNAmet}
#'   \item{\code{intercept}}{double Intercept of the adjustment equation}
#'   \item{\code{slope}}{double Slope of the adjustment equation}
#'   \item{\code{mean_temp_corrected}}{double Mean temperature (°C) adjusted by monthly temperatures from ClimateBC v7.30}
#'}
#' @details
#' This dataset contains daily temperature data for *Pinus contorta* ssp. *latifolia* seed orchard and comparison sites in British Columbia from 1945-2012. Data was obtained from the Pacific Climate Impacts Consortium PNWNAmet dataset and then adjusted by monthly temperature data from ClimateBC v7.30. The data includes daily maximum, minimum, and mean temperatures, as well as correction factors (intercept and slope) derived from the regression of PNWNAmet data on monthly ClimateBC data. These adjustments were necessary due to the offsets between PNWNAmet grid cell centers and site locations.
#'
#' The adjustment process involved regressing monthly mean temperatures from PNWNAmet against corresponding monthly temperatures from ClimateBC v7.30. The intercept and slope from this regression were used to adjust the daily temperatures from PNWNAmet, ensuring that they better matched the ClimateBC projections for the given time period.

#' For details on the methodology for calculating these adjustment factors, refer to the `picola_corrframemo` dataset and its accompanying documentation.
#'
#' @source Pacific Climate Impacts Consortium https://www.pacificclimate.org/ and ClimateBC v7.30 https://climatebc.ca/
#' @references
#' Werner, A.T., Schnorbus, M.A., Shrestha, R.R., Cannon, A.J., Zwiers, F.W., Dayon G. and Anslow, F., 2019. A long-term, temporally consistent, gridded daily meteorological dataset for northwestern North America, Scientific Data, 6, 180299, doi:10.1038/sdata.2018.299
#' Wang T, Hamann A, Spittlehouse D, Carroll C (2016) Locally Downscaled and Spatially Customizable Climate Data for Historical and Future Periods for North America. PLoS ONE 11(6): e0156720. doi:10.1371/journal.pone.0156720
"picola_PNWNAmet_adjusted"

#' @title SPU Annual Climate Normals
#' @description Climate normals for BC *Pinus contorta* ssp. *latifolia* Seed Planning Units.
#' @format A data frame with 32 rows and 26 variables:
#' \describe{
#'   \item{\code{SPU_Number}}{integer Seed planning unit numerical code}
#'   \item{\code{Pl_SPU}}{character Seed planning unit name}
#'   \item{\code{X_FREQ_}}{integer Unknown. Believed to have something to do with the size or shape of the SPU.}
#'   \item{\code{Latitude}}{double Latitude of the SPU}
#'   \item{\code{Longitude}}{double Longitude of the SPU}
#'   \item{\code{Elevation}}{integer Elevations of the SPU (m)}
#'   \item{\code{MAT}}{double Mean annual temperature (°C)}
#'   \item{\code{MWMT}}{double Mean warmest month temperature (°C)}
#'   \item{\code{MCMT}}{double Mean coldest month temperature (°C)}
#'   \item{\code{TD}}{double Temperature difference between MWMT and MCMT, or continentality (°C)}
#'   \item{\code{MAP}}{integer Mean annual precipitation (mm)}
#'   \item{\code{MSP}}{integer Mean annual summer (May to Sept.) precipitation (mm)}
#'   \item{\code{AHM}}{double Annual heat-moisture index (MAT+10)/(MAP/1000)}
#'   \item{\code{SHM}}{double Summer heat-moisture index ((MWMT)/(MSP/1000)}
#'   \item{\code{DD_0}}{integer Degree-days below 0°C, chilling degree-days}
#'   \item{\code{DD5}}{integer Degree-days above 5°C, growing degree-days}
#'   \item{\code{DD_18}}{integer Degree-days below 18°C, heating degree-days}
#'   \item{\code{DD18}}{integer Degree-days above 18°C, cooling degree-days}
#'   \item{\code{NFFD}}{integer The number of frost-free days}
#'   \item{\code{bFFP}}{integer The day of the year on which frost-free period (FFP) begins}
#'   \item{\code{eFFP}}{integer The day of the year on which frost-free period (FFP) ends}
#'   \item{\code{FFP}}{integer Frost-free period}
#'   \item{\code{PAS}}{integer Precipitation as snow (mm). For individual years, it covers the period between August in the previous year and July in the current year}
#'   \item{\code{EMT}}{double Extreme minimum temperature over 30 years (°C)}
#'   \item{\code{Eref}}{integer Hargreaves reference evaporation (mm)}
#'   \item{\code{CMD}}{integer Hargreaves climatic moisture deficit (mm)}
#'}
#' #' @details
#' This dataset contains climate normals for *Pinus contorta* ssp. *latifolia* Seed Planning Units (SPUs) in British Columbia. The SPUs are geographic units used for organizing breeding and seed production activities based on species, seed planning zone, and elevation band. These 30-year climate normals are derived from ClimateBC, which provides high-resolution downscaled climate data for the region.
#'
#' The data cover key climatic indicators, including the mean annual temperature (MAT), mean warmest month temperature (MWMT), precipitation levels, and heat-moisture indices, which collectively characterize the climate conditions across each SPU.
#' @source ClimateBC v7.30 https://climatebc.ca/
#' @references
#' Wang T, Hamann A, Spittlehouse D, Carroll C (2016) Locally Downscaled and Spatially Customizable Climate Data for Historical and Future Periods for North America. PLoS ONE 11(6): e0156720. doi:10.1371/journal.pone.0156720
"picola_SPU_climsum"

#' @title Typical year daily temperatures
#' @description Daily mean temperatures for a "typical" year across various seed orchard sites and two northern comparison sites in British Columbia.
#' @format A data frame with 3294 rows and 5 variables:
#' \describe{
#'   \item{\code{Site}}{character Short symbolic name of site}
#'   \item{\code{DoY}}{integer Day of the year (1-365)}
#'   \item{\code{mean_mean_temp}}{double mean of mean daily temperature 1945-2012}
#'   \item{\code{Date_scale}}{character Representative datestamp for the day of the year (in 2024)}
#'   \item{\code{month}}{integer Month number (1-12)}
#'}
#' @details The "typical year" daily temperature values were derived by averaging the mean daily temperatures across all years from 1945 to 2012, which represents the full temporal range of the PNWNAmet dataset. This method provides a general representation of temperature patterns at each site, smoothing out annual variation and offering a reference for climate conditions during a typical year.
#'
#' The raw PNWNAmet data was adjusted using the correction factors derived from ClimateBC data. This correction process aligns the PNWNAmet data with the more accurate monthly temperature data from ClimateBC, ensuring that the daily temperatures in this dataset reflect a more accurate representation of typical climate conditions for each site.
"picola_typical_ts"
