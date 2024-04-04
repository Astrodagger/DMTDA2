library(cluster)
data(airquality)
X <- airquality[, c("Ozone", "Solar.R", "Wind", "Temp")]
X <- na.omit(X)
numClusters <- 4
clara_model <- clara(X, k = numClusters)
plot(X[, "Temp"], X[, "Ozone"], col = clara_model$clustering, pch = 19, 
     main = paste("CLARA Clustering with", numClusters, "Clusters"),
     xlab = "Temperature", ylab = "Ozone")
points(X[clara_model$medoids, "Temp"], X[clara_model$medoids, "Ozone"], 
       col = 1:numClusters, pch = 'x', cex = 2)
