library(sp)
library(geojsonio)

getBuildings <- function(cluster_id) {
  data_filename =  'prediction_building_subset_sp.RData'
  data_path = file.path(getwd(), 'R', data_filename)
  exists = file.exists(data_path)
  sys = system.file(data_filename, package="buildingPrediction")
  return(list(exists = exists, sys = sys))
  # load(data_path)
  # prediction_building_subset_sp$poly = as.vector(prediction_building_subset_sp$which_poly)
  # prediction_building_subset_sp$which_poly <- NULL
  # plot_buildings <- prediction_building_subset_sp[prediction_building_subset_sp$cluster ==
  #                                                   cluster_id,]
  # geojsonio::geojson_json(plot_buildings)
}
