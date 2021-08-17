#WAP in R to find the multiplication table (from 1 to 10).
{
mul = as.integer(readline(prompt = "Enter a number: "))
for(i in 1:10) {
  print(paste(mul,'x', i, '=', mul*i))
}
}
