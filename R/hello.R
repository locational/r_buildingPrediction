library(sp)
library(jsonlite)

# library(raster)
# library(rgdal)
# library(sf)
# library(geojsonio)



hello <- function() {
  print("Hello, world!")
}

getBuildings <- function(cluster_id) {
  load("R/prediction_building_subset_sp.RData")
  plot_buildings <- prediction_building_subset_sp[prediction_building_subset_sp$cluster ==
                                                    cluster_id,]

}
