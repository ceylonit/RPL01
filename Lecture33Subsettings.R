x <- c("a" , "b" , "c" , "d" , "e")
x
x[c(1,5)]
x[1]

Games
# Top three player who plaed in the basket ball since 2010 to 2014
Games[1:3,6:10]

# Top player and least player who plaed in the basketball games 

Games[c(1,10),6:10]
Games[ , c("2008","2009")]

games[1,]
Games[1,] # Vectors
typeof(Games[1,])
is.vector((Games[1,]))

# Having matrix ( not include the )

Games[1,, drop=F]

matplot(t(MinutesPlayed[1:3,])  ,   type="b" , pch=15:18  )
matplot(t(FieldGoals)  ,   type="b" , pch=15:18 , col=c(1:4,6) )
legend("bottomleft",legend = Players[1:3] ,col=c(1:4,6) , pch=15:18  ,  horiz = F)


matplot(t(MinutesPlayed[1,, drop=F])  ,   type="b" , pch=15:18  )
matplot(t(FieldGoals)  ,   type="b" , pch=15:18 , col=c(1:4,6) )
legend("bottomleft",legend = Players[1] ,col=c(1:4,6) , pch=15:18  ,  horiz = F)

