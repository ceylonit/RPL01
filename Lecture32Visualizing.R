Games

rownames(Games)
colnames(Games)

Games["LeBronJames",]

round(FieldGoals / Games,1)

round(MinutesPlayed/Games,1)

?matplot
matplot(t(FieldGoals)  ,   type="b" , pch=15:18  )
matplot(t(FieldGoals)  ,   type="b" , pch=15:18 , col=c(1:4,6) )
legend("bottomleft",legend = Players ,col=c(1:4,6) , pch=15:18  ,  horiz = F)


FieldGoals

# Transforting the tables 
t(FieldGoals)
