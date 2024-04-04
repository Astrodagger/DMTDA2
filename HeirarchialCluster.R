library(cluster)
data(airquality)
X <- airquality[, c("Ozone", "Solar.R", "Wind", "Temp")]
X <- na.omit(X)
distances <- dist(X, method = "euclidean")
hierarchical_model <- hclust(distances, method = "complete")
plot(hierarchical_model, main = "Hierarchical Clustering Dendrogram",
     xlab = "Observations", ylab = "Distance")
numClusters <- 3  
clusters <- cutree(hierarchical_model, k = numClusters)
plot(X[, "Temp"], X[, "Ozone"], col = clusters, pch = 19, 
     main = paste("Hierarchical Clustering with", numClusters, "Clusters"),
     xlab = "Temperature", ylab = "Ozone")

