install.packages("neuralnet")
require("neuralnet")

View(infert)
?neuralnet


# read the dataset
data = read.csv("D:/M2 SPA/data mining/final project/heart.csv")
str(data)
View(data)


# one hot encoding (transforming categorecal variables into numerical ones)
library(caret)
dmy = dummyVars(" ~ .",data = data,fullRank = T)
data_dmy = data.frame(predict(dmy, newdata = data))
str(data_dmy)
View(data_dmy)






#data exploration 
info = summary(data_dmy)
names(data_dmy)
hist(data_dmy$Age,xlab = "Age",main = "Histograme of Age")
hist(data_dmy$RestingBP,xlab = "RestingBP",main = "Histograme of RestingBP")
hist(data_dmy$Cholesterol,xlab = "Cholesterol",main = "Histograme of Cholesterol")
hist(data_dmy$MaxHR,xlab = "MaxHR",main = "Histograme of MaxHR")
hist(data_dmy$Oldpeak,xlab = "Oldpeak",main = "Histograme of Oldpeak")

View(info)

d = density(data_dmy$Age) 
plot(d)
