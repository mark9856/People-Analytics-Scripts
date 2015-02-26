options(java.parameters = "-Xmx4g" )
library(XLConnect)


#######################################loading part of CBS data of each year#####################################################################
CBSfy05 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/CBS/CBS FY05.xlsx"),sheet=1)
CBSfy06 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/CBS/CBS FY06.xlsx"),sheet=1)
CBSfy07 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/CBS/CBS FY07.xlsx"),sheet=1)



#######################################select 23 charactors from overall 73 charactors############################
CBS_FY05 <- CBSfy05[,c("RIN","ADDR_1", "CITY", "ST", "ZIP", "CT", "DOB", "DOH", "ACT_PAY", "ECLS", "MED_CV", "JOB.TITLE",
                      "TS_ORG", "TS_ORG_TITLE", "HOL_PAID", "PTO_BAL", "PTO_PAID", "RTO_BAL", "RTO_PAID", "SCHED_PTO_TAKEN", 
                      "UNSCHED_PTO_TAKEN", "RTO_TAKEN", "DISABILITY_TAKEN", "DISABILITY.PAID")]

CBS_FY06 <- CBSfy06[,c("RIN","ADDR_1", "CITY", "ST", "ZIP", "CT", "DOB", "DOH", "ACT_PAY", "ECLS", "MED_CV", "JOB.TITLE",
                       "TS_ORG", "TS_ORG_TITLE", "HOL_PAID", "PTO_BAL", "PTO_PAID", "RTO_BAL", "RTO_PAID", "SCHED_PTO_TAKEN", 
                       "UNSCHED_PTO_TAKEN", "RTO_TAKEN", "DISABILITY_TAKEN", "DISABILITY.PAID")]


CBS_FY07 <- CBSfy07[,c("RIN","ADDR_1", "CITY", "ST", "ZIP", "CT", "DOB", "DOH", "ACT_PAY", "ECLS", "MED_CV", "JOB.TITLE",
                       "TS_ORG", "TS_ORG_TITLE", "HOL_PAID", "PTO_BAL", "PTO_PAID", "RTO_BAL", "RTO_PAID", "SCHED_PTO_TAKEN", 
                       "UNSCHED_PTO_TAKEN", "RTO_TAKEN", "DISABILITY_TAKEN", "DISABILITY.PAID")]


CBS_FY08 <- CBSfy08[,c("RIN","ADDR_1", "CITY", "ST", "ZIP", "CT", "DOB", "DOH", "ACT_PAY", "ECLS", "MED_CV", "JOB.TITLE",
                       "TS_ORG", "TS_ORG_TITLE", "HOL_PAID", "PTO_BAL", "PTO_PAID", "RTO_BAL", "RTO_PAID", "SCHED_PTO_TAKEN", 
                       "UNSCHED_PTO_TAKEN", "RTO_TAKEN", "DISABILITY_TAKEN", "DISABILITY.PAID")]

CBS_FY09 <- CBSfy09[,c("RIN","ADDR_1", "CITY", "ST", "ZIP", "CT", "DOB", "DOH", "ACT_PAY", "ECLS", "MED_CV", "JOB.TITLE",
                       "TS_ORG", "TS_ORG_TITLE", "HOL_PAID", "PTO_BAL", "PTO_PAID", "RTO_BAL", "RTO_PAID", "SCHED_PTO_TAKEN", 
                       "UNSCHED_PTO_TAKEN", "RTO_TAKEN", "DISABILITY_TAKEN", "DISABILITY.PAID")]

CBS_FY10 <- CBSfy10[,c("RIN","ADDR_1", "CITY", "ST", "ZIP", "CT", "DOB", "DOH", "ACT_PAY", "ECLS", "MED_CV", "JOB.TITLE",
                       "TS_ORG", "TS_ORG_TITLE", "HOL_PAID", "PTO_BAL", "PTO_PAID", "RTO_BAL", "RTO_PAID", "SCHED_PTO_TAKEN", 
                       "UNSCHED_PTO_TAKEN", "RTO_TAKEN", "DISABILITY_TAKEN", "DISABILITY.PAID")]


CBS_FY11 <- CBSfy11[,c("RIN","ADDR_1", "CITY", "ST", "ZIP", "CT", "DOB", "DOH", "ACT_PAY", "ECLS", "MED_CV", "JOB.TITLE",
                       "TS_ORG", "TS_ORG_TITLE", "HOL_PAID", "PTO_BAL", "PTO_PAID", "RTO_BAL", "RTO_PAID", "SCHED_PTO_TAKEN", 
                       "UNSCHED_PTO_TAKEN", "RTO_TAKEN", "DISABILITY_TAKEN", "DISABILITY.PAID")]

CBS_FY12 <- CBSfy12[,c("RIN","ADDR_1", "CITY", "ST", "ZIP", "CT", "DOB", "DOH", "ACT_PAY", "ECLS", "MED_CV", "JOB.TITLE",
                       "TS_ORG", "TS_ORG_TITLE", "HOL_PAID", "PTO_BAL", "PTO_PAID", "RTO_BAL", "RTO_PAID", "SCHED_PTO_TAKEN", 
                       "UNSCHED_PTO_TAKEN", "RTO_TAKEN", "DISABILITY_TAKEN", "DISABILITY.PAID")]

CBS_FY13 <- CBSfy13[,c("RIN","ADDR_1", "CITY", "ST", "ZIP", "CT", "DOB", "DOH", "ACT_PAY", "ECLS", "MED_CV", "JOB.TITLE",
                       "TS_ORG", "TS_ORG_TITLE", "HOL_PAID", "PTO_BAL", "PTO_PAID", "RTO_BAL", "RTO_PAID", "SCHED_PTO_TAKEN", 
                       "UNSCHED_PTO_TAKEN", "RTO_TAKEN", "DISABILITY_TAKEN", "DISABILITY.PAID")]

CBS_FY14 <- CBSfy14[,c("RIN","ADDR_1", "CITY", "ST", "ZIP", "CT", "DOB", "DOH", "ACT_PAY", "ECLS", "MED_CV", "JOB.TITLE",
                       "TS_ORG", "TS_ORG_TITLE", "HOL_PAID", "PTO_BAL", "PTO_PAID", "RTO_BAL", "RTO_PAID", "SCHED_PTO_TAKEN", 
                       "UNSCHED_PTO_TAKEN", "RTO_TAKEN", "DISABILITY_TAKEN", "DISABILITY.PAID")]



################################################################################################################################################

#########add year for each CBS#####
CBS_FY14$YEAR <- 2014
CBS_FY13$YEAR <- 2013
CBS_FY12$YEAR <- 2012
CBS_FY11$YEAR <- 2011
CBS_FY10$YEAR <- 2010
CBS_FY09$YEAR <- 2009
CBS_FY08$YEAR <- 2008
CBS_FY07$YEAR <- 2007
CBS_FY06$YEAR <- 2006
CBS_FY05$YEAR <- 2005

############generate a CBS_total include each year CBS###########

CBS_total <- rbind(CBS_FY05, CBS_FY06)
CBS_total <- rbind(CBS_total, CBS_FY07)
CBS_total <- rbind(CBS_total, CBS_FY08)
CBS_total <- rbind(CBS_total, CBS_FY09)
CBS_total <- rbind(CBS_total, CBS_FY10)
CBS_total <- rbind(CBS_total, CBS_FY11)
CBS_total <- rbind(CBS_total, CBS_FY12)
CBS_total <- rbind(CBS_total, CBS_FY13)
CBS_total <- rbind(CBS_total, CBS_FY14)


summary(CBS_total)

CBS_T <- CBS_total
summary(as.factor(CBS_T$ECLS))

#############compare to 10 year pay data, create a table containing all the employee data################

CBS_agg <- aggregate(YEAR ~ RIN, CBS_T, max)
summary(CBS_agg)
CBS_max <- merge(CBS_T, CBS_agg, by = c("YEAR", "RIN"))
summary(CBS_max)
summary(as.factor(CBS_max$ECLS))

CBS_agg2 <- aggregate(YEAR ~ RIN, CBS_T, min)
CBS_agg3 <- CBS_agg2
colnames(CBS_agg2)[2] <- "Start.Year"


CBS_min <- merge(CBS_T, CBS_agg3, by = c("YEAR", "RIN"))
summary(CBS_min)
summary(as.factor(CBS_min$ECLS))



CBS_Total <- merge(CBS_max, CBS_agg2, by = c("RIN"))
summary(CBS_Total)

CBS_Total$End.Year <- CBS_Total$YEAR

####################################################################################################################

cbs.t <- CBS_Total
cbs.t$RIN <- as.factor(cbs.t$RIN)
summary(cbs.t)

cbs.t$YOB <- as.numeric(format(as.Date(cbs.t$DOB,format="%m/%d/%Y"),format="%Y"))
cbs.t$YOH <- as.numeric(format(as.Date(cbs.t$DOH,format="%m/%d/%Y"),format="%Y"))

cbs.t <- cbs.t[,c("RIN", "ADDR_1", "CITY", "ST", "ZIP", "CT", "ECLS", "MED_CV", "JOB.TITLE", "TS_ORG_TITLE", "Start.Year", "End.Year", "YOB", "YOH")]



cbs.test <- aggregate(HOL_PAID ~ RIN, data = CBS_total, sum)
colnames(cbs.test)[2] <- "HOL_PAID_T"
cbs.t <- merge(cbs.t, cbs.test, by = c("RIN"))


cbs.test <- aggregate(PTO_BAL ~ RIN, data = CBS_total, sum)
colnames(cbs.test)[2] <- "PTO_BAL_T"
cbs.t <- merge(cbs.t, cbs.test, by = c("RIN"))


cbs.test <- aggregate(PTO_PAID ~ RIN, data = CBS_total, sum)
colnames(cbs.test)[2] <- "PTO_PAID_T"
cbs.t <- merge(cbs.t, cbs.test, by = c("RIN"))


cbs.test <- aggregate(RTO_BAL ~ RIN, data = CBS_total, sum)
colnames(cbs.test)[2] <- "RTO_BAL_T"
cbs.t <- merge(cbs.t, cbs.test, by = c("RIN"))



cbs.test <- aggregate(RTO_PAID ~ RIN, data = CBS_total, sum)
colnames(cbs.test)[2] <- "RTO_PAID_T"
cbs.t <- merge(cbs.t, cbs.test, by = c("RIN"))



cbs.test <- aggregate(SCHED_PTO_TAKEN ~ RIN, data = CBS_total, sum)
colnames(cbs.test)[2] <- "SCHED_PTO_TAKEN_T"
cbs.t <- merge(cbs.t, cbs.test, by = c("RIN"))



cbs.test <- aggregate(UNSCHED_PTO_TAKEN ~ RIN, data = CBS_total, sum)
colnames(cbs.test)[2] <- "UNSCHED_PTO_TAKEN_T"
cbs.t <- merge(cbs.t, cbs.test, by = c("RIN"))


cbs.test <- aggregate(RTO_TAKEN ~ RIN, data = CBS_total, sum)
colnames(cbs.test)[2] <- "RTO_TAKEN_T"
cbs.t <- merge(cbs.t, cbs.test, by = c("RIN"))


cbs.test <- aggregate(DISABILITY_TAKEN ~ RIN, data = CBS_total, sum)
colnames(cbs.test)[2] <- "DISABILITY_TAKEN_T"
cbs.t <- merge(cbs.t, cbs.test, by = c("RIN"))


cbs.test <- aggregate(DISABILITY.PAID ~ RIN, data = CBS_total, sum)
colnames(cbs.test)[2] <- "DISABILITY.PAID_T"
cbs.t <- merge(cbs.t, cbs.test, by = c("RIN"))

####################################################################

cbs.t1 <- cbs.t
cbs.t1$HOL_PAID_A <- cbs.t1$HOL_PAID_T/(cbs.t1$End.Year - cbs.t1$Start.Year + 1)
cbs.t1$PTO_BAL_A <- cbs.t1$PTO_BAL_T/(cbs.t1$End.Year - cbs.t1$Start.Year + 1)
cbs.t1$PTO_PAID_A <- cbs.t1$PTO_PAID_T/(cbs.t1$End.Year - cbs.t1$Start.Year + 1)
cbs.t1$RTO_BAL_A <- cbs.t1$RTO_BAL_T/(cbs.t1$End.Year - cbs.t1$Start.Year + 1)
cbs.t1$RTO_PAID_A <- cbs.t1$RTO_PAID_T/(cbs.t1$End.Year - cbs.t1$Start.Year + 1)
cbs.t1$SCHED_PTO_TAKEN_A <- cbs.t1$SCHED_PTO_TAKEN_T/(cbs.t1$End.Year - cbs.t1$Start.Year + 1)
cbs.t1$UNSCHED_PTO_TAKEN_A <- cbs.t1$UNSCHED_PTO_TAKEN_T/(cbs.t1$End.Year - cbs.t1$Start.Year + 1)
cbs.t1$RTO_TAKEN_A <- cbs.t1$RTO_TAKEN_T/(cbs.t1$End.Year - cbs.t1$Start.Year + 1)
cbs.t1$DISABILITY_TAKEN_A <- cbs.t1$DISABILITY_TAKEN_T/(cbs.t1$End.Year - cbs.t1$Start.Year + 1)
cbs.t1$DISABILITY.PAID_A <- cbs.t1$DISABILITY.PAID_T/(cbs.t1$End.Year - cbs.t1$Start.Year + 1)

cbs.t2 <- cbs.t1[,c("RIN", "ADDR_1", "CITY", "ST", "ZIP", "CT", "ECLS", "MED_CV", "JOB.TITLE", "TS_ORG_TITLE", "Start.Year", "End.Year", "YOB","YOH", 
                    "HOL_PAID_A", "PTO_BAL_A", "PTO_PAID_A", "RTO_BAL_A", "RTO_PAID_A", "SCHED_PTO_TAKEN_A", "UNSCHED_PTO_TAKEN_A",
                    "RTO_TAKEN_A", "DISABILITY_TAKEN_A", "DISABILITY.PAID_A")]

cbs.t2$CITY <- as.factor(cbs.t2$CITY)
cbs.t2$ADDR_1 <- as.factor(cbs.t2$ADDR_1)
cbs.t2$ST <- as.factor(cbs.t2$ST)
cbs.t2$ZIP <- as.factor(cbs.t2$ZIP)
cbs.t2$CT <- as.factor(cbs.t2$CT)
cbs.t2$ECLS <- as.factor(cbs.t2$ECLS)
cbs.t2$MED_CV <- as.factor(cbs.t2$MED_CV)
cbs.t2$JOB.TITLE <- as.factor(cbs.t2$JOB.TITLE)
cbs.t2$TS_ORG_TITLE <- as.factor(cbs.t2$TS_ORG_TITLE)





###############################################################################################




cbs.pay.leave <- merge(pay3.leave, cbs.t2, by.x = "Rensselaer.Id.Number", by.y = "RIN" )
cbs.pay.regular <- merge(pay3.regular, cbs.t2, by.x = "Rensselaer.Id.Number", by.y = "RIN" )
cbs.pay.active.regular <- merge(pay3.active.regular, cbs.t2, by.x = "Rensselaer.Id.Number", by.y = "RIN" )
cbs.pay.leave.regular <- merge(pay3.leave.regular, cbs.t2, by.x = "Rensselaer.Id.Number", by.y = "RIN" )


cbs.pay.fixed <- merge(pay3.fixed, cbs.t2, by.x = "Rensselaer.Id.Number", by.y = "RIN" )
cbs.pay.active.fixed <- merge(pay3.active.fixed, cbs.t2, by.x = "Rensselaer.Id.Number", by.y = "RIN" )
cbs.pay.leave.fixed <- merge(pay3.leave.fixed, cbs.t2, by.x = "Rensselaer.Id.Number", by.y = "RIN" )




####################################################################################################

summary(cbs.pay.leave)
summary(cbs.pay.leave)









p <- ggplot(cbs.pay.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=YOH))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=YOB))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=HOL_PAID_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=PTO_BAL_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=PTO_PAID_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=RTO_BAL_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=RTO_PAID_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=SCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=UNSCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=RTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=DISABILITY_TAKEN_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=DISABILITY.PAID_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



##########################################################################################################################



p <- ggplot(cbs.pay.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=YOH))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=YOB))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=HOL_PAID_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=PTO_BAL_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=PTO_PAID_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=RTO_BAL_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=RTO_PAID_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=SCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=UNSCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=RTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=DISABILITY_TAKEN_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=DISABILITY.PAID_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


##########################################################################################################################



p <- ggplot(cbs.pay.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=YOH))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=YOB))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=HOL_PAID_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=PTO_BAL_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=PTO_PAID_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=RTO_BAL_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=RTO_PAID_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=SCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=UNSCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=RTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=DISABILITY_TAKEN_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=DISABILITY.PAID_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))




##########################################################################################################################



p <- ggplot(cbs.pay.regular, aes(x=Gender, y=YOH))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.regular, aes(x=Gender, y=YOB))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.regular, aes(x=Gender, y=HOL_PAID_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.regular, aes(x=Gender, y=PTO_BAL_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Gender, y=PTO_PAID_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Gender, y=RTO_BAL_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Gender, y=RTO_PAID_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Gender, y=SCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Gender, y=UNSCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.regular, aes(x=Gender, y=RTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.regular, aes(x=Gender, y=DISABILITY_TAKEN_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.regular, aes(x=Gender, y=DISABILITY.PAID_A))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))





##########################################################################################################################



#####for dataset of cbs.pay.leave.regular######





p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=YOH))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=YOB))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=HOL_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=PTO_BAL_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=PTO_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=RTO_BAL_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=RTO_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=SCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=UNSCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=RTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=DISABILITY_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=DISABILITY.PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))



##########################################################################################################################



p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=YOH))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=YOB))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=HOL_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=PTO_BAL_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=PTO_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=RTO_BAL_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=RTO_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=SCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=UNSCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=RTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=DISABILITY_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=DISABILITY.PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


##########################################################################################################################



p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=YOH))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=YOB))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=HOL_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=PTO_BAL_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=PTO_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=RTO_BAL_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=RTO_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=SCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=UNSCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=RTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=DISABILITY_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.leave.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=DISABILITY.PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))




##########################################################################################################################



p <- ggplot(cbs.pay.leave.regular, aes(x=Gender, y=YOH))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.leave.regular, aes(x=Gender, y=YOB))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.leave.regular, aes(x=Gender, y=HOL_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.leave.regular, aes(x=Gender, y=PTO_BAL_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Gender, y=PTO_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Gender, y=RTO_BAL_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Gender, y=RTO_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Gender, y=SCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Gender, y=UNSCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.leave.regular, aes(x=Gender, y=RTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.leave.regular, aes(x=Gender, y=DISABILITY_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.leave.regular, aes(x=Gender, y=DISABILITY.PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))





##########################################################################################################################






#####for dataset of cbs.pay.active.regular######





p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=YOH))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=YOB))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=HOL_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=PTO_BAL_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=PTO_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=RTO_BAL_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=RTO_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=SCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=UNSCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=RTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=DISABILITY_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=DISABILITY.PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))



##########################################################################################################################



p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=YOH))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=YOB))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=HOL_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=PTO_BAL_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=PTO_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=RTO_BAL_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=RTO_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=SCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=UNSCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=RTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

summary(cbs.pay.active.regular)

p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=DISABILITY_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=DISABILITY.PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


##########################################################################################################################



p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=YOH))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=YOB))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=HOL_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=PTO_BAL_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=PTO_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=RTO_BAL_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=RTO_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=SCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=UNSCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=RTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=DISABILITY_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.active.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=DISABILITY.PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))




##########################################################################################################################



p <- ggplot(cbs.pay.active.regular, aes(x=Gender, y=YOH))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.active.regular, aes(x=Gender, y=YOB))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.active.regular, aes(x=Gender, y=HOL_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.active.regular, aes(x=Gender, y=PTO_BAL_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Gender, y=PTO_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Gender, y=RTO_BAL_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Gender, y=RTO_PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Gender, y=SCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Gender, y=UNSCHED_PTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(cbs.pay.active.regular, aes(x=Gender, y=RTO_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(cbs.pay.active.regular, aes(x=Gender, y=DISABILITY_TAKEN_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(cbs.pay.active.regular, aes(x=Gender, y=DISABILITY.PAID_A))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))





##########################################################################################################################
























require(data.table)

summary(cbs.pay.regular)
cbs.pay.regular1 <- cbs.pay.regular[!like(cbs.pay.regular$Current.Employee.Status, "Leave"),]
summary(cbs.pay.regular1)


######################density#########################


require(ggplot2)


##analysis the year of service relationship with Current Employee Status###########################################
qplot(YOH, data=cbs.pay.regular1, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



qplot(YOB, data=cbs.pay.regular1, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



qplot(HOL_PAID_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(PTO_BAL_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(PTO_PAID_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(RTO_BAL_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(RTO_PAID_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(SCHED_PTO_TAKEN_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(UNSCHED_PTO_TAKEN_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(RTO_TAKEN_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(DISABILITY_TAKEN_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(DISABILITY.PAID_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))




#################################################################################




##analysis the year of service relationship with Current Employee Status###########################################
qplot(YOH, data=cbs.pay.regular1, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



qplot(YOB, data=cbs.pay.regular1, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



qplot(HOL_PAID_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(PTO_BAL_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(PTO_PAID_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(RTO_BAL_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(RTO_PAID_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(SCHED_PTO_TAKEN_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(UNSCHED_PTO_TAKEN_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(RTO_TAKEN_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(DISABILITY_TAKEN_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(DISABILITY.PAID_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))




#################################################################################







##analysis the year of service relationship with Current Employee Status###########################################
qplot(YOH, data=cbs.pay.regular1, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



qplot(YOB, data=cbs.pay.regular1, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



qplot(HOL_PAID_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(PTO_BAL_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(PTO_PAID_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(RTO_BAL_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(RTO_PAID_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(SCHED_PTO_TAKEN_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(UNSCHED_PTO_TAKEN_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(RTO_TAKEN_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(DISABILITY_TAKEN_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(DISABILITY.PAID_A, data=cbs.pay.regular1, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))




#################################################################################





##analysis the year of service relationship with Current Employee Status###########################################
qplot(YOH, data=cbs.pay.regular1, geom="histogram", fill=Gender)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



qplot(YOB, data=cbs.pay.regular1, geom="histogram", fill=Gender)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



qplot(HOL_PAID_A, data=cbs.pay.regular1, geom="histogram", fill=Gender)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(PTO_BAL_A, data=cbs.pay.regular1, geom="histogram", fill=Gender)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(PTO_PAID_A, data=cbs.pay.regular1, geom="histogram", fill=Gender)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(RTO_BAL_A, data=cbs.pay.regular1, geom="histogram", fill=Gender)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(RTO_PAID_A, data=cbs.pay.regular1, geom="histogram", fill=Gender)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(SCHED_PTO_TAKEN_A, data=cbs.pay.regular1, geom="histogram", fill=Gender)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(UNSCHED_PTO_TAKEN_A, data=cbs.pay.regular1, geom="histogram", fill=Gender)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(RTO_TAKEN_A, data=cbs.pay.regular1, geom="histogram", fill=Gender)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(DISABILITY_TAKEN_A, data=cbs.pay.regular1, geom="histogram", fill=Gender)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(DISABILITY.PAID_A, data=cbs.pay.regular1, geom="histogram", fill=Gender)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))




#################################################################################




pay3_regular_rate <- pay3.regular.rate
pay3_regular_rate$Count <- 1

cbs_pay_regular <- cbs.pay.regular
cbs_pay_regular$Count <- 1

str(pay3_regular_rate$YOB)
str(cbs_pay_regular$YOB)




s1 <- summary(as.factor(cbs_pay_regular[(cbs_pay_regular$YOB <= 1970 & cbs_pay_regular$Current.Employee.Status == "Job Terminated" & cbs_pay_regular$Employee.Faculty.Staff.Student.Indicator == "Staff"),]$Count))
s2 <- summary(as.factor(cbs_pay_regular[(cbs_pay_regular$YOB <= 1970 & cbs_pay_regular$Employee.Faculty.Staff.Student.Indicator == "Staff"),] $Count))
summary(as.factor(cbs_pay_regular[(cbs_pay_regular$YOB <= 1970 & cbs_pay_regular$Current.Employee.Status == "Job Terminated" & cbs_pay_regular$Employee.Faculty.Staff.Student.Indicator == "Staff"),]$Count))
summary(as.factor(cbs_pay_regular[(cbs_pay_regular$YOB <= 1970 & cbs_pay_regular$Employee.Faculty.Staff.Student.Indicator == "Staff"),] $Count))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")


s1 <- summary(as.factor(cbs_pay_regular[(cbs_pay_regular$YOB <= 1970 & cbs_pay_regular$Current.Employee.Status == "Job Terminated" ),]$Count))
s2 <- summary(as.factor(cbs_pay_regular[(cbs_pay_regular$YOB <= 1970 ),] $Count))
summary(as.factor(cbs_pay_regular[(cbs_pay_regular$YOB <= 1970 & cbs_pay_regular$Current.Employee.Status == "Job Terminated" ),]$Count))
summary(as.factor(cbs_pay_regular[(cbs_pay_regular$YOB <= 1970 ),] $Count))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")





s1 <- summary(as.factor(cbs_pay_regular[(cbs_pay_regular$YOB > 1970 & cbs_pay_regular$Current.Employee.Status == "Job Terminated" ),]$Count))
s2 <- summary(as.factor(cbs_pay_regular[(cbs_pay_regular$YOB > 1970 ),] $Count))
summary(as.factor(cbs_pay_regular[(cbs_pay_regular$YOB > 1970 & cbs_pay_regular$Current.Employee.Status == "Job Terminated" ),]$Count))
summary(as.factor(cbs_pay_regular[(cbs_pay_regular$YOB > 1970 ),] $Count))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")



s1 <- summary(as.factor(cbs_pay_regular[(cbs_pay_regular$YOB > 1970 & cbs_pay_regular$Current.Employee.Status == "Job Terminated" & cbs_pay_regular$Employee.Faculty.Staff.Student.Indicator == "Staff"),]$Count))
s2 <- summary(as.factor(cbs_pay_regular[(cbs_pay_regular$YOB > 1970 & cbs_pay_regular$Employee.Faculty.Staff.Student.Indicator == "Staff"),] $Count))
summary(as.factor(cbs_pay_regular[(cbs_pay_regular$YOB > 1970 & cbs_pay_regular$Current.Employee.Status == "Job Terminated" & cbs_pay_regular$Employee.Faculty.Staff.Student.Indicator == "Staff"),]$Count))
summary(as.factor(cbs_pay_regular[(cbs_pay_regular$YOB > 1970 & cbs_pay_regular$Employee.Faculty.Staff.Student.Indicator == "Staff"),] $Count))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")




#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(cbs_pay_regular[(cbs_pay_regular$Current.Employee.Status == "Job Terminated"),]$RTO_BAL))
s2 <- summary(as.factor(cbs_pay_regular$RTO_BAL))
summary(as.factor(cbs_pay_regular[(cbs_pay_regular$Current.Employee.Status == "Job Terminated"),]$RTO_BAL))
summary(as.factor(cbs_pay_regular$RTO_BAL))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")















summary(cbs_pay_regular[(cbs_pay_regular$Current.Employee.Status == "Job Terminated" & cbs_pay_regular$Employee.Faculty.Staff.Student.Indicator == "Staff"),]$RTO_BAL)
summary(cbs_pay_regular[(cbs_pay_regular$Current.Employee.Status == "Active" & cbs_pay_regular$Employee.Faculty.Staff.Student.Indicator == "Staff"),]$RTO_BAL)





summary(cbs_pay_regular[(cbs_pay_regular$Current.Employee.Status == "Job Terminated" & cbs_pay_regular$Employee.Faculty.Staff.Student.Indicator == "Staff"),]$SCHED_PTO_TAKEN)
summary(cbs_pay_regular[(cbs_pay_regular$Current.Employee.Status == "Active" & cbs_pay_regular$Employee.Faculty.Staff.Student.Indicator == "Staff"),]$SCHED_PTO_TAKEN)



summary(cbs_pay_regular[(cbs_pay_regular$Current.Employee.Status == "Job Terminated" ),]$PTO_BAL)
summary(cbs_pay_regular[(cbs_pay_regular$Current.Employee.Status == "Active" ),]$PTO_BAL)
















qplot(YOB, data=cbs_pay_regular[(cbs_pay_regular$Employee.Faculty.Staff.Student.Indicator == "Staff"),], geom="histogram", fill=as.factor(Current.Employee.Status), xlab = 'YOB')+ 
  ggtitle("All Employees") +
  theme(text = element_text(size = 18, family="Impact"))  


qplot(RTO_BAL_A, data=cbs_pay_regular[(cbs_pay_regular$Employee.Faculty.Staff.Student.Indicator == "Staff"),], geom="histogram", fill=as.factor(Current.Employee.Status), xlab = 'RTO_BAL')+ 
  ggtitle("All Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(SCHED_PTO_TAKEN_A, data=cbs_pay_regular[(cbs_pay_regular$Employee.Faculty.Staff.Student.Indicator == "Staff"),], geom="histogram", fill=as.factor(Current.Employee.Status))+ 
  ggtitle("All Employees") +
  theme(text = element_text(size = 18, family="Impact"))  



qplot(PTO_BAL_A, data=cbs_pay_regular[(cbs_pay_regular$Employee.Faculty.Staff.Student.Indicator == "Staff"),], geom="histogram", fill=as.factor(Current.Employee.Status))+ 
  ggtitle("All Employees") +
  theme(text = element_text(size = 18, family="Impact"))  


qplot(UNSCHED_PTO_TAKEN_A, data=cbs_pay_regular[(cbs_pay_regular$Employee.Faculty.Staff.Student.Indicator == "Staff"),], geom="histogram", fill=as.factor(Current.Employee.Status))+ 
  ggtitle("All Employees") +
  theme(text = element_text(size = 18, family="Impact"))  
  


qplot(as.factor(RTO_BAL), data=cbs_pay_regular[(cbs_pay_regular$Employee.Faculty.Staff.Student.Indicator == "Staff"),], geom="histogram", fill=as.factor(Current.Employee.Status), xlab = 'RTO_BAL')+ 
  ggtitle("All Employees") +
  theme(text = element_text(size = 18, family="Impact"))  



qplot(RTO_BAL, data=cbs_pay_regular, geom="histogram",  xlab = 'Computer Technology Courses')+ 
  ggtitle("All Employees") +
  theme(text = element_text(size = 18, family="Impact"))  


str(cbs_pay_regular$RTO_BAL)
summary(cbs_pay_regular)

summary(cbs_pay_regular$RTO_BAL)




table(as.factor(cbs_pay_regular$))