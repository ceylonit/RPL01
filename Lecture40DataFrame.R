?read.csv()

#method 1: Selection the File manually 
stat <- read.csv(file.choose())
stat

# Method 2: SEt the working directory and Read Data 
getwd()
# Windows 
setwd("c:\\Users\\data\\")
# Mac 
set("/User/data/")
getwd()
rm(stat)
stat <- read.csv("stat.csv")
