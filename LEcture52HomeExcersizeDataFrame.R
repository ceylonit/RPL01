# Inserting data file from the location
wb <- read.csv(file.choose())

wb
head(wb)
str(wb)
summary(wb)

# creating a Data frame 

wbadd <- data.frame( Country_Code , Life_Expectancy_At_Birth_1960, Life_Expectancy_At_Birth_2013)

wbadd

head(wbadd)
tail(wbadd)
str(wbadd)
summary(wbadd)

head(wb , n = 10 )
head(wbadd,n = 10 )

colnames(wbadd) <- c("ccode" , "LEat1960" , "LEat2013")

wb[wb$Country.Name == "Zimbabwe", ]
wb1960 <- wb[wb$Year == "1960" ,]
wb2013 <- wb[wb$Year == "2013", ]

wbadd1960 <- data.frame( code = Country_Code , Life_Expectancy_At_Birth_1960)
wbadd2013 <- data.frame( code = Country_Code ,  Life_Expectancy_At_Birth_2013)

summary(wb2013)
summary(wb1960)
summary(wbadd1960)
summary(wbadd2013)

merge1960 <- merge(wb1960 , wbadd1960 , by.x = "Country.Code" , by.y  = "code" )
merge2013 <- merge(wb2013 , wbadd2013 , by.x = "Country.Code" , by.y  = "code" )

colnames(merge1960) <- c("Ccode" , "Cname" , "Region" , "Year" , "Fertility.Rate" , "LifeExpectancy")
colnames(merge2013) <- c("Ccode" , "Cname" , "Region" , "Year" , "Fertility.Rate" , "LifeExpectancy")


summary(merge1960)
summary(merge2013)

completemerge <- rbind(merge1960, merge2013)
summary(completemerge[completemerge$Year == "2013",])

?qplot

qplot ( data = completemerge , y = LifeExpectancy , x = Fertility.Rate , size = I(3) , alpha = I(0.4) ,  color = Region , main = "Life Expectancy vs Fertility rate"  )
qplot ( data = completemerge[completemerge$Year == "1960" ,] , y = LifeExpectancy , x = Fertility.Rate , size = I(3) , alpha = I(0.4) ,  color = Region , main = "Life Expectancy vs Fertility rate in Year 1960"  )
qplot ( data = completemerge[completemerge$Year == "2013" ,] , y = LifeExpectancy , x = Fertility.Rate , size = I(3) , alpha = I(0.4) ,  color = Region , main = "Life Expectancy vs Fertility rate in year 2013"  )
