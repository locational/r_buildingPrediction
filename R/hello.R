library(sp)
library(geojsonio)

hello <- function() {
  return("Hello, world!")
}

getBuildings <- function(cluster_id) {
  load("R/prediction_building_subset_sp.RData")
  plot_buildings <- prediction_building_subset_sp[prediction_building_subset_sp$cluster ==
                                                    cluster_id,]
  geojsonio::geojson_json(plot_buildings)
}
