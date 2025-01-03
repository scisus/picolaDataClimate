% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{picola_corrframemo}
\alias{picola_corrframemo}
\title{Site correction factors}
\format{
A data frame with 9 rows and 3 variables:
\describe{
\item{\code{Site}}{character Short symbolic name of site}
\item{\code{intercept}}{double Intercept of the adjustment equation}
\item{\code{slope}}{double Slope of the adjustment equation}
}
}
\usage{
picola_corrframemo
}
\description{
Correction factors for adjusting PNWNAmet daily temperature data by monthly temperatures from ClimateBC v7.30 for the period 1945-2012 for seed orchard and comparison sites in British Columbia
}
\details{
This dataset contains correction factors (intercepts and slopes) for adjusting the daily temperature data for the period 1945-2012 from PNWNAmet based on more accurate site-specific monthly temperatures obtained from ClimateBC v7.30. The adjustment was necessary due to offsets between PNWNAmet grid cell centers and site locations.

PNWNAmet provides daily gridded meteorological data at a resolution of 1/16° (~6 km) over northwest North America, but this grid resolution is insufficient to accurately capture temperature variations at the seed orchard sites, especially in regions with large topographic heterogeneity.

To address this, site-specific monthly temperature data for 1945-2012 were generated using ClimateBC v7.30, a model that produces scale-free annual and monthly climate data. This monthly data was then regressed on the corresponding monthly PNWNAmet data to generate site-specific adjustment factors using linear regression.
}
\keyword{datasets}
