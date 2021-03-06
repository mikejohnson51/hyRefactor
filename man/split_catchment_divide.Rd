% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/split_catchment.R
\name{split_catchment_divide}
\alias{split_catchment_divide}
\title{Split Catchment Divides}
\usage{
split_catchment_divide(
  catchment,
  fline,
  fdr,
  fac,
  lr = FALSE,
  min_area_m = 800,
  snap_distance_m = 100
)
}
\arguments{
\item{catchment}{sf data.frame with one catchment divide}

\item{fline}{sf data.frame with one or more flowline segments in
upstream downstream order.}

\item{fdr}{raster a flow direction raster that fully covers the catchment}

\item{fac}{raster a flow accumulation raster that fuller covers the catchment}

\item{lr}{boolean should catchments be split along the left/right bank?}

\item{min_area_m}{minimum area in meters to filter out slivers (caution, use with care!!)}

\item{snap_distance_m}{distance to snap raster generated geometry to polygon geometry}
}
\value{
Split catchment divides as an sfc geometry.
}
\description{
A catchment-divide splitting algorithm that works with a D8
flow direction grid and the output of nhdplus_refactor. See Vignette
for examples.
}
