options(java.parameters = "-Xmx4g" )
library(XLConnect)
#load files



PerInfo01 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_PerInfo/PerInfo 01.31.2014.xlsx"),sheet=1)
PerInfo02 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_PerInfo/PerInfo 02.28.2014.xlsx"),sheet=1)
PerInfo03 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_PerInfo/PerInfo 03.31.2014.xlsx"),sheet=1)
PerInfo04 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_PerInfo/PerInfo 04.30.2014.xlsx"),sheet=1)
PerInfo05 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_PerInfo/PerInfo 05.31.2014.xlsx"),sheet=1)
PerInfo06 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_PerInfo/PerInfo 06.30.2014.xlsx"),sheet=1)
PerInfo07 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_PerInfo/PerInfo 07.31.2013.xlsx"),sheet=1)
PerInfo08 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_PerInfo/PerInfo 08.31.2013.xlsx"),sheet=1)
PerInfo09 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_PerInfo/PerInfo 09.30.2013.xlsx"),sheet=1)
PerInfo10 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_PerInfo/PerInfo 10.31.2013.xlsx"),sheet=1)
PerInfo11 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_PerInfo/PerInfo 11.30.2013.xlsx"),sheet=1)
PerInfo12 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_PerInfo/PerInfo 12.31.2013.xlsx"),sheet=1)


CBSfy <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_CBS/CBS FY14.xlsx"),sheet=1)
CBS01 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_CBS/CBS 01.2014.xlsx"),sheet=1)
CBS02 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_CBS/CBS 02.2014.xlsx"),sheet=1)
CBS03 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_CBS/CBS 03.2014.xlsx"),sheet=1)
CBS04 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_CBS/CBS 04.2014.xlsx"),sheet=1)
CBS05 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_CBS/CBS 05.2014.xlsx"),sheet=1)
CBS06 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_CBS/CBS 06.2014.xlsx"),sheet=1)
CBS07 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_CBS/CBS 07.2013.xlsx"),sheet=1)
CBS08 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_CBS/CBS 08.2013.xlsx"),sheet=1)
CBS09 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_CBS/CBS 09.2013.xlsx"),sheet=1)
CBS10 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_CBS/CBS 10.2013.xlsx"),sheet=1)
CBS11 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_CBS/CBS 11.2013.xlsx"),sheet=1)
CBS12 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_CBS/CBS 12.2013.xlsx"),sheet=1)

#change the column name of PerInfo which is SPRIDEN_ID into RIN
colnames(PerInfo01)[names(PerInfo01) == "SPRIDEN_ID"] <- "RIN"
colnames(PerInfo02)[names(PerInfo02) == "SPRIDEN_ID"] <- "RIN"
colnames(PerInfo03)[names(PerInfo03) == "SPRIDEN_ID"] <- "RIN"
colnames(PerInfo04)[names(PerInfo04) == "SPRIDEN_ID"] <- "RIN"
colnames(PerInfo05)[names(PerInfo05) == "SPRIDEN_ID"] <- "RIN"
colnames(PerInfo06)[names(PerInfo06) == "SPRIDEN_ID"] <- "RIN"
colnames(PerInfo07)[names(PerInfo07) == "SPRIDEN_ID"] <- "RIN"
colnames(PerInfo08)[names(PerInfo08) == "SPRIDEN_ID"] <- "RIN"
colnames(PerInfo09)[names(PerInfo09) == "SPRIDEN_ID"] <- "RIN"
colnames(PerInfo10)[names(PerInfo10) == "SPRIDEN_ID"] <- "RIN"
colnames(PerInfo11)[names(PerInfo11) == "SPRIDEN_ID"] <- "RIN"
colnames(PerInfo12)[names(PerInfo12) == "SPRIDEN_ID"] <- "RIN"



#colnames(CBS010)[1] <- "Rensselaer IN"
#CBS010["Vacation_Time"] <- NA
#CBS010$Vacation_Time <- CBS010$PTO_PAID - CBS010$PTO_BAL



sample <- CBS06
sample <- sample[order(-sample$RIN),]
#try$row.names <- NULL
sample$ADDR_2 <- NULL
sample$ADDR_3 <- NULL
sample$DOB <- as.numeric(format(as.Date(Sys.time()),format="%Y"))-as.numeric(format(as.Date(sample$DOB,format="%m/%d/%Y"),format="%Y")) 
colnames(sample)[names(sample) == "DOB"] <- "Age"
sample$DOH <- as.numeric(format(as.Date(Sys.time()),format="%Y"))-as.numeric(format(as.Date(sample$DOH,format="%m/%d/%Y"),format="%Y")) 
colnames(sample)[names(sample) == "DOH"] <- "Hired"
#try2 <- merge(CBS07, CBS06, by = c("RIN"), all = "T")
#try2 <- CBS07[, c("RIN", "DOB")]
#try3 <- CBS08[, c("RIN", "DOH")]
#try4 <- merge(try2, try3, by = c("RIN"))

samplefy <- merge(CBSfy, PerInfo06, by = ("RIN"))
sample01 <- merge(CBS01, PerInfo01, by = ("RIN"))
sample02 <- merge(CBS02, PerInfo02, by = ("RIN"))
sample03 <- merge(CBS03, PerInfo03, by = ("RIN"))
sample04 <- merge(CBS04, PerInfo04, by = ("RIN"))
sample05 <- merge(CBS05, PerInfo05, by = ("RIN"))
sample06 <- merge(CBS06, PerInfo06, by = ("RIN"))
sample07 <- merge(CBS07, PerInfo07, by = ("RIN"))
sample08 <- merge(CBS08, PerInfo08, by = ("RIN"))
sample09 <- merge(CBS09, PerInfo09, by = ("RIN"))
sample10 <- merge(CBS10, PerInfo10, by = ("RIN"))
sample11 <- merge(CBS11, PerInfo11, by = ("RIN"))
sample12 <- merge(CBS12, PerInfo12, by = ("RIN"))


getTime <- function(x){  
  #set up Vacation Time
  x$Vac_Time <- x$SCHED_PTO_TAKEN
  #set up Sick Time
  x$Sick_Time <- (x$UNSCHED_PTO_TAKEN + x$DISABILITY_TAKEN + x$RTO_TAKEN)
  #Set up age
  x$DOB <- as.numeric(format(as.Date(Sys.time()),format="%Y"))-as.numeric(format(as.Date(x$DOB,format="%m/%d/%Y"),format="%Y")) 
  colnames(x)[names(x) == "DOB"] <- "Age"
  #Set up Hired years
  x$DOH <- as.numeric(format(as.Date(Sys.time()),format="%Y"))-as.numeric(format(as.Date(x$DOH,format="%m/%d/%Y"),format="%Y")) 
  colnames(x)[names(x) == "DOH"] <- "Hired"
  #Select need rows such ECLS equals to EW, EY and so on
  #x <- x[(x$ECLS == "EX") ||(x$ECLS == "EZ")||(x$ECLS == "NX")||(x$ECLS == "NY")||(x$ECLS == "NZ")]
  x <- x[!(x$ECLS == "EW"),]
  x <- x[!(x$ECLS == "EY"),]
  x <- x[!(x$ECLS == "FW"),]
  x <- x[!(x$ECLS == "FY"),]
  x <- x[!(x$ECLS == "FZ"),]
  x <- x[!(x$ECLS == "EY"),]
  x <- x[!(x$ECLS == "NW"),]
  x <- x[!is.na(x$ECLS),]
  return(x)
}

#class(sample01$UNSHED_PTO_TAKEN)

samplefy <- getTime(samplefy)
sample01 <- getTime(sample01)
sample02 <- getTime(sample02)
sample03 <- getTime(sample03)
sample04 <- getTime(sample04)
sample05 <- getTime(sample05)
sample06 <- getTime(sample06)
sample07 <- getTime(sample07)
sample08 <- getTime(sample08)
sample09 <- getTime(sample09)
sample10 <- getTime(sample10)
sample11 <- getTime(sample11)
sample12 <- getTime(sample12)
head(sample01)




sample <- sample06

addTime <- function(x){
  #x <- x[, c("RIN", "NBRJOBS_DESC", "Vac_Time", "Sick_Time")]
  x <- x[, c("RIN", "Vac_Time", "Sick_Time")]
  #y <- merge(x, sample, by = c("RIN", "NBRJOBS_DESC"), all = TRUE)
  y <- merge(x, sample, by = c("RIN"))
  return(y) 
}


adjusted <- addTime(samplefy)
colnames(adjusted)[(names(adjusted)) == "Vac_Time"] <- "Vac_Timefy"
colnames(adjusted)[(names(adjusted)) == "Sick_Time"] <- "Sick_Timefy"


sample <- addTime(sample01)
colnames(sample)[(names(sample)) == "Vac_Time.x"] <- "Vac_Time01"
colnames(sample)[(names(sample)) == "Sick_Time.x"] <- "Sick_Time01"
#x <- x[!is.na(x$ECLS),]
sample <- sample[!is.na(sample$ECLS),]
#sample <- sample[!is.na(sample$)]

sample <- addTime(sample02)
colnames(sample)[(names(sample)) == "Vac_Time"] <- "Vac_Time02"
colnames(sample)[(names(sample)) == "Sick_Time"] <- "Sick_Time02"
sample <- addTime(sample03)
colnames(sample)[(names(sample)) == "Vac_Time"] <- "Vac_Time03"
colnames(sample)[(names(sample)) == "Sick_Time"] <- "Sick_Time03"
sample <- addTime(sample04)
colnames(sample)[(names(sample)) == "Vac_Time"] <- "Vac_Time04"
colnames(sample)[(names(sample)) == "Sick_Time"] <- "Sick_Time04"
sample <- addTime(sample05)
colnames(sample)[(names(sample)) == "Vac_Time"] <- "Vac_Time05"
colnames(sample)[(names(sample)) == "Sick_Time"] <- "Sick_Time05"
sample <- addTime(sample06)
colnames(sample)[(names(sample)) == "Vac_Time"] <- "Vac_Time06"
colnames(sample)[(names(sample)) == "Sick_Time"] <- "Sick_Time06"
sample <- addTime(sample07)
colnames(sample)[(names(sample)) == "Vac_Time"] <- "Vac_Time07"
colnames(sample)[(names(sample)) == "Sick_Time"] <- "Sick_Time07"
sample <- addTime(sample08)
colnames(sample)[(names(sample)) == "Vac_Time"] <- "Vac_Time08"
colnames(sample)[(names(sample)) == "Sick_Time"] <- "Sick_Time08"
sample <- addTime(sample09)
colnames(sample)[(names(sample)) == "Vac_Time"] <- "Vac_Time09"
colnames(sample)[(names(sample)) == "Sick_Time"] <- "Sick_Time09"
sample <- addTime(sample10)
colnames(sample)[(names(sample)) == "Vac_Time"] <- "Vac_Time10"
colnames(sample)[(names(sample)) == "Sick_Time"] <- "Sick_Time10"
sample <- addTime(sample11)
colnames(sample)[(names(sample)) == "Vac_Time"] <- "Vac_Time11"
colnames(sample)[(names(sample)) == "Sick_Time"] <- "Sick_Time11"
sample <- addTime(sample12)
colnames(sample)[(names(sample)) == "Vac_Time"] <- "Vac_Time12"
colnames(sample)[(names(sample)) == "Sick_Time"] <- "Sick_Time12"



#filter out all the "Adjunct Faculty"
for (i in 1:3458){
  if(sample$NBRJOBS_DESC[i] == "Adjunct" || sample$NBRJOBS_DESC[i] == "Adjunct Faculty"){
    sample <- sample[-i,]    
  }
}

write.csv(sample, file = "MyData.csv")
write.csv(adjusted, file = "MyData.csv")
head(temp01)

adjusted <- read.csv("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_CBS/MyData.csv")



#try2 <- try2[order(-try2$RIN),]
#try$row.names <- NULL
#try2$ADDR_2 <- NULL
#try2$ADDR_3 <- NULL
#try2$DOB.x <- as.numeric(format(as.Date(Sys.time()),format="%Y"))-as.numeric(format(as.Date(try2$DOB.x,format="%m/%d/%Y"),format="%Y")) 
#colnames(try2)[(names(try2)) == "DOB.x"] <- "Age"
#try2$DOH.x <- as.numeric(format(as.Date(Sys.time()),format="%Y"))-as.numeric(format(as.Date(try2$DOH.x,format="%m/%d/%Y"),format="%Y")) 
#colnames(try2)[names(try2) == "DOH.x"] <- "Hired"
#try3 <- merge(CBS07, try2, by = c("RIN"))
#try3 <- merge(PerInfo12, try2, by = c("RIN"))


