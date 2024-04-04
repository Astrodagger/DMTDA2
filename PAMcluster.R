library(cluster)
data(airquality)
X <- airquality[, c("Ozone", "Solar.R", "Wind", "Temp")]
X <- na.omit(X)
numClusters <- 5
pam_model <- pam(X, k = numClusters)
plot(X[, "Temp"], X[, "Ozone"], col = pam_model$clustering, pch = 19, 
     main = paste("PAM Clustering with", numClusters, "Clusters"),
     xlab = "Temperature", ylab = "Ozone")
points(X[pam_model$id.med, "Temp"], X[pam_model$id.med, "Ozone"], 
       col = 1:numClusters, pch = 'x', cex = 2)
