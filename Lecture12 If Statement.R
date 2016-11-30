# --- -2 ---- =1 ==== 0 ---1 --- 2 ---- 

#set of number which published by normal distribustion 
rm(answer)
x <- rnorm(1)
if( x > 0  ) {
  answer <- " It is greater than 0"
  answer
}



# if else 

rm(answer)
x <- rnorm(1)
if( x > 1  ) {
  answer <- " It is greater than 0"
  
} else {
  answer <- " Less or equal to 0 "
}
 


# nested if condition

rm(answer)
x <- rnorm(1)
if( x > 1  ) {
  answer <- " It is greater than 0"
} else {
  if ( x >= -1) {
    answer <- "Between -1 and 1"
  } else {
    answer <- "Less than -1"
  }
}

#Elseif 

rm(answer)
x <- rnorm(1)
if( x > 1  ) {
  answer <- " It is greater than 0"
} else if ( x >= -1) {
    answer <- "Between -1 and 1"
} else {
    answer <- "Less than -1"
}
