# add a and b
Just_add<- function(a,b) 
{a+b}
Just_add(5,6)

# the EU distance of two vectors
dis <- function(x1, x2) sqrt(sum((x1 - x2) ^ 2))
a<- c(4,5,6)
b<- c(7,8,9)
distance<- dis(a,b)
distance

a<- 9
if (a<10)
{print ("It's less than Ten")}

print_l <-function(l)
{
  if (l %% 2 != 0)         # %% MEANS mod
  {print("It's an odd number")}
  else 
  {print("It's not odd!")}
}
print_l(9)

# try to avoid for loop in R
x<- c(6,7,8,9)
for (e in x) print (e)

a<- 10
i=0
while(i<10){    # while(TRUE)
  print(paste("loop",i))
  i= i+1
}

a<- 10
i=0
while(TRUE){    # while(TRUE)
  print(paste("loop",i))
  i= i+1
}
# To stop: python Ctrl +c  /  In R, press the red button in Console


