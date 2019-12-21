
data <- read.csv("https://raw.githubusercontent.com/benubah/r-community-explorer/master/docs/data/rugs.csv")
head(data)
 
str(data)
myformat <- "%Y-%m-%d"
data$ncreated <- as.Date(data$created, myformat)
str(data)
head(data)
 
startdate <- as.Date("2019-07-01")
enddate <- as.Date("2019-09-30")
newdata <- data[data$ncreated >= startdate &   data$ncreated <= enddate, ]
head(newdata)
 
str(newdata)
getwd()
setwd(dir="E:/nimagnna9")
getwd()
dir()
   
write.csv(newdata ,"final.csv")
dir()
 
db1<-read.csv("final.csv")
 head(db1)
 

