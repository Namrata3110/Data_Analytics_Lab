#WAP in R to find the sum of n natural numbers with formula.
{
number = as.integer(readline(prompt = "Enter a number: "))
if(number < 0) {
  print("Enter a valid number")
} else {
  sum = (number * (number + 1)) / 2;
  print(paste("The sum is", sum))
}
}