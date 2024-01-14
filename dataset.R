#setwd()

cars <- read.csv("~/R programming/cars_data.csv", header=FALSE)

#view the data
View(cars)

head(cars)
str(cars)
ncol(cars)
nrow(cars)
tail(cars,n=10)
summary(cars)

#access column data
cars$V7