#Get the data (PAICOL.csv) and import it with the function read.csv. The dataset comprises
#of the daily levels of a river and the rainfall data from the basin. Replace the value of
#DATE with formatted dates and then display the summary of the data using the function
#summary(). Load ggplot package and visulaize the following using ggplot functions:

PAICOL<-read.csv("D:/1. [IIIT Guwahati]/3rd Semester/R programming/PAICOL.csv")
print(head(PAICOL))
PAICOL$DATE=as.Date(PAICOL$DATE,origin=PAICOL$DATE[1])
summary(PAICOL)
View(PAICOL)
#(a) Create a line plot of the attribute 'LEVEL'.

install.packages("ggplot2")
library(ggplot2)
ggplot(data = PAICOL,aes(DATE,LEVEL))+geom_line()
#(b) Create a scatter plot of the 'RAIN' against 'LEVEL'.

ggplot(data = PAICOL,aes(RAIN,LEVEL)) +geom_point()
#(c) Create a plot of the RAIN and LEVEL.

ggplot(PAICOL,aes(DATE,LEVEL))+geom_line(aes(color="LEVEL"))+geom_line(data=PAICOL,aes(DATE,RAIN,color="RAIN")
#(e)Plot the LEVEL for the year "2001".

PAICOL$YEAR = as.numeric(format(PAICOL$DATE, "%Y"))
index_2001=PAICOL$YEAR==2001
ggplot(PAICOL[index_2001,],aes(DATE,LEVEL))+geom_line(aes(color="LEVEL"))
