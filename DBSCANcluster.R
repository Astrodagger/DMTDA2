library(dbscan)
data(airquality)
scaled_data <- scale(airquality)
dbscan_clusters <- dbscan(scaled_data, eps = 0.3, minPts = 5)
plot(scaled_data, col = dbscan_clusters$cluster + 1, 
     main = "DBSCAN Clustering")
table(dbscan_clusters$cluster)
noise_points <- scaled_data[dbscan_clusters$cluster == 0, ]
