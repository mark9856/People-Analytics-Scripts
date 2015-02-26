training14 <- read.csv(file="/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Training_Data/tc_report_FY14.csv", header=TRUE, sep=",")
training13 <- read.csv(file="/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Training_Data/tc_report_FY13.csv", header=TRUE, sep=",")
training12 <- read.csv(file="/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Training_Data/tc_report_FY12.csv", header=TRUE, sep=",")
training11 <- read.csv(file="/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Training_Data/tc_report_FY11.csv", header=TRUE, sep=",")
training10 <- read.csv(file="/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Training_Data/tc_report_FY10.csv", header=TRUE, sep=",")
training09 <- read.csv(file="/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Training_Data/tc_report_FY09.csv", header=TRUE, sep=",")


#Only select the columns needed
getData <- function(x){
  x <- x[, c('RIN', 'Course', 'Class.Start.Date', 'Class.End.Date', 'Status','Group', 'Total.Time')]
  return(x)
}

train_fy_14 <- getData(training14)
train_fy_13 <- getData(training13)
train_fy_12 <- getData(training12)
train_fy_11 <- getData(training11)
train_fy_10 <- getData(training10)
train_fy_09 <- getData(training09)



str(train_fy_14)

#Change into Time format
setTime <- function(x){
  x$Class.Start.Date <- strptime( paste(x[,3]), "%m/%d/%Y %H:%M")
  x$Class.End.Date <- strptime( paste(x[,4]), "%m/%d/%Y %H:%M")
  return(x)
}

train_fy_14 <- setTime(train_fy_14)
train_fy_13 <- setTime(train_fy_13)
train_fy_12 <- setTime(train_fy_12)
train_fy_11 <- setTime(train_fy_11)
train_fy_10 <- setTime(train_fy_10)
train_fy_09 <- setTime(train_fy_09)




#Calculate total training hours
totalTime <- function(x){
  x$Total.Time <- (as.numeric(difftime(x$Class.End.Date, x$Class.Start.Date)))
  return(x)
}

totalTime2 <- function(x){
  x$Total.Time <- (as.numeric(difftime(x$Class.End.Date, x$Class.Start.Date)))/3600
  return(x)
}

train_fy_14 <- totalTime2(train_fy_14)
train_fy_13 <- totalTime(train_fy_13)
train_fy_12 <- totalTime2(train_fy_12)
train_fy_11 <- totalTime(train_fy_11)
train_fy_10 <- totalTime(train_fy_10)
train_fy_09 <- totalTime(train_fy_09)




#Delete NA record
deleteNA <- function(x){
  x <- x[!is.na(x$RIN),]
  return(x)
}
train_fy_14 <- deleteNA(train_fy_14)
train_fy_13 <- deleteNA(train_fy_13)
train_fy_12 <- deleteNA(train_fy_12)
train_fy_11 <- deleteNA(train_fy_11)
train_fy_10 <- deleteNA(train_fy_10)
train_fy_09 <- deleteNA(train_fy_09)




summary(train_fy_14)
summary(train_fy_13)
summary(train_fy_12)
summary(train_fy_11)
summary(train_fy_10)
summary(train_fy_09)


merg <- function(x, y){
  z <- (merge(x, y, by = c("RIN"), all = T))
  z <- z[!is.na(z$Course),]
  #z <- z[!is.na(z$Performance.Rating),]
  return(z)
}

train_per_13 <- merg(train_fy_13, perf13)

train_per_13t <- merg(train_fy_13, perf13)

train_per_13test <- merg(train_fy_13, CBSfy)
train_per_13test2 <- merg(train_fy_13, PerInfo12)
