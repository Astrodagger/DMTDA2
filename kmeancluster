data(airquality)
if (any(is.na(airquality))) {
  airquality <- na.omit(airquality)
}
for (col in names(airquality)) {
  if (any(is.infinite(airquality[[col]])) || any(is.nan(airquality[[col]]))) {
    airquality[[col]][is.infinite(airquality[[col]]) | is.nan(airquality[[col]])] <- NA
    airquality <- na.omit(airquality)
  }
}
X <- airquality[c("Month", "Solar.R")]
X <- airquality[c("Month", "Solar.R")]
X <- airquality[ c("Month", "Solar.R")]
numClusters <- 4
kmeans_model <- kmeans(X, centers = numClusters)
plot(X$Month, X$Solar.R, col = kmeans_model$cluster, pch = 19,
     main = paste('K-means Clustering with', numClusters, 'Clusters'))
points(kmeans_model$centers[, c('Month', 'Solar.R')],
       col = 1:numClusters, pch = 'x', cex = 2)
