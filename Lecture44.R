#-----------Basic operation with a DF 

stat[1:10,]
stat[3:9,]
stat[c(4,100),]

# Remember how the [] works

stat[1,] 
is.data.frame(stat[1,])  #no need for drop = F
is.data.frame(stat[,1]) 
stat[,1]
stat[,1,drop = F]

#multiply Columns 
head(stat)


stat$Birth.rate * stat$Internet.users

#adding a column 
head(stat)
stat$Mycalc <- stat$Birth.rate * stat$Internet.users

#Test of konwledge 
stat$xyz <- 1:5 
head(stat , n = 12)

rep(1:3 , 4)
rep(c(1,2,3) , each =4 , length = 10)
?rep

stat$xyz <- NULL
stat$Mycalc <- NULL
stat
head(stat)
