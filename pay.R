options(java.parameters = "-Xmx4g" )
library(XLConnect)


#######################################loading all the performance data of each year#####################################################################
pay <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/10 year pay data.xlsx"),sheet=1)

summary(pay)
#Clean out all the useless category
pay2 <- pay[,-c(2, 3, 5, 8, 9,10, 11, 12, 13, 14, 16, 17, 26, 27, 28, 29, 30)]
summary(pay)
summary(pay2)

attach(pay2)



#######################################Delete all the year 2015#########################################################
pay2 <- pay2[!(pay2$Fiscal.Year == 2015),]
#######################################################################################################################

#Delete all the NA in Employee.Faculty.Staff.Student.Indicator
#pay2 <- pay2[!is.na(pay2$Employee.Faculty.Staff.Student.Indicator), ]
pay2 <- pay2[!(pay2$Employee.Faculty.Staff.Student.Indicator == "NA"),]

########################################delete the NA payment#############################################################
pay2 <- pay2[!is.na(pay2$Job.Hourly.Rate),]

#######################################################################################################################




#######################################Change all the categories into factor############################################################################
#pay2$ <- as.factor(pay2$)
pay2$Employees.On.Leave <- as.factor(pay2$Employees.On.Leave)
pay2$Rensselaer.Id.Number <- as.factor(pay2$Rensselaer.Id.Number)
pay2$Employee.Faculty.Staff.Student.Indicator <- as.factor(pay2$Employee.Faculty.Staff.Student.Indicator)
pay2$Current.Employee.Status <- as.factor(pay2$Current.Employee.Status)
#pay2$Employee.Eeo.Contract.Group.Code <- as.factor(pay2$Employee.Eeo.Contract.Group.Code)
pay2$Employee.Eeo.Contract.Group.Description <- as.factor(pay2$Employee.Eeo.Contract.Group.Description)
pay2$Employee.Exempt.Non.Exempt.Indicator <- as.factor(pay2$Employee.Exempt.Non.Exempt.Indicator)
pay2$Employee.Type <- as.factor(pay2$Employee.Type)
pay2$Employee.Regular.Fixed.Term.Temp.Indicator <- as.factor(pay2$Employee.Regular.Fixed.Term.Temp.Indicator)
pay2$Citizenship.Indicator <- as.factor(pay2$Citizenship.Indicator)
pay2$Employee.Full.Time.Part.Time.Indicator <- as.factor(pay2$Employee.Full.Time.Part.Time.Indicator)
pay2$Gender <- as.factor(pay2$Gender)
pay2$Ethnicity <- as.factor(pay2$Ethnicity)

summary(pay2)

####################################use pay3 as a test#################################################################

pay3 <- pay2

summary(pay3)



########################################calculate increase rate#####################################################
#The base of final information is the lastest status of employees###############################################
#Choose the lastest year for each employee
pay3.agg <- aggregate(Fiscal.Year ~ Rensselaer.Id.Number, pay3, max)
summary(pay3.agg)
pay3.max <- merge(pay3, pay3.agg, by = c("Fiscal.Year", "Rensselaer.Id.Number"))
summary(pay3.max)
#Choose the earliest year for each employee
pay3.agg2 <- aggregate(Fiscal.Year ~ Rensselaer.Id.Number, pay3, min)

pay3.agg3 <- pay3.agg2

colnames(pay3.agg2)[2] <- "Start.Year"

pay3.min <- merge(pay3, pay3.agg3, by = c("Fiscal.Year", "Rensselaer.Id.Number"))
summary(pay3.min)
pay3.min2 <- pay3.min[,c('Rensselaer.Id.Number','Annual.Pay')]

colnames(pay3.min2)[2] <- "Start.Annual.Pay"

pay3.all <- merge(pay3.max, pay3.agg2, by = c("Rensselaer.Id.Number"))



pay3.all$End.Year <- pay3.all$Fiscal.Year

pay3.all <- merge(pay3.all, pay3.min2, by = "Rensselaer.Id.Number")

pay3.all$End.Annual.Pay <- pay3.all$Annual.Pay
summary(pay3.all)   #First vision of pay3.all   record of 4339
############################################################################################################################


#####################################copy to a new pay3.all########################################################################
pay3.all2 <- pay3.all

pay3.all2$Increase.Annual.Pay <- (pay3.all2$End.Annual.Pay - pay3.all2$Start.Annual.Pay)#/(pay3.all2$End.Year - pay3.all2$Start.Year)
pay3.all2$Hired <- (pay3.all2$End.Year - pay3.all2$Start.Year)

pay3.all2$Total.Increase.Rate <- pay3.all2$Increase.Annual.Pay/pay3.all2$Start.Annual.Pay

pay3.all2$Annual.Increase.Rate <- pay3.all2$Total.Increase.Rate/(pay3.all2$End.Year - pay3.all2$Start.Year)
pay3.all2$Annual.Increase.Rate <- format(pay3.all2$Annual.Increase.Rate, digits = 3)
pay3.all2$Annual.Increase.Rate <- as.numeric(pay3.all2$Annual.Increase.Rate)


pay3.all2$Annual.Increase.Rate = ifelse(pay3.all2$Hired == 0, 0, pay3.all2$Annual.Increase.Rate)

summary(pay3.all2) ## record of 4339
#pay3.all3 is the dataset without only one year employees######
pay3.all3 <- pay3.all2[!(pay3.all2$Hired == 0),]



summary(pay3.all3)  #record of 3169
summary(as.factor(pay3.all3$Annual.Increase.Rate))
summary(pay3.all3$Annual.Increase.Rate)

#copy to a new pay3.all4 to avoid infinity
pay3.all4 <- pay3.all3

pay3.all4 <- pay3.all3[!is.infinite(pay3.all3$Annual.Increase.Rate),]
#pay3.all4 <- pay3.all4[is.infinite(pay3.all3$Annual.Increase.Rate),]
summary(pay3.all4)

#Average.Annual.Increase.Rate <- aggregate(Annual.Increase.Rate ~ Rensselaer.Id.Number, data = pay3.all3, FUN = mean)
Average.Annual.Increase.Rate <- mean(as.numeric(pay3.all4$Annual.Increase.Rate), na.rm = FALSE)
Average.Annual.Increase.Rate


#Create a category that store the delta Increase Rate
pay3.all4$Delta.Annual.Increase.Rate <- pay3.all4$Annual.Increase.Rate - Average.Annual.Increase.Rate
summary(pay3.all4)



#filter out the employees with more than 100 percent increase rate#####################################################
#pay3.high <- pay3.all4[(pay3.all4$Annual.Increase.Rate > .2),]
pay3.mid2 <- pay3.all4[(pay3.all4$Annual.Increase.Rate <= .2),]
summary(pay3.mid2)
pay3.mid <- pay3.mid2[(pay3.mid2$Annual.Increase.Rate >= -.2),]
summary(pay3.mid)
Average.Annual.Increase.Rate.mid <- mean(as.numeric(pay3.mid$Annual.Increase.Rate), na.rm = FALSE)
Average.Annual.Increase.Rate.mid
pay3.mid$Delta.Annual.Increase.Rate <- pay3.mid$Annual.Increase.Rate - Average.Annual.Increase.Rate.mid
summary(pay3.mid)  #### record of 2962
pay3.test <- pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= -.05),]
summary(pay3.test) #### record of 2850
2850/2962
#######################################################################################################################################









#######################################Summary of different category#########################################################
summary(as.factor(pay2$Employees.On.Leave))
summary(as.factor(pay$Chart.Of.Accounts.Description))
summary(as.factor(pay$Source.Dimension))
summary(as.factor(pay$Employee.Type))
summary(as.factor(pay$Employee.Regular.Fixed.Term.Temp.Indicator))
summary(as.factor(pay$Citizenship.Indicator))
summary(as.factor(pay$Employee.Full.Time.Part.Time.Indicator))
summary(as.factor(pay$Gender))
summary(as.factor(pay$Ethnicity))
summary(as.factor(pay$History...Full.Name))
#####################################################################################################################################

summary(pay2)

require(ggplot2)
qplot(Employee.Faculty.Staff.Student.Indicator, data=pay2, geom="histogram", fill=Citizenship.Indicator)


summary(pay3.all3)
######exploration of Annual.Increase.Rate###############################################################################################
######with Exempt or Non.Exempt#########################################################################################################
qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)
qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator, xlim = c(-.05, .2))

qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=Employees.On.Leave)
qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=Employees.On.Leave, xlim = c(-.3, .3))

qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)
qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator, xlim = c(-.3, .3))



qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=Current.Employee.Status)
qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=Current.Employee.Status, xlim = c(-.3, .3))

qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)
qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=Employee.Eeo.Contract.Group.Description, xlim = c(-.3, .3))

qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=Employee.Type)
qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=Employee.Type, xlim = c(-.3, .3))

qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=Employee.Regular.Fixed.Term.Temp.Indicator)
qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=Employee.Regular.Fixed.Term.Temp.Indicator, xlim = c(-.3, .3))

qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=Citizenship.Indicator)
qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=Citizenship.Indicator, xlim = c(-.3, .3))

qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)
qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator, xlim = c(-.3, .3))

qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=Gender)
qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=Gender, xlim = c(-.3, .3))


qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=Ethnicity)
qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=Ethnicity, xlim = c(-.3, .3))

qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=as.factor(Hours.Per.Day))
qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=as.factor(Hours.Per.Day), xlim = c(-.3, .3))

qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=as.factor(Pay.Factor))
qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=as.factor(Pay.Factor), xlim = c(-.3, .3))

qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=as.factor(Hours.Per.Pay.Period))
qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=as.factor(Hours.Per.Pay.Period), xlim = c(-.3, .3))

qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=as.factor(Pays.Per.Year))
qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=as.factor(Pays.Per.Year), xlim = c(-.3, .3))

qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=as.factor(Start.Year))
qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=as.factor(Start.Year), xlim = c(-.3, .3))

qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=as.factor(End.Year))
qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=as.factor(End.Year), xlim = c(-.3, .3))

qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=as.factor(Hired))
qplot(Annual.Increase.Rate, data=pay3.all3, geom="histogram", fill=as.factor(Hired), xlim = c(-.3, .3))

######################################################################################################################################

require(ggplot2)
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill = Employees.On.Leave)
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Employees.On.Leave, xlim = c(-.05, .2))

qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator, xlim = c(-.2, .2))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator, xlim = c(-.05, .2))

qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Current.Employee.Status)
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Current.Employee.Status, xlim = c(-.2, .2))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Current.Employee.Status, xlim = c(-.05, .2))

qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Employee.Eeo.Contract.Group.Description, xlim = c(-.2, .2))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Employee.Eeo.Contract.Group.Description, xlim = c(-.05, .2))

qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator, xlim = c(-.2, .2))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator, xlim = c(-.05, .2))

qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Employee.Type)
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Employee.Type, xlim = c(-.2, .2))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Employee.Type, xlim = c(-.05, .2))

qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Employee.Regular.Fixed.Term.Temp.Indicator)
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Employee.Regular.Fixed.Term.Temp.Indicator, xlim = c(-.3, .3))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Employee.Regular.Fixed.Term.Temp.Indicator, xlim = c(-.05, .2))

qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Citizenship.Indicator)
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Citizenship.Indicator, xlim = c(-.3, .3))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Citizenship.Indicator, xlim = c(-.05, .2))

qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator, xlim = c(-.3, .3))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator, xlim = c(-.05, .20))

qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Gender)
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Gender, xlim = c(-.05, .2))
#qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Gender, xlim = c(-.05, .1))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Gender, xlim = c(-.05, .2))
#qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Gender, xlim = c(-.04, .2))


qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Ethnicity)
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Ethnicity, xlim = c(-.3, .3))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Ethnicity, xlim = c(-.05, .2))
#qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=Ethnicity, xlim = c(-.04, .2))

qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Hours.Per.Day))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Hours.Per.Day), xlim = c(-.3, .3))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Hours.Per.Day), xlim = c(-.05, .2))

qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Hours.Per.Pay.Period))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Hours.Per.Pay.Period), xlim = c(-.3, .3))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Hours.Per.Pay.Period), xlim = c(-.05, .2))

qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Pay.Factor))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Pay.Factor), xlim = c(-.3, .3))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Pay.Factor), xlim = c(-.05, .2))

qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Pays.Per.Year))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Pays.Per.Year), xlim = c(-.3, .3))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Pays.Per.Year), xlim = c(-.05, .2))

qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Start.Year))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Start.Year), xlim = c(-.3, .3))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Start.Year), xlim = c(-.05, .2))

qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(End.Year))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(End.Year), xlim = c(-.3, .3))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(End.Year), xlim = c(-.05, .2))

qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Hired))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Hired), xlim = c(-.1, .2))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Hired), xlim = c(-.05, .2))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Hired), xlim = c(-.05, .2))

qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=)
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=, xlim = c(-.3, .3))
qplot(Delta.Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=, xlim = c(-.05, .2))

######################################################################################################################################
#########################################testing other method###############################################################################
pay3.mid.sca <- pay3.mid[, c(3:13, 15:16, 18:25)]
pay3.mid.sca2 <- pay3.mid[, c(10:13, 29)]
summary(pay3.mid.sca2)

#using scatterplots
#install.packages("car")
require(car)
scatterplotMatrix(pay3.mid.sca2)


#mE <- lm(Sick_Time ~ 0 + (ECLS) + Vac_Time)
#summary(mE)
#plot(resid(mE))


attach(pay3.mid)
mE <- lm(Delta.Annual.Increase.Rate ~ 0 + Gender)
summary(mE)
plot(resid(mE))

plot(pay3.mid$Gender, pay3.mid$Delta.Annual.Increase.Rate)
plot(pay3.mid$Employee.Regular.Fixed.Term.Temp.Indicator, pay3.mid$Delta.Annual.Increase.Rate)
plot(pay3.mid$Employee.Type, pay3.mid$Delta.Annual.Increase.Rate)
plot(pay3.mid$Delta.Annual.Increase.Rate, pay3.mid$Gender)
plot(pay3.mid$, pay3.mid$)
######################################################################################################################################


######################explore how much percent employee's Delta Increase Rate is higher than 0#######################################
#explore relationship between Delta.Annual.Increase.Rate################
summary(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),])
summary(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate < 0),])
summary(pay3.mid) # record of 3115

1146/2961   ####38.70%

#explore relation ship between Delta.Annual.Increase.Rate and Hired years############
summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Hired))
summary(as.factor(pay3.mid$Hired))
s1 <- summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Hired))
s2 <- summary(as.factor(pay3.mid$Hired))
s1/s2

#explore relation ship between Delta.Annual.Increase.Rate and Start years############
summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Start.Year))
summary(as.factor(pay3.mid$Start.Year))
s1 <- summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Start.Year))
s2 <- summary(as.factor(pay3.mid$Start.Year))
s1/s2

#explore relation ship between Delta.Annual.Increase.Rate and End years############
summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$End.Year))
summary(as.factor(pay3.mid$End.Year))
s1 <- summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$End.Year))
s2 <- summary(as.factor(pay3.mid$End.Year))
s1/s2

#explore relation ship between Delta.Annual.Increase.Rate and Employee.Faculty.Staff.Student.Indicator############
summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Employee.Faculty.Staff.Student.Indicator))
summary(as.factor(pay3.mid$Employee.Faculty.Staff.Student.Indicator))
s1 <- summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Employee.Faculty.Staff.Student.Indicator))
s2 <- summary(as.factor(pay3.mid$Employee.Faculty.Staff.Student.Indicator))
s1/s2

#explore relation ship between Delta.Annual.Increase.Rate and Current.Employee.Status############
summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Current.Employee.Status))
summary(as.factor(pay3.mid$Current.Employee.Status))
s1 <- summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Current.Employee.Status))
s2 <- summary(as.factor(pay3.mid$Current.Employee.Status))
s1/s2


#explore relation ship between Delta.Annual.Increase.Rate and Employee.Eeo.Contract.Group.Description############
summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Employee.Eeo.Contract.Group.Description))
summary(as.factor(pay3.mid$Employee.Eeo.Contract.Group.Description))
s1 <- summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Employee.Eeo.Contract.Group.Description))
s2 <- summary(as.factor(pay3.mid$Employee.Eeo.Contract.Group.Description))
s1/s2


#explore relation ship between Delta.Annual.Increase.Rate and Employee.Exempt.Non.Exempt.Indicator############
summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Employee.Exempt.Non.Exempt.Indicator))
summary(as.factor(pay3.mid$Employee.Exempt.Non.Exempt.Indicator))
s1 <- summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Employee.Exempt.Non.Exempt.Indicator))
s2 <- summary(as.factor(pay3.mid$Employee.Exempt.Non.Exempt.Indicator))
s1/s2


#explore relation ship between Delta.Annual.Increase.Rate and Employee.Type############
summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Employee.Type))
summary(as.factor(pay3.mid$Employee.Type))
s1 <- summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Employee.Type))
s2 <- summary(as.factor(pay3.mid$Employee.Type))
s1/s2


#explore relation ship between Delta.Annual.Increase.Rate and Employee.Regular.Fixed.Term.Temp.Indicator############
summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Employee.Regular.Fixed.Term.Temp.Indicator))
summary(as.factor(pay3.mid$Employee.Regular.Fixed.Term.Temp.Indicator))
s1 <- summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Employee.Regular.Fixed.Term.Temp.Indicator))
s2 <- summary(as.factor(pay3.mid$Employee.Regular.Fixed.Term.Temp.Indicator))
s1/s2


#explore relation ship between Delta.Annual.Increase.Rate and Citizenship.Indicator############
summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Citizenship.Indicator))
summary(as.factor(pay3.mid$Citizenship.Indicator))
s1 <- summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Citizenship.Indicator))
s2 <- summary(as.factor(pay3.mid$Citizenship.Indicator))
s1/s2

#explore relation ship between Delta.Annual.Increase.Rate and Employee.Full.Time.Part.Time.Indicator############
summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Employee.Full.Time.Part.Time.Indicator))
summary(as.factor(pay3.mid$Employee.Full.Time.Part.Time.Indicator))
s1 <- summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Employee.Full.Time.Part.Time.Indicator))
s2 <- summary(as.factor(pay3.mid$Employee.Full.Time.Part.Time.Indicator))
s1/s2

#explore relation ship between Delta.Annual.Increase.Rate and Gender############
summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Gender))
summary(as.factor(pay3.mid$Gender))
s1 <- summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Gender))
s2 <- summary(as.factor(pay3.mid$Gender))
s1/s2

#explore relation ship between Delta.Annual.Increase.Rate and Ethnicity############
summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Ethnicity))
summary(as.factor(pay3.mid$Ethnicity))
s1 <- summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Ethnicity))
s2 <- summary(as.factor(pay3.mid$Ethnicity))
s1/s2

#explore relation ship between Delta.Annual.Increase.Rate and Hours.Per.Day############
summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Hours.Per.Day))
summary(as.factor(pay3.mid$Hours.Per.Day))
s1 <- summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Hours.Per.Day))
s2 <- summary(as.factor(pay3.mid$Hours.Per.Day))
s1/s2

#explore relation ship between Delta.Annual.Increase.Rate and Pays.Per.Year############
summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Pays.Per.Year))
summary(as.factor(pay3.mid$Pays.Per.Year))
s1 <- summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Pays.Per.Year))
s2 <- summary(as.factor(pay3.mid$Pays.Per.Year))
s1/s2

#explore relation ship between Delta.Annual.Increase.Rate and ############
summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$))
summary(as.factor(pay3.mid$))
s1 <- summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$))
s2 <- summary(as.factor(pay3.mid$))
s1/s2


######################################################################################################################################



lb <- pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= -.05),] # record of 2942   94.45%
#lb <- pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= -.04),] # record of 2929   94.03%
#lb <- pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= -.03),] # record of 2644   84.88%
summary(lb)
#pay3.mid.mid <- lb[(lb$Delta.Annual.Increase.Rate < 0.3),]  #2886 records  92.65%
pay3.mid.mid <- lb[(lb$Delta.Annual.Increase.Rate < 0.2),]  #2856 records  91.69%
#pay3.mid.mid <- lb[(lb$Delta.Annual.Increase.Rate < 0.1),]  #2767 records  88.83%
summary(pay3.mid.mid) # record of 2856



###################################################################################################################
#######################calculate average delta increase rate for each category##############################################

attach(pay3.mid)
summary(pay3.mid)
pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Gender == "Male"),], mean)
summary(pay3.a)
pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Gender == "Female"),], mean)
summary(pay3.a)

pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Employee.Faculty.Staff.Student.Indicator == "Staff"),], mean)
summary(pay3.a)
pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Employee.Faculty.Staff.Student.Indicator == "Faculty"),], mean)
summary(pay3.a)


pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Current.Employee.Status == "Active"),], mean)
summary(pay3.a)
pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Current.Employee.Status == "Job Terminated"),], mean)
summary(pay3.a)


pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Employee.Eeo.Contract.Group.Description == "Other Full Time Employees"),], mean)
summary(pay3.a)
pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Employee.Eeo.Contract.Group.Description == "9-10 Month Full Time Faculty"),], mean)
summary(pay3.a)
pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Employee.Eeo.Contract.Group.Description == "11-12 Month Full Time Faculty"),], mean)
summary(pay3.a)
pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Employee.Eeo.Contract.Group.Description == "Part Time Employees"),], mean)
summary(pay3.a)
pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Employee.Eeo.Contract.Group.Description == "Unreported"),], mean)
summary(pay3.a)



pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Employee.Exempt.Non.Exempt.Indicator == "Exempt"),], mean)
summary(pay3.a)
pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Employee.Exempt.Non.Exempt.Indicator == "Non-Exempt"),], mean)
summary(pay3.a)



pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Employee.Regular.Fixed.Term.Temp.Indicator == "Regular"),], mean)
summary(pay3.a)
pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Employee.Regular.Fixed.Term.Temp.Indicator == "Temp"),], mean)
summary(pay3.a)
pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Employee.Regular.Fixed.Term.Temp.Indicator == "Fixed"),], mean)
summary(pay3.a)


pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Citizenship.Indicator == "Permanent Resident"),], mean)
summary(pay3.a)
pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Citizenship.Indicator == "Non-Citizen"),], mean)
summary(pay3.a)
pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Citizenship.Indicator == "US Citizen"),], mean)
summary(pay3.a)



pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Employee.Full.Time.Part.Time.Indicator == "Full Time"),], mean)
summary(pay3.a)
pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Employee.Full.Time.Part.Time.Indicator == "Part Time"),], mean)
summary(pay3.a)


pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Ethnicity == "White Non-Hispanic"),], mean)
summary(pay3.a)
pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Ethnicity == "American Indian/Alaskan Native"),], mean)
summary(pay3.a)
pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Ethnicity == "Asian or Pacific Islander"),], mean)
summary(pay3.a)
pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Ethnicity == "Hispanic"),], mean)
summary(pay3.a)
pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Ethnicity == "Black"),], mean)
summary(pay3.a)


attach(pay3.mid)
pay3.a1 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Start.Year == 2005),], mean)
summary(pay3.a1)
pay3.a2 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Start.Year == 2006),], mean)
summary(pay3.a2)
pay3.a3 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Start.Year == 2007),], mean)
summary(pay3.a3)
pay3.a4 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Start.Year == 2008),], mean)
summary(pay3.a4)
pay3.a5 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Start.Year == 2009),], mean)
summary(pay3.a5)
pay3.a6 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Start.Year == 2010),], mean)
summary(pay3.a6)
pay3.a7 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Start.Year == 2011),], mean)
summary(pay3.a7)
pay3.a8 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Start.Year == 2012),], mean)
summary(pay3.a8)
pay3.a9 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Start.Year == 2013),], mean)
summary(pay3.a9)


# Verify the linear regression of the trend ##############################
x <- c(2005:2013)
y <- c(mean(pay3.a1$Delta.Annual.Increase.Rate),
       mean(pay3.a2$Delta.Annual.Increase.Rate),
       mean(pay3.a3$Delta.Annual.Increase.Rate),
       mean(pay3.a4$Delta.Annual.Increase.Rate),
       mean(pay3.a5$Delta.Annual.Increase.Rate),
       mean(pay3.a6$Delta.Annual.Increase.Rate),
       mean(pay3.a7$Delta.Annual.Increase.Rate),
       mean(pay3.a8$Delta.Annual.Increase.Rate),
       mean(pay3.a9$Delta.Annual.Increase.Rate))

z <- data.frame(x,y)

fit <- lm(y ~ x, data = z)
summary(fit)
plot(x, y, data = z)

# Other useful functions 
coefficients(fit) # model coefficients
confint(fit, level=0.95) # CIs for model parameters 
fitted(fit) # predicted values
residuals(fit) # residuals
anova(fit) # anova table 
vcov(fit) # covariance matrix for model parameters 
influence(fit) # regression diagnostics

# diagnostic plots 
layout(matrix(c(1,2,3,4),2,2)) # optional 4 graphs/page 
plot(fit)


########################################################################



pay3.a1 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(End.Year == 2006),], mean)
summary(pay3.a1)
pay3.a2 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(End.Year == 2007),], mean)
summary(pay3.a2)
pay3.a3 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(End.Year == 2008),], mean)
summary(pay3.a3)
pay3.a4 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(End.Year == 2009),], mean)
summary(pay3.a4)
pay3.a5 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(End.Year == 2010),], mean)
summary(pay3.a5)
pay3.a6 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(End.Year == 2011),], mean)
summary(pay3.a6)
pay3.a7 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(End.Year == 2012),], mean)
summary(pay3.a7)
pay3.a8 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(End.Year == 2013),], mean)
summary(pay3.a8)
pay3.a9 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(End.Year == 2014),], mean)
summary(pay3.a9)


# Verify the linear regression of the trend ##############################
x <- c(2006:2014)
y <- c(mean(pay3.a1$Delta.Annual.Increase.Rate),
       mean(pay3.a2$Delta.Annual.Increase.Rate),
       mean(pay3.a3$Delta.Annual.Increase.Rate),
       mean(pay3.a4$Delta.Annual.Increase.Rate),
       mean(pay3.a5$Delta.Annual.Increase.Rate),
       mean(pay3.a6$Delta.Annual.Increase.Rate),
       mean(pay3.a7$Delta.Annual.Increase.Rate),
       mean(pay3.a8$Delta.Annual.Increase.Rate),
       mean(pay3.a9$Delta.Annual.Increase.Rate))

z <- data.frame(x,y)
z
fit <- lm(y ~ x, data = z)
summary(fit)
plot(x, y, data = z)

# Other useful functions 
coefficients(fit) # model coefficients
confint(fit, level=0.95) # CIs for model parameters 
fitted(fit) # predicted values
residuals(fit) # residuals
anova(fit) # anova table 
vcov(fit) # covariance matrix for model parameters 
influence(fit) # regression diagnostics

# diagnostic plots 
layout(matrix(c(1,2,3,4),2,2)) # optional 4 graphs/page 
plot(fit)


################################################################################



pay3.a1 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Hired == 1),], mean)
summary(pay3.a1)
pay3.a2 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Hired == 2),], mean)
summary(pay3.a2)
pay3.a3 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Hired == 3),], mean)
summary(pay3.a3)
pay3.a4 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Hired == 4),], mean)
summary(pay3.a4)
pay3.a5 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Hired == 5),], mean)
summary(pay3.a5)
pay3.a6 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Hired == 6),], mean)
summary(pay3.a6)
pay3.a7 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Hired == 7),], mean)
summary(pay3.a7)
pay3.a8 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Hired == 8),], mean)
summary(pay3.a8)
pay3.a9 <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[(Hired == 9),], mean)
summary(pay3.a9)




# Verify the linear regression of the trend ##############################
x <- c(1:9)
y <- c(mean(pay3.a1$Delta.Annual.Increase.Rate),
       mean(pay3.a2$Delta.Annual.Increase.Rate),
       mean(pay3.a3$Delta.Annual.Increase.Rate),
       mean(pay3.a4$Delta.Annual.Increase.Rate),
       mean(pay3.a5$Delta.Annual.Increase.Rate),
       mean(pay3.a6$Delta.Annual.Increase.Rate),
       mean(pay3.a7$Delta.Annual.Increase.Rate),
       mean(pay3.a8$Delta.Annual.Increase.Rate),
       mean(pay3.a9$Delta.Annual.Increase.Rate))



library(car)

z <- data.frame(x,y)
z
fit <- lm(y ~ x, data = z)
summary(fit)
plot(x, y, data = z)

outlierTest(fit) # Bonferonni p-value for most extreme obs
qqPlot(fit, main="QQ Plot") #qq plot for studentized resid 
leveragePlots(fit) # leverage plots

# Other useful functions 
coefficients(fit) # model coefficients
confint(fit, level=0.95) # CIs for model parameters 
fitted(fit) # predicted values
residuals(fit) # residuals
anova(fit) # anova table 
vcov(fit) # covariance matrix for model parameters 
influence(fit) # regression diagnostics

# diagnostic plots 
layout(matrix(c(1,2,3,4),2,2)) # optional 4 graphs/page 
plot(fit)


################################################################################





pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[( == ""),], mean)
summary(pay3.a)
pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[( == ""),], mean)
summary(pay3.a)


pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[( == ""),], mean)
summary(pay3.a)
pay3.a <- aggregate(Delta.Annual.Increase.Rate ~ Rensselaer.Id.Number, pay3.mid[( == ""),], mean)
summary(pay3.a)

################################################################################


#linear regression between Delta Annual Increase Rate and Hired###################################


fit <- lm(Delta.Annual.Increase.Rate ~ Hired, data = pay3.mid)
library(car)

summary(fit)
#plot(x, y, data = z)

outlierTest(fit) # Bonferonni p-value for most extreme obs
qqPlot(fit, main="QQ Plot") #qq plot for studentized resid 
leveragePlots(fit) # leverage plots

# Other useful functions 
coefficients(fit) # model coefficients
confint(fit, level=0.95) # CIs for model parameters 
fitted(fit) # predicted values
residuals(fit) # residuals
anova(fit) # anova table 
vcov(fit) # covariance matrix for model parameters 
influence(fit) # regression diagnostics

# diagnostic plots 
#layout(matrix(c(1,2,3,4),2,2)) # optional 4 graphs/page 
plot(fit)


################################################################################


#linear regression between Delta Annual Increase Rate and Start.Year###################################


fit <- lm(Delta.Annual.Increase.Rate ~ Start.Year, data = pay3.mid)
library(car)

summary(fit)
#plot(x, y, data = z)

outlierTest(fit) # Bonferonni p-value for most extreme obs
qqPlot(fit, main="QQ Plot") #qq plot for studentized resid 
leveragePlots(fit) # leverage plots

# Other useful functions 
coefficients(fit) # model coefficients
confint(fit, level=0.95) # CIs for model parameters 
fitted(fit) # predicted values
residuals(fit) # residuals
anova(fit) # anova table 
vcov(fit) # covariance matrix for model parameters 
influence(fit) # regression diagnostics

# diagnostic plots 
#layout(matrix(c(1,2,3,4),2,2)) # optional 4 graphs/page 
plot(fit)


################################################################################


#linear regression between Delta Annual Increase Rate and Employee.Regular.Fixed.Term.Temp.Indicator###################################


fit <- lm(Delta.Annual.Increase.Rate ~ Employee.Regular.Fixed.Term.Temp.Indicator, data = pay3.mid)
library(car)

summary(fit)
#plot(x, y, data = z)

outlierTest(fit) # Bonferonni p-value for most extreme obs
qqPlot(fit, main="QQ Plot") #qq plot for studentized resid 
leveragePlots(fit) # leverage plots

# Other useful functions 
coefficients(fit) # model coefficients
confint(fit, level=0.95) # CIs for model parameters 
fitted(fit) # predicted values
residuals(fit) # residuals
anova(fit) # anova table 
vcov(fit) # covariance matrix for model parameters 
influence(fit) # regression diagnostics

# diagnostic plots 
#layout(matrix(c(1,2,3,4),2,2)) # optional 4 graphs/page 
plot(fit)


################################################################################






library(car)
fit <- lm(Delta.Annual.Increase.Rate ~ Start.Year, data = pay3.mid)

summary(fit)
plot(Start.Year, Delta.Annual.Increase.Rate, data = pay3.mid)

outlierTest(fit) # Bonferonni p-value for most extreme obs
qqPlot(fit, main="QQ Plot") #qq plot for studentized resid 
leveragePlots(fit) # leverage plots

# Other useful functions 
coefficients(fit) # model coefficients
confint(fit, level=0.95) # CIs for model parameters 
fitted(fit) # predicted values
residuals(fit) # residuals
anova(fit) # anova table 
vcov(fit) # covariance matrix for model parameters 
influence(fit) # regression diagnostics

# diagnostic plots 
layout(matrix(c(1,2,3,4),2,2)) # optional 4 graphs/page 
plot(fit)


################################################################################



fit <- lm(Delta.Annual.Increase.Rate ~ End.Year, data = pay3.mid)
library(car)

summary(fit)
plot(End.Year, Delta.Annual.Increase.Rate, data = pay3.mid)

outlierTest(fit) # Bonferonni p-value for most extreme obs
qqPlot(fit, main="QQ Plot") #qq plot for studentized resid 
leveragePlots(fit) # leverage plots

# Other useful functions 
coefficients(fit) # model coefficients
confint(fit, level=0.95) # CIs for model parameters 
fitted(fit) # predicted values
residuals(fit) # residuals
anova(fit) # anova table 
vcov(fit) # covariance matrix for model parameters 
influence(fit) # regression diagnostics

# diagnostic plots 
layout(matrix(c(1,2,3,4),2,2)) # optional 4 graphs/page 
plot(fit)


################################################################################

library(car)
fit <- lm(Delta.Annual.Increase.Rate ~ Start.Annual.Pay, data = pay3.mid)

summary(fit)
plot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid)

outlierTest(fit) # Bonferonni p-value for most extreme obs
qqPlot(fit, main="QQ Plot") #qq plot for studentized resid 
leveragePlots(fit) # leverage plots

# Other useful functions 
coefficients(fit) # model coefficients
confint(fit, level=0.95) # CIs for model parameters 
fitted(fit) # predicted values
residuals(fit) # residuals
anova(fit) # anova table 
vcov(fit) # covariance matrix for model parameters 
influence(fit) # regression diagnostics

# diagnostic plots 
layout(matrix(c(1,2,3,4),2,2)) # optional 4 graphs/page 
plot(fit)


#########################################################################################################



qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid, colour = Current.Employee.Status)
qplot(End.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid, colour = Current.Employee.Status)


qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid, colour = Employee.Faculty.Staff.Student.Indicator)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid, colour = Current.Employee.Status)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid, colour = Employee.Eeo.Contract.Group.Description)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid, colour = Employee.Exempt.Non.Exempt.Indicator)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid, colour = Employee.Regular.Fixed.Term.Temp.Indicator)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid, colour = Citizenship.Indicator)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid, colour = Employee.Full.Time.Part.Time.Indicator)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid, colour = Gender)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid, colour = Ethnicity)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid, colour = )


#############################################################################################################################
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Active"),], colour = Current.Employee.Status)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Job Terminated"),], colour = Current.Employee.Status)

qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid, colour = Employee.Faculty.Staff.Student.Indicator)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Active"),], colour = Employee.Faculty.Staff.Student.Indicator)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Job Terminated"),], colour = Employee.Faculty.Staff.Student.Indicator)

qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Active"),], colour = Employee.Eeo.Contract.Group.Description)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Job Terminated"),], colour = Employee.Eeo.Contract.Group.Description)

qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Active"),], colour = Employee.Exempt.Non.Exempt.Indicator)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Job Terminated"),], colour = Employee.Exempt.Non.Exempt.Indicator)

qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Active"),], colour = Employee.Type)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Job Terminated"),], colour = Employee.Type)

qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Active"),], colour = Employee.Regular.Fixed.Term.Temp.Indicator)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Job Terminated"),], colour = Employee.Regular.Fixed.Term.Temp.Indicator)

qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Active"),], colour = Citizenship.Indicator)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Job Terminated"),], colour = Citizenship.Indicator)

qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Active"),], colour = Employee.Full.Time.Part.Time.Indicator)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Job Terminated"),], colour = Employee.Full.Time.Part.Time.Indicator)

qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Active"),], colour = Gender)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Job Terminated"),], colour = Gender)

qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Active"),], colour = Ethnicity)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Job Terminated"),], colour = Ethnicity)

qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Active"),], colour = Start.Year)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Job Terminated"),], colour = Start.Year)

qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Active"),], colour = End.Year)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Job Terminated"),], colour = End.Year)

qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Active"),], colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Job Terminated"),], colour = )

qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Active"),], colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Job Terminated"),], colour = )

qplot(Start.Annual.Pay, End.Annual.Pay, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Active"),], colour = Current.Employee.Status)
qplot(Start.Annual.Pay, End.Annual.Pay, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Job Terminated"),], colour = Current.Employee.Status)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Job Terminated"),], colour = )

qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Active"),], colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Job Terminated"),], colour = )

qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Active"),], colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Job Terminated"),], colour = )

#############################################################################################################################













##################Final Presentation###################



qplot(Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Employee.Full.Time.Part.Time.Indicator))+ 
  ggtitle("All Employees") +
  theme(text = element_text(size = 18, family="Impact"))  


qplot(Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Current.Employee.Status))+ 
  ggtitle("All Employees") +
  theme(text = element_text(size = 18, family="Impact"))  


qplot(Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Current.Employee.Status))+ 
  ggtitle("All Employees") +
  theme(text = element_text(size = 18, family="Impact"))  





#explore relation ship between Delta.Annual.Increase.Rate and Hired years############
summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Hired))
summary(as.factor(pay3.mid$Hired))
s1 <- summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Hired))
s2 <- summary(as.factor(pay3.mid$Hired))
s1/s2




plot(s1/s2, type = "l", col = "red", xlab = "Year of Service", ylab = "Percentage of employee with positive Delta Increase Rate", main = "All Employees")






#explore relation ship between Delta.Annual.Increase.Rate and Start years############
summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Start.Year))
summary(as.factor(pay3.mid$Start.Year))
s1 <- summary(as.factor(pay3.mid[(pay3.mid$Delta.Annual.Increase.Rate >= 0),]$Start.Year))
s2 <- summary(as.factor(pay3.mid$Start.Year))
s1/s2



plot(s1/s2, type = "l", col = "red", xlab = "Start Year (From Year 2005 to Year 2013)", ylab = "Percentage of employee with positive Delta Increase Rate", main = "All Employees")





qplot(Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Gender))+ 
  ggtitle("All Regular Employees") +
  theme(text = element_text(size = 18, family="Impact"))  


qplot(Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Employee.Exempt.Non.Exempt.Indicator))+ 
  ggtitle("All Regular Employees") +
  theme(text = element_text(size = 18, family="Impact"))  


qplot(Annual.Increase.Rate, data=pay3.mid, geom="histogram", fill=as.factor(Employee.Faculty.Staff.Student.Indicator))+ 
  ggtitle("All Regular Employees") +
  theme(text = element_text(size = 18, family="Impact"))  








