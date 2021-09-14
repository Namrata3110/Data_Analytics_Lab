#(1) 
#a) In R a simple bar graph can be used to model the probability distribution function.
#Take a random vector and probability associated with it and plot it with a bar graph.
barplot(table(sample(1:5,size = 10,replace = T,prob = c(0.3,0.7,0.4,0.1,0.6))));
#sample(1:5,size = 10,replace = TRUE,prob = c(0.3,0.7,0.4,0.1,0.6))

#(b) For the above problem create a cumulative frequency table and plot the cumulative
#frequency against each sample point mentioned in the vector.
data<-table(sample(1:5,size = 10,replace = TRUE,prob = c(0.3,0.7,0.4,0.1,0.6)));
cum_freq<-cumsum(data);
print(cum_freq);
barplot(cum_freq);

#(c) Using some simple commands in R generate the probability values for the binomial
#distribution for the number of children in 10 with blue eyes using p=0.16. Plot the
#obtained result.
n<-0:10
probability<-dbinom(x = n,size = 10,prob = 0.16);
plot(x = n,y = probability,type = 'h',xlab = " ",ylab = "Probability", sub = "Number of kids with blue eyes");

#(d) Run the above example with probabilities that a child has blue eyes is 0.05, 0.2, 0.5,
#and 0.8 and see how this changes the distribution.

par(mfrow=c(2,2)) #The par() function allows to set parameters to the plot.mfrow stands for "MultiFrame rowwise layout" which creates a matrix of nrows x ncols plots that are filled in by rows.
plot(0:10,dbinom(0:10,10,0.05),type='h',xlab="",ylab="Prob", sub="p=0.05")
plot(0:10,dbinom(0:10,10,0.2),type='h',xlab="",ylab="Prob", sub="p=0.2")
plot(0:10,dbinom(0:10,10,0.5),type='h',xlab="",ylab="Prob", sub="p=0.5")
plot(0:10,dbinom(0:10,10,0.8),type='h',xlab="",ylab="Prob", sub="p=0.8") 

#(e) Consider you have a vector 0:10. Compute poisson distribution with p=0.2.Plot it
#to visulaise the distribution.

c<-0:10
poisson<-dpois(x = c, 0.2)
data.frame("Prob"=y,row.names=x) 
plot(x = c,y = poisson,type = 'h',xlab = "Sequence Errors",ylab = "Probability")
