#-----Introduction to qplot

?qplot
install.packages("ggplot2")
library(ggplot2)

qplot(data=stat, x = Internet.users)
qplot(data = stat , x = Income.Group , y= Birth.rate)
qplot(data = stat , x = Income.Group , y= Birth.rate , size =I(3) , col = I("blue") )

qplot(data = stat , x = Income.Group , y= Birth.rate , geom = "boxplot" )

#----------- Visualizing What we need 

qplot(data=stat , x = Internet.users , y = Birth.rate)
qplot(data=stat , x = Internet.users , y = Birth.rate,  size = I(4) )

# Adding Color 
qplot(data=stat , x = Internet.users , y = Birth.rate,  size = I(4) , colour = I("blue"))
qplot(data=stat , x = Internet.users , y = Birth.rate,  size = I(4) , colour = Income.Group)

#--------------- Building DataFrame ---------------------------

mydf <- data.frame( Countries_2012_Dataset , Codes_2012_Dataset , Regions_2012_Dataset )

mydf
head(mydf)
str(mydf)

colnames(mydf) <- c("Country" , "Code" , "Region")

rm(mydf)

mydf <- data.frame( Country = Countries_2012_Dataset , Code= Codes_2012_Dataset , Region=Regions_2012_Dataset )
str(mydf)
head(mydf)

summary(mydf)


# ---------------------------------Merging Data Frame --------------------------------------
head(stat)
head(mydf)
colnames(stat)
mergestat <- merge(stat , mydf ,by.x = "Country.Code" , by.y = "Code")
?merge

mergestat
head(mergestat)
head(mergestat)

stat$Country.Name <- NULL 


megestat
mergestat$Country.Name <- NULL
head(mergestat)

?qplot
qplot( data = mergestat ,x = Internet.users, y = Birth.rate , size = I(4) , color = Region)


# 1. creating the shapes 
qplot( data = mergestat ,x = Internet.users, y = Birth.rate , size = I(4) , color = Region  , shape = I(17))

# 2 . Transparency 
qplot( data = mergestat ,x = Internet.users, y = Birth.rate , size = I(4) , color = Region  , shape = I(17) , alpha = I(0.3))

# 3 . Title
qplot( data = mergestat ,x = Internet.users, y = Birth.rate , size = I(4) , color = Region  , shape = I(17) , alpha = I(0.3) , main = "Birth Rate vs Internet Users")

