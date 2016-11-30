# Prooving Law of Number 

N <- 1000000 
counter <- 0 
for ( i in rnorm(N , mean = 0 , sd = 1)) {
  
  if( i < 1 & i > -1 ) {
    counter = counter + 1 
         
    }
}

answer <- counter / N
answer 
