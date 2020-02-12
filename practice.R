## Practice the following problem 
data.frame(a = 1:5, b = c('1','m','n', 'o', 'p'), s=c(2,3,6,7,8))
# it will show in columns


# What is the sum of the first 1000 positive integers?
x< 1:1000
sum(x)

# or sum(1:1000)


#1. Use the function c to create a vector with the average high temperatures in January for
#Beijing, Lagos, Paris, Rio de Janeiro, San Juan, and Toronto, which are 35, 88, 42, 84, 81, 
#and 30 degrees Fahrenheit. Call the object temp.
tem <-c(35,88,42,84,81,30)


# Now create a vector with the city names and call the object city.
city<- c('Beijing', 'Lagos', 'Paris', 'Rio de Janeiro', 'San Juan', 'Toronto')

# Use the names function and the objects defined in the previous exercises to associate the temperature data with its corresponding city.
city_tem <- data.frame(city, tem)

# Use the [ and : operators to access the temperature of the first three cities on the list.
city_tem$tem[0:3]  
# tem[0:3]
  
# Use the [ operator to access the temperature of Paris and San Juan.
 #city_tem[c("San Juan","paris"),] this is wrong
 city_tem[c(3,5),] # comma with space means all columns, in this case only 1 column
 
# Use the : operator to create a sequence of numbers  12,13,14,.....73
  12:73                      
                          
# Create a vector containing all the positive odd numbers smaller than 100.
  seq(1, 100, 2)
                          
# Create a vector of numbers that starts at 6, does not pass 55, and adds numbers in increments of 4/7: 6, 6 + 4/7, 6 + 8/7, and so on. How many numbers does the list have? Hint: use seq and length.
  seq(6,55,4/7)  
  
# What is the class of the following object a <- seq(1, 10, 0.5)?
 class(a)
 # numeric
                             
#What is the class of the following object a <- seq(1, 10)?
 # integer
                            
# The class of class(a<-1) is numeric, not integer. R defaults to numeric and to force an integer, you need to add the letter L. Confirm that the class of 1L is integer.
a<-L
class(a)
                          
# Define the following vector:x <- c("1", "3", "5") and coerce it to get integers.
x <- c("1", "3", "5")
class(x)
as.interger


#  In the data frame you made in the second problem convert the temperature from Fahrenheit to Celsius. The conversion is  
#C=5/9×( F −32)
city_tem
city_tem$tem <- 5/9*(city_tem$tem-32)
city_tem

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


