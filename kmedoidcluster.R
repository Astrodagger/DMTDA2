library(cluster)
data(airquality)
X <- airquality[, c("Ozone", "Solar.R", "Wind", "Temp")]
X <- na.omit(X)
numClusters <- 3
distances <- dist(X, method = "manhattan")
kmedoids_model <- pam(distances, k = numClusters)
plot(X$Temp, X$Ozone, col = kmedoids_model$clustering, pch = 19, 
     main = paste("K-medoids Clustering with", numClusters, "Clusters"),
     xlab = "Temperature", ylab = "Ozone")
points(X[kmedoids_model$id.med, "Temp"], X[kmedoids_model$id.med, "Ozone"], 
       col = 1:numClusters, pch = 'x', cex = 2)

