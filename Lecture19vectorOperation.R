# why we don't need  [] oftently in R 

x <- rnorm(5)
x


# R- Specific Programming loop 
for ( i in x) {
  print(i)
  
}

print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

# Conventional Programming Loop

for ( j in 1:5) {
  print(x[j])
}

# -------------------------------------- SEction 02 -------------------------------------------------------------------------

N <- 100 
a <- rnorm(N)
b <- rnorm(N)


# VEctorized approached 
c <- a * b 
c 

# De-Vectorized Approached 
d <- rep(NA , N)
for( i in 1:N) {
  d[i] = a[i] * b[i]
}
d

