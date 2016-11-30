# A numeric Vector in R 
# c() function is used for combing the number to create vector

MyFirstVector <- c(3, 45, 56 , 732)
MyFirstVector
typeof(MyFirstVector)

is.numeric(MyFirstVector)
is.integer(MyFirstVector)
# any integers are considers as double in R 
is.double(MyFirstVector)

V2 <- c(3L , 12L , 243L , 0L)
typeof(V2)
is.numeric(V2)
is.integer(V2)
is.double(V2)

# Character verctor 

V3 <- c( "a" , "B23" , "Hello")
typeof(V3)
is.character(V3)
is.numeric(V3)

# Vector can only have same type of types only

seq() #sequence - like ':'
rep() #replicate 

seq(1,15)
1:15

# Sequence give the more flexibility
seq(1 ,15 , 2)
z <- seq(1,15,4)
z

rep(1, 50)

d <- rep( 3, 50)
d

b <- rep("4" ,100)
b

x <- c(80,20,100, 30)
y <- rep(x , 100)
y



for (n in 1:10) { 
  N <- 10 ^ n 
  counter <- 0 

  for( i in rnorm(N)) {
    if( -1 < i & i < 1 )
    {
      counter = counter + 1
    }
  
  }
  average = counter / N
  print(average) 
}







