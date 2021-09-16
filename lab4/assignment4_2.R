#2) Data whose distribution is close to lognormal are common. Size measurements of biological
#organisms often have this character. As an example, consider the measurements of
#body weight (body),in the data frame Animals (MASS). Begin by drawing a histogram of
#the untransformed values,and overlaying a density curve. Then

library(MASS)
hist(Animals$body,prob=TRUE)
lines(density(Animals$body,lwd=2,col="chocolate3"))
#(a) Draw an estimated density curve for the logarithms of the values.
library(MASS)
plot(density(Animals$body))
logbody<-log(Animals$body)
plot(density(logbody))
#(b) Determine the mean and standard deviation of log(Animals$body). Overlay the estimated
#density with the theoretical density for a normal distribution with the mean
#and standard deviation just obtained.
Mean<-mean(logbody)
Standard_Deviation<-sd(logbody)
xval <- pretty(c(Mean - 3 * Standard_Deviation, Mean + 3 * Standard_Deviation), 50)
lines(xval, dnorm(xval, mean = Mean, sd = Standard_Deviation))
