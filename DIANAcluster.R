library(cluster)
data(airquality)
str(airquality)
airquality <- na.omit(airquality)
airquality_subset <- airquality[, c("Ozone", "Solar.R")]
airquality_scaled <- scale(airquality_subset)
diana_result <- diana(airquality_scaled)
plot(diana_result, which.plots = 2)
cluster_cut <- cutree(diana_result, k = 4)
airquality_subset$cluster <- cluster_cut
table(cluster_cut)
