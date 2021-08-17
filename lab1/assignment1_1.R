#WAP to print the highest of three numbers.
{
a = as.integer(readline(prompt="Enter 1st number: "))
b = as.integer(readline(prompt="Enter 2nd number: "))
c = as.integer(readline(prompt="Enter 3rd number: "))
if (a>b && a>c){
  print(paste("Highest is :",a))
}
else if (b>c){
  print(paste("Highest is :",b))
}
else {
  print(paste("Highest is :",c))
}
}

