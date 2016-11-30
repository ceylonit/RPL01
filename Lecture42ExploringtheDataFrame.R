stats <- read.csv(file.choose())

#Exploring Data
stats

#number of rows 
nrow(stats)
#Number of Columns 
ncol(stats)
# Column Name 
colnames(stats)

# Top 6 rows 
head(stats , n = 10)
?head

# Bottom rows 
tail(stats )

# Structure 
str(stats) #str() - strucutre  #runif() -  runiforam 
#summary 
summary(stats)

