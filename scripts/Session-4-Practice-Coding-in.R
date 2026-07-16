##### Importing data #####
dataset <- read.csv("dataset.csv")
# Also, import RSCH 620 data using File menu
plot(dataset$sprints)
hist(dataset$sprints)
boxplot(dataset$sprints)
scale(dataset$sprints) # z-scores
dataset$z_sprints <- scale(dataset$sprints)[,1]

# Possible outlier thresholds
2*pnorm(-1.96) # .05
2*pnorm(-2.58) # .01
2*pnorm(-3.29) # .001

abs(dataset$z_sprints) > 2.58
sum(abs(dataset$z_sprints) > 2.58)
which(abs(dataset$z_sprints) > 2.58)
which(dataset$sprints == 14)
sort(dataset$sprints, decreasing=T)

dataset$sprints[33] <- 12
dataset$z_sprints <- scale(dataset$sprints)[,1]
dataset <- dataset[,1:3]