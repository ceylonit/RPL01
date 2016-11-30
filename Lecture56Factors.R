getwd()
head(movies)
movies <- read.csv(file.choose())
head(movies)

colnames(movies) <- c("Film" , "Genre" ,"CriticsRating" , "AudienceRating" , "BudgetMillions" , "Year")
head(movies)
str(movies)
summary(movies)

movies$CriticsRating
summary(movies)

# Converting nonfactoring elements into Factors 

factor(movies$Year)
movies$Year <- factor(movies$Year)
str(movies)

library(ggplot2)
#======================Aesthetics +++++++++++++++++++++++

ggplot(data = movies , aes(x = CriticsRating , y = AudienceRating))

# --------------------------Add geomtery --------------------------------------


ggplot(data = movies , aes(x = CriticsRating , y = AudienceRating)) + geom_point()

# Add color
ggplot(data = movies , aes(x = CriticsRating , y = AudienceRating , color = Genre )) + geom_point()

# Add size 

ggplot(data = movies , aes(x = CriticsRating , y = AudienceRating , color = Genre , size = Genre)) + geom_point()


# Add size - better way 
ggplot(data = movies , aes(x = CriticsRating , y = AudienceRating , color = Genre , size = BudgetMillions)) + geom_point()

# ---- This #1 ( we will improve it )
# -------------------------------- Plotting and Layers -------------------------------------------------------------

P <- ggplot( data = movies , aes(x = CriticsRating , y = AudienceRating , color = Genre , size= BudgetMillions))  
# ------------- Points 

P + geom_point()


# ----------------Layers 
P + geom_line()

# Multiple Layers 

P + geom_line() + geom_point()
P + geom_point() + geom_line()


# -------------------------------   STatistics  ----------------------------------------


q <- ggplot( data = movies , aes( x = CriticsRating , y = AudienceRating , color = Genre , size = BudgetMillions ))

#add geom layer 
q + geom_point()

#Overtiging aes
q + geom_point( aes(size = CriticsRating ))

q + geom_point(aes(colour = BudgetMillions))

#ex3
q + geom_point(aes(x = BudgetMillions)) + xlab("Budget Millions $$$")

#
q + geom_line(size = 1)  + geom_point()


# ------------------------------ Mapping vs Settings ---------------------------------------------

r <- ggplot( data = movies , aes(x = CriticsRating , y = AudienceRating ))
r + geom_point()

# Add colour 
# 1. mapping ( What we've done so far)
r + geom_point(aes(color = Genre))

# 2. SEttings 
r + geom_point(color= "DarkGreen")

# 1. Mapping 
r + geom_point(aes(size=BudgetMillions))

# 2. settings 
r + geom_point(size = 10)




#------------ Histograms and Density Charts 

s <- ggplot(data= movies, aes(x = BudgetMillions)) 
s + geom_histogram(binwidth = 10)

# add color 
s + geom_histogram(bandwidth = 10 , aes(fill = Genre) )

# add a border 
s + geom_histogram(bandwidth = 10 , aes(fill= Genre) , colour = "Black")

# we will improve it 

s + geom_density(aes(fill=Genre))
s + geom_density(aes(fill=Genre ), position = "stack")
?geom_density()

# --------------------------- Starting Layer TIps

t <- ggplot(data = movies , aes(x = AudienceRating ))
t + geom_histogram(binwidth = 10 , fill = "white" , color= "Blue")

#another way : 

t <- ggplot(data = movies)
t + geom_histogram(binwidth = 10 , aes(x = AudienceRating) , fill = "White" , colour = "Blue")


#>>>>>> 5 th Charts 

t <- ggplot()



