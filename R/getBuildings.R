library(sp)
library(geojsonio)

getBuildings <- function(cluster_id) {
  load("./R/prediction_building_subset_sp.RData")
  prediction_building_subset_sp$poly = as.vector(prediction_building_subset_sp$which_poly)
  prediction_building_subset_sp$which_poly <- NULL
  plot_buildings <- prediction_building_subset_sp[prediction_building_subset_sp$cluster ==
                                                    cluster_id,]
  geojsonio::geojson_json(plot_buildings)
}
