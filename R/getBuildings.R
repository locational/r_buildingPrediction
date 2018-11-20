library(sp)
library(geojsonio)

getBuildings <- function(cluster_id) {
  data_path = file.path(getwd(), 'R', 'prediction_building_subset_sp.RData')
  exists = file.exists(data_path)
  return(list(wd = wd, exists = exists))
  # load(data_path)
  # prediction_building_subset_sp$poly = as.vector(prediction_building_subset_sp$which_poly)
  # prediction_building_subset_sp$which_poly <- NULL
  # plot_buildings <- prediction_building_subset_sp[prediction_building_subset_sp$cluster ==
  #                                                   cluster_id,]
  # geojsonio::geojson_json(plot_buildings)
}
