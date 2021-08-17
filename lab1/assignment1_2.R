#WAP in R to display the sum of n natural numbers.
{
number = as.integer(readline(prompt = "Enter a number: "))
if(number < 0) {
  print("Enter a valid number")
} else {
  sum = 0
  while(number > 0) {
    sum = sum + number
    number = number - 1
  }
  print(paste("The sum is", sum))
}
}
