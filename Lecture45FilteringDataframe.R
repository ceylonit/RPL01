#----------------Filtering Data Frame 

head(stat)
head(stat$Internet.users)
stat$Internet.users < 2
filter <- stat$Internet.users < 2
stat[filter,]
stat[stat$Internet.users == 1.3,]

stat[stat$Birth.rate > 40,]

stat[stat$Country.Name == "Sri Lanka" ,]

stat[stat$Birth.rate >40 & stat$Internet.users <2 ,]

stat[stat$Income.Group == "High income",]

stat[stat$Country.Name == "Malta",]
