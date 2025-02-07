#' ---
#' author: PAILLA SHIVA CHARAN
#' ---
library(ggplot2)

# Load data
df <- read.csv("S1data.csv")

# Summary statistics
summary(df)

# Logistic regression model
Gender_fit <- glm(Event ~ Gender, data=df, family="binomial")
fit <- glm(Event ~ ., data=df, family="binomial")
summary(Gender_fit)
summary(fit)

# Random forest model
library(randomForest)
set.seed(123)
rf_model <- randomForest(Event ~ ., data=df)
importance(rf_model)
varImpPlot(rf_model)

