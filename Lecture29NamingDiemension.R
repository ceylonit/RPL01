#Named Vectors 
Charlie <- 1:5
Charlie

#give names 
names(Charlie)

names(Charlie) <- c("a" , "b" , "C" , "d" , "e")
names(Charlie)
Charlie

#Clear names 

names(Charlie) <- NULL
names(Charlie)

#Naming Matrix Diemensions 01 
temp.vec <- rep(a , times = 3)
temp.vec <- rep(a , each = 3)
temp.vec
a <- c("a" , "b" , "zZ")

Bravo <- matrix( temp.vec , 3 , 3)
Bravo


rownames <- c("how" , "are" , "you")

rownames(Bravo) <- rownames
rownames(Bravo)

cnames <- c( "I" , "am" , "mad")
colnames(Bravo) <- cnames
colnames(Bravo)
