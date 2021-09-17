#1. Perform the following tasks:
#(a) Import mtcars dataset.
data("mtcars")
head(mtcars)
nrow(mtcars)
ncol(mtcars)
summary(mtcars)

#(b) Visualize your data using scatter plots.
plot(x = mtcars$wt,y = mtcars$mpg,xlab = "Weight",ylab = "Mileage",main = "Weight v/s Mileage")

#(c) Compute the Correlation between mpg and wt variables.
#cor(x=mtcars$wt,y=mtcars$mpg,use="everything",method = c("pearson","kendall","spearman"))
cor(x=mtcars$wt,y=mtcars$mpg,use="everything",method = "pearson")
cor(x=mtcars$wt,y=mtcars$mpg,use="everything",method = "kendall")
cor(x=mtcars$wt,y=mtcars$mpg,use="everything",method = "spearman")


#2. Perform the following:
#(a) Define a normalized vector P.
P <- print(dnorm(c(2, 6, 7, 7, 5, 13, 14, 17, 11, 8)))

#(b) Define a normalized vector Q.
Q <- print(dnorm(c(3, 5, 5, 3, 7, 12, 13, 19, 22, 7))) #mean = 0,sd = 1

#(c) Combine P and Q as matrix object. Please note that when defining a matrix from
#vectors, the vectors should be combined as rows.
matrix1 <- print(matrix(P,byrow = TRUE))
matrix2 <- print(matrix(Q,byrow = TRUE))
  
#(d) Compute the Euclidean Distance with default parameters.
euclidean <- print( sqrt(sum((P - Q)^2)))  #?????(A(i)-B(i))^2


#3. Compute Manhattan distance and cosine similarity after performing (a),(b),(c) steps of
#Q.2.
manhattan_distance <- function(a, b){
  dist <- abs(a-b)
  dist <- sum(dist)
  return(dist)
}
manhattan_distance(P,Q)

library(lsa)
cosine(P,Q)

#4.
#(a) Import the Iris dataset (https://archive.ics.uci.edu/ml/datasets/iris).
print(getwd())
setwd("D:/1. [IIIT Guwahati]/3rd Semester/R programming")
print(getwd())
#Read the iris data
irisdata <- read.csv('D:/1. [IIIT Guwahati]/3rd Semester/R programming/Iris_Dataset.csv')
print(irisdata)
dim(irisdata)

#(b) As you may know, this dataset contains three kinds of flowers: Iris-Setosa, IrisVersicolor, and Iris-Virginica, having the following four features: sepal length, sepal
#width, petal length, petal width. choose only two features: petal length, petal width,
#and plot the data points in a 2-D space where the x-axis and the y-axis represent the
#petal length and the petal width, respectively.
plot(x = irisdata$PetalLengthCm,y = irisdata$PetalWidthCm,xlab = "Petal Length",ylab = "Petal Width", main = "Petal Length V/S Petal Width")

#(c) Compute the similarity measure between Iris-Setosa and Iris-Versicolor; and IrisVersicolor and Iris-Virginica; and Iris-Setosa and Iris-Virginica considering only two
#features petal length and petal width.

bind<-rbind(irisdata$PetalLengthCm,irisdata$PetalWidthCm) 
#Euclidean_Distance
dist(bind,method = "euclidean")
#Manhattan_Distance
dist(bind,method = "manhattan")
#Cosine_Similarity
cosine(irisdata$PetalLengthCm,irisdata$PetalWidthCm)
