options(java.parameters = "-Xmx4g" )
library(XLConnect)
#load files


WorkClaim <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/RPI work comp claim-edited.xlsx"),sheet=1)
head(WorkClaim)
str(WorkClaim)

attach(WorkClaim)
WorkClaim$Product <- as.factor(Product)
WorkClaim$Claimant.SSN <- as.factor(Claimant.SSN)
WorkClaim$Claimant.Occupation <- as.factor(Claimant.Occupation)
WorkClaim$Claim.Number <- as.factor(Claim.Number)
WorkClaim$Claimant.Length.Employed <- as.factor(Claimant.Length.Employed)
WorkClaim$Claim.Description <- as.factor(Claim.Description)
WorkClaim$Accident.State <- as.factor(Accident.State)
WorkClaim$MO.Other <- as.factor(MO.Other)
WorkClaim$Status <- as.factor(Status)


WorkClaim2 <- WorkClaim[!is.na(WorkClaim$Claimant.Birth.Date),]
#WorkClaim


WorkClaim2$Age <- as.numeric(format(as.Date(WorkClaim2$Accident.Date,format="%Y-%m-%d"),format="%Y"))-
  as.numeric(format(as.Date(WorkClaim2$Claimant.Birth.Date,format="%m/%d/%Y"),format="%Y")) 


WorkClaim2$Happened <- as.numeric(format(as.Date(WorkClaim2$Accident.Date,format="%m/%d/%Y"),format="%Y")) 

str(WorkClaim2)


attach(WorkClaim2)
summary(WorkClaim2)
summary(Age)
summary(Status)
summary(Claimant.Occupation)
summary(Claim.Description)
summary(Accident.State)
summary(MO.Other)
summary(Claimant.SSN)
summary(Claimant.Length.Employed)
summary(as.factor(Length))
summary(Wages.paid)
summary(Wages.incurred)
summary(Medical.Paid)
summary(Medical.Incurred)
summary(Expense.Paid)
summary(Expense.Incurred)
summary(Total.Paid)
summary(Total.Incurred)
summary(Cumulative.Claim.Service.Fee)


summary(as.factor(WorkClaim2$Occupations))
summary(as.factor(WorkClaim5$Occupations))





require(ggplot2)
qplot(jitter(Age), Descriptions, data = WorkClaim5, colour = Status)
qplot(jitter(Happened), Descriptions, data = WorkClaim2, colour = Status)

ggplot(WorkClaim2, aes(Age)) + geom_freqpoly(aes(group = Status, colour = Status))
ggplot(WorkClaim2, aes(Happened)) + geom_freqpoly(aes(group = Status, colour = Status))


qplot(Age, data=WorkClaim2, geom="histogram", fill=MO.Other)
qplot(Age, data=WorkClaim2, geom="histogram", fill=Descriptions)
qplot(Happened, data=WorkClaim2, geom="histogram", fill=MO.Other)
qplot(WorkClaim2$Description, data=WorkClaim2, geom="histogram", fill=MO.Other)
qplot(Happened, data=WorkClaim2, geom="histogram", fill=Status)
qplot(Claimant.Occupation, data=WorkClaim2, geom="histogram", fill=Status)
####grouping different occupation and filter out little count occupation###########################
qplot(Occupations, data=WorkClaim2, geom="histogram", fill=Status)
qplot(Occupations, data=WorkClaim4, geom="histogram", fill=Status)
qplot(Occupations, data=WorkClaim5, geom="histogram", fill=Status)
###################################################################################################
qplot(Claim.Description, data=WorkClaim2, geom="histogram", fill=Status)
qplot(Descriptions, data=WorkClaim2, geom="histogram", fill=Status)
qplot(Happened, data=WorkClaim2, geom="histogram", fill=Descriptions)




################################################################################
#deal with occupations
WorkClaim2$Occupations = WorkClaim2$Claimant.Occupation
WorkClaim2$Occupations = as.character(WorkClaim2$Occupations)
str(WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("ENV", WorkClaim2$Occupations) == TRUE, "ENVIROMENTAL", WorkClaim2$Occupations)

summary(as.factor(WorkClaim2$Occupations))
WorkClaim2$Occupations = ifelse(grepl("CLERICAL", WorkClaim2$Claimant.Occupation) == TRUE, "CLERIAL", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("CLEAN", WorkClaim2$Claimant.Occupation) == TRUE, "CLEANER", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("ADMIN", WorkClaim2$Claimant.Occupation) == TRUE, "ADMIN", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("DRIVER", WorkClaim2$Claimant.Occupation) == TRUE, "DRIVER", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("GROUND", WorkClaim2$Claimant.Occupation) == TRUE, "GROUND", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("PROFESSOR", WorkClaim2$Claimant.Occupation) == TRUE, "PROFESSOR", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("SAF", WorkClaim2$Claimant.Occupation) == TRUE, "SAFE", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("ACCESS", WorkClaim2$Claimant.Occupation) == TRUE, "ACCESS", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("OPERATIONS", WorkClaim2$Claimant.Occupation) == TRUE, "OPERATIONS", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("OFFICER", WorkClaim2$Claimant.Occupation) == TRUE, "OFFICER", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("STUDENT", WorkClaim2$Claimant.Occupation) == TRUE, "STUDENT", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("TECH", WorkClaim2$Claimant.Occupation) == TRUE, "TECH", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("ASSISTANT", WorkClaim2$Claimant.Occupation) == TRUE, "ASSISTANT", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("ASST", WorkClaim2$Claimant.Occupation) == TRUE, "ASSISTANT", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("ASSIST", WorkClaim2$Claimant.Occupation) == TRUE, "ASSISTANT", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("ASSOC", WorkClaim2$Claimant.Occupation) == TRUE, "ASSOC", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("PUBLIC", WorkClaim2$Claimant.Occupation) == TRUE, "PUBLIC", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("COLLEGE", WorkClaim2$Claimant.Occupation) == TRUE, "COLLEGE", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("BOILER", WorkClaim2$Claimant.Occupation) == TRUE, "BOILER", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("ADM", WorkClaim2$Claimant.Occupation) == TRUE, "ADMINISTRATOR", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("PLUMBER", WorkClaim2$Claimant.Occupation) == TRUE, "PLUMBER", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("APP", WorkClaim2$Claimant.Occupation) == TRUE, "APPLICATIONS", WorkClaim2$Occupations)


WorkClaim2$Occupations = ifelse(grepl("RESEARCH", WorkClaim2$Claimant.Occupation) == TRUE, "RESEARCH", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("ENGINEER", WorkClaim2$Claimant.Occupation) == TRUE, "ENGINEER", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("HOUSEKEEP", WorkClaim2$Claimant.Occupation) == TRUE, "HOUSEKEEPER", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("MGR", WorkClaim2$Claimant.Occupation) == TRUE, "MANAGER", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("MANAGER", WorkClaim2$Claimant.Occupation) == TRUE, "MANAGER", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("COORDINATOR", WorkClaim2$Claimant.Occupation) == TRUE, "COORDINATOR", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("REPAIR", WorkClaim2$Claimant.Occupation) == TRUE, "REPAIRER", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("CLERK", WorkClaim2$Claimant.Occupation) == TRUE, "CLERK", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("DEP", WorkClaim2$Claimant.Occupation) == TRUE, "DEPT", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("DIR", WorkClaim2$Claimant.Occupation) == TRUE, "DIRECTOR", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("SPECIAL", WorkClaim2$Claimant.Occupation) == TRUE, "SPECIALIST", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("COMPUTER", WorkClaim2$Claimant.Occupation) == TRUE, "COMPUTER", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("EXECUTIVE", WorkClaim2$Claimant.Occupation) == TRUE, "EXECUTIVE", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("EXTERMINA", WorkClaim2$Claimant.Occupation) == TRUE, "EXTERMINATOR", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("FACILIT", WorkClaim2$Claimant.Occupation) == TRUE, "FACILITY", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("ATHL", WorkClaim2$Claimant.Occupation) == TRUE, "ATHLETIC", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("PIPE", WorkClaim2$Claimant.Occupation) == TRUE, "PIPE", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("CARPENTER", WorkClaim2$Claimant.Occupation) == TRUE, "CARPENTER", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl(" ESS", WorkClaim2$Claimant.Occupation) == TRUE, "ESS", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("ESS ", WorkClaim2$Claimant.Occupation) == TRUE, "ESS", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("FACULTY", WorkClaim2$Claimant.Occupation) == TRUE, "FACULTY", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("MECHAN", WorkClaim2$Claimant.Occupation) == TRUE, "MECHAN", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("FINANC", WorkClaim2$Claimant.Occupation) == TRUE, "FINANCE", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("JANITOR", WorkClaim2$Claimant.Occupation) == TRUE, "JANITOR", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("LAB", WorkClaim2$Claimant.Occupation) == TRUE, "LAB", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("HOUSE KEEPER", WorkClaim2$Claimant.Occupation) == TRUE, "HOUSEKEEP", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("OPERAT", WorkClaim2$Claimant.Occupation) == TRUE, "OPERATION", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("BSS", WorkClaim2$Claimant.Occupation) == TRUE, "BSS", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("SERVICE", WorkClaim2$Claimant.Occupation) == TRUE, "SERVICE", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("CAMPUS", WorkClaim2$Claimant.Occupation) == TRUE, "CAMPUS", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("BIOLOG", WorkClaim2$Claimant.Occupation) == TRUE, "BIOLOGY", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("DEAN", WorkClaim2$Claimant.Occupation) == TRUE, "DEAN", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("CHEMI", WorkClaim2$Claimant.Occupation) == TRUE, "CHEMI", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("ELEC", WorkClaim2$Claimant.Occupation) == TRUE, "ELECT", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("MAINT", WorkClaim2$Claimant.Occupation) == TRUE, "MAINT", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("MECH", WorkClaim2$Claimant.Occupation) == TRUE, "MECHANIC", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("OPERA", WorkClaim2$Claimant.Occupation) == TRUE, "OPERATION", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("PAINTER", WorkClaim2$Claimant.Occupation) == TRUE, "PAINTER", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("MACH", WorkClaim2$Claimant.Occupation) == TRUE, "MACH", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("INTERN", WorkClaim2$Claimant.Occupation) == TRUE, "INTERN", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("LEAD", WorkClaim2$Claimant.Occupation) == TRUE, "LEAD", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("ES&S", WorkClaim2$Claimant.Occupation) == TRUE, "ESS", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("SVC", WorkClaim2$Claimant.Occupation) == TRUE, "SVC", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("MANGER", WorkClaim2$Claimant.Occupation) == TRUE, "MANAGER", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("SERGEANT", WorkClaim2$Claimant.Occupation) == TRUE, "SERGEANT", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("PROGRAM", WorkClaim2$Claimant.Occupation) == TRUE, "PROGRAM", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("COOR", WorkClaim2$Claimant.Occupation) == TRUE, "COORDINATOR", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("PROPERTY", WorkClaim2$Claimant.Occupation) == TRUE, "PROPERTY", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("PLUMBAR", WorkClaim2$Claimant.Occupation) == TRUE, "PLUMBER", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("PSO", WorkClaim2$Claimant.Occupation) == TRUE, "PSO", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("PURCHAS", WorkClaim2$Claimant.Occupation) == TRUE, "PURCHASING", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("PROFESSIONA", WorkClaim2$Claimant.Occupation) == TRUE, "PROFESSIONA", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("PHYS", WorkClaim2$Claimant.Occupation) == TRUE, "PHYSICAL", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("MAIL", WorkClaim2$Claimant.Occupation) == TRUE, "MAIL", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("ROOFER", WorkClaim2$Claimant.Occupation) == TRUE, "ROOFER", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("WELDER", WorkClaim2$Claimant.Occupation) == TRUE, "WELDER", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("REPAIR", WorkClaim2$Claimant.Occupation) == TRUE, "REPAIR", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("ENG", WorkClaim2$Claimant.Occupation) == TRUE, "ENGINEER", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("E S", WorkClaim2$Claimant.Occupation) == TRUE, "ESS", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("ES & S", WorkClaim2$Claimant.Occupation) == TRUE, "ESS", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("ENROLL", WorkClaim2$Claimant.Occupation) == TRUE, "ENROLL", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("SUPERV", WorkClaim2$Claimant.Occupation) == TRUE, "SUPERVISOR", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("RESEARC", WorkClaim2$Claimant.Occupation) == TRUE, "RESEARCHER", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("EVIROMENTAL", WorkClaim2$Claimant.Occupation) == TRUE, "ENVIROMENTAL", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("DIST", WorkClaim2$Claimant.Occupation) == TRUE, "DIST.", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("OFF", WorkClaim2$Claimant.Occupation) == TRUE, "OFFICER", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("STOCK KEEP", WorkClaim2$Claimant.Occupation) == TRUE, "STOCK KEEPER", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("MANAG", WorkClaim2$Claimant.Occupation) == TRUE, "MANAGER", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("LIB", WorkClaim2$Claimant.Occupation) == TRUE, "LIBRARY", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("EDUCATOR", WorkClaim2$Claimant.Occupation) == TRUE, "EDUCATOR", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("SENIOR", WorkClaim2$Claimant.Occupation) == TRUE, "SENIOR", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("SECRET", WorkClaim2$Claimant.Occupation) == TRUE, "SECRETARY", WorkClaim2$Occupations)
WorkClaim2$Occupations = ifelse(grepl("HOUSEKEEP", WorkClaim2$Claimant.Occupation) == TRUE, "HOUSEKEEPER", WorkClaim2$Occupations)













summary(as.factor(WorkClaim2$Occupations))
################################################################################





################################################################################
#deal with Descriptions
WorkClaim2$Descriptions = WorkClaim2$Claim.Description
str(WorkClaim2$Descriptions)
summary(as.factor(WorkClaim2$Claim.Description))
summary(as.factor(WorkClaim2$Descriptions))
WorkClaim2$Descriptions = as.character(WorkClaim2$Descriptions)
WorkClaim2$Descriptions = ifelse(grepl("CAUGHT IN", WorkClaim2$Descriptions) == TRUE, "CAUGHT IN", WorkClaim2$Descriptions)
WorkClaim2$Descriptions = ifelse(grepl("CONTACT", WorkClaim2$Descriptions) == TRUE, "CONTACT", WorkClaim2$Descriptions)
WorkClaim2$Descriptions = ifelse(grepl("CUMULATIVE", WorkClaim2$Descriptions) == TRUE, "CUMULATIVE", WorkClaim2$Descriptions)
WorkClaim2$Descriptions = ifelse(grepl("FALL", WorkClaim2$Descriptions) == TRUE, "FALL", WorkClaim2$Descriptions)
WorkClaim2$Descriptions = ifelse(grepl("STRUCK", WorkClaim2$Descriptions) == TRUE, "STRUCK", WorkClaim2$Descriptions)
WorkClaim2$Descriptions = ifelse(grepl("STRAIN", WorkClaim2$Descriptions) == TRUE, "STRAIN", WorkClaim2$Descriptions)
WorkClaim2$Descriptions = ifelse(grepl("SORENESS", WorkClaim2$Descriptions) == TRUE, "SORENESS", WorkClaim2$Descriptions)
WorkClaim2$Descriptions = ifelse(grepl("VEH", WorkClaim2$Descriptions) == TRUE, "VEH", WorkClaim2$Descriptions)
WorkClaim2$Descriptions = ifelse(grepl("ASSAULT", WorkClaim2$Descriptions) == TRUE, "OTHER", WorkClaim2$Descriptions)
WorkClaim2$Descriptions = ifelse(grepl("CLAIM NOT COVERED", WorkClaim2$Descriptions) == TRUE, "OTHER", WorkClaim2$Descriptions)
WorkClaim2$Descriptions = ifelse(grepl("CONTROL", WorkClaim2$Descriptions) == TRUE, "OTHER", WorkClaim2$Descriptions)
WorkClaim2$Descriptions = ifelse(grepl("Other", WorkClaim2$Descriptions) == TRUE, "OTHER", WorkClaim2$Descriptions)
WorkClaim2$Descriptions = ifelse(grepl("CUMULATIVE", WorkClaim2$Descriptions) == TRUE, "OTHER", WorkClaim2$Descriptions)




WorkClaim2$Length = WorkClaim2$Claimant.Length.Employed
str(WorkClaim2$Length)
summary(as.factor(WorkClaim2$Length))
WorkClaim2$Length = as.character(WorkClaim2$Length)

WorkClaim2$Length = ifelse(grepl("M", WorkClaim2$Length) == TRUE, " < 1Y ", WorkClaim2$Length)
WorkClaim2$Length = ifelse(grepl("D", WorkClaim2$Length) == TRUE, " < 1M ", WorkClaim2$Length)





qplot(Age, data=WorkClaim2, geom="histogram", fill=Descriptions)
qplot(MO.Other, data=WorkClaim2, geom="histogram", fill=Descriptions)
qplot(Status, data=WorkClaim2, geom="histogram", fill=Descriptions)
qplot(Wages.incurred, data=WorkClaim2, geom="histogram", fill=Descriptions, , xlim = c(0, 2000))
qplot(Expense.Incurred, data=WorkClaim2, geom="histogram", fill=Descriptions, , xlim = c(0, 2000))
qplot(Total.Incurred, data=WorkClaim2, geom="histogram", fill=Descriptions, , xlim = c(0, 2000))
qplot(Length, data=WorkClaim2, geom="histogram", fill=Descriptions)
qplot(Happened, data=WorkClaim2, geom="histogram", fill=Descriptions)
qplot(Total.Incurred, data=WorkClaim2, geom="histogram", fill=Descriptions)


qplot(Descriptions, data=WorkClaim2, geom="histogram", fill=MO.Other)
qplot(Descriptions, data=WorkClaim2, geom="histogram", fill=Status)
qplot(Occupations, data=WorkClaim2, geom="histogram", fill=Status)
qplot(Occupations, data=WorkClaim4, geom="histogram", fill=Status)
qplot(Occupations, data=WorkClaim2, geom="histogram", fill=Descriptions)


qplot(Age, Occupations, data = WorkClaim2, colour = Descriptions)
qplot(Length, Occupations, data = WorkClaim2, colour = Descriptions)


qplot(Length, as.factor(Occupations), data = WorkClaim4, colour = Descriptions)

qplot(as.factor(Occupations), data=WorkClaim5, geom="histogram", fill=Descriptions)

qplot(Age, jitter(as.numeric(as.factor(Occupations))), data = WorkClaim5, colour = Descriptions)
###age with Descriptions
qplot(Age, data=WorkClaim5, geom="histogram", fill=Descriptions)
###
qplot(Age, data=WorkClaim5, geom="histogram", fill=Occupations)
###Occupaitons with Descriptions
qplot(Occupations, data=WorkClaim5, geom="histogram", fill=Descriptions)
####
#### Occupations with Status
qplot(Occupations, data=WorkClaim5, geom="histogram", fill=Status)
#####
##### Occupations with MO.Other
qplot(Occupations, data=WorkClaim5, geom="histogram", fill=MO.Other)
#####
qplot(Occupations, data=WorkClaim5, geom="histogram", fill=MO.Other)
qplot(Occupations, data=WorkClaim5, geom="histogram", fill=Length)
#### Occupaitons with State
qplot(Occupations, data=WorkClaim5, geom="histogram", fill=Accident.State)
####

qplot(Age, data=WorkClaim5, geom="histogram", fill=MO.Other)
qplot(Age, data=WorkClaim5, geom="histogram", fill=Status)
qplot(Age, data=WorkClaim5, geom="histogram", fill=Length)
###Age with !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
qplot(Age, data=WorkClaim5, geom="histogram", fill=Descriptions)
qplot(Age, data=WorkClaim5, geom="histogram", fill=Occupations)

###Length!
qplot(Length, data=WorkClaim5, geom="histogram", fill=Occupations)
qplot(Length, data=WorkClaim5, geom="histogram", fill=Occupations, ylim = c(0,80))
qplot(Length, data=WorkClaim5, geom="histogram", fill=Descriptions)
####
qplot(Length, data=WorkClaim5, geom="histogram", fill=MO.Other)
#### with Status
qplot(Length, data=WorkClaim5, geom="histogram", fill=Status)
####
qplot(Length, data=WorkClaim5, geom="histogram", fill=as.factor(Happened))





qplot(as.factor(Happened), data=WorkClaim5, geom="histogram", fill=Status)
##### occupations
qplot(as.factor(Happened), data=WorkClaim5, geom="histogram", fill=Occupations)
qplot(as.factor(Happened), data=WorkClaim5, geom="histogram", fill=Descriptions)
######



#####Total.Incurred
qplot(Total.Incurred, data=WorkClaim4, geom="histogram", fill=Descriptions)
qplot(Total.Incurred, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(1, 250000), ylim = c(0, 30))
qplot(Total.Incurred, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(10000, 250000), ylim = c(0, 30))
qplot(Total.Incurred, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(1, 10000), ylim = c(0, 200))
#####
qplot(Total.Incurred, data=WorkClaim5, geom="histogram", fill=Occupations)
qplot(Total.Incurred, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(1, 250000), ylim = c(0, 30))
qplot(Total.Incurred, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(100000, 250000), ylim = c(0, 15))
qplot(Total.Incurred, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(50000, 100000), ylim = c(0, 15))




#####Total.Paid
qplot(Total.Paid, data=WorkClaim4, geom="histogram", fill=Descriptions)
qplot(Total.Paid, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(1, 250000), ylim = c(0, 15))
qplot(Total.Paid, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(10000, 250000), ylim = c(0, 15))
qplot(Total.Paid, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(1, 10000), ylim = c(0, 50))
#####
qplot(Total.Paid, data=WorkClaim4, geom="histogram", fill=Occupations)
qplot(Total.Paid, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(1, 250000), ylim = c(0, 15))
qplot(Total.Paid, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(100000, 250000), ylim = c(0, 15))
qplot(Total.Paid, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(50000, 100000), ylim = c(0, 15))



#####Expense.Incurred
qplot(Expense.Incurred, data=WorkClaim4, geom="histogram", fill=Descriptions)
qplot(Expense.Incurred, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(1, 250000), ylim = c(0, 15))
qplot(Expense.Incurred, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(10000, 250000), ylim = c(0, 15))
qplot(Expense.Incurred, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(1, 10000), ylim = c(0, 15))
#####
qplot(Expense.Incurred, data=WorkClaim4, geom="histogram", fill=Occupations)
qplot(Expense.Incurred, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(1, 250000), ylim = c(0, 15))
qplot(Expense.Incurred, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(100000, 250000), ylim = c(0, 15))
qplot(Expense.Incurred, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(50000, 100000), ylim = c(0, 15))



#####Medical.Incurred
qplot(Medical.Incurred, data=WorkClaim4, geom="histogram", fill=Descriptions)
qplot(Medical.Incurred, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(1, 250000), ylim = c(0, 15))
qplot(Medical.Incurred, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(10000, 250000), ylim = c(0, 15))
qplot(Medical.Incurred, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(1, 10000), ylim = c(0, 15))
#####
qplot(Medical.Incurred, data=WorkClaim4, geom="histogram", fill=Occupations)
qplot(Medical.Incurred, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(1, 250000), ylim = c(0, 15))
qplot(Medical.Incurred, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(100000, 250000), ylim = c(0, 15))
qplot(Medical.Incurred, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(50000, 100000), ylim = c(0, 15))


#####Medical.Paid
qplot(Medical.Paid, data=WorkClaim4, geom="histogram", fill=Descriptions)
qplot(Medical.Paid, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(1, 250000), ylim = c(0, 15))
qplot(Medical.Paid, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(10000, 250000), ylim = c(0, 15))
qplot(Medical.Paid, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(1, 10000), ylim = c(0, 100))
#####
qplot(Medical.Paid, data=WorkClaim4, geom="histogram", fill=Occupations)
qplot(Medical.Paid, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(1, 250000), ylim = c(0, 100))
qplot(Medical.Paid, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(100000, 250000), ylim = c(0, 15))
qplot(Medical.Paid, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(50000, 100000), ylim = c(0, 15))


#####Wages.incurred
qplot(Wages.incurred, data=WorkClaim4, geom="histogram", fill=Descriptions)
qplot(Wages.incurred, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(1, 250000), ylim = c(0, 150))
qplot(Wages.incurred, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(10000, 250000), ylim = c(0, 15))
qplot(Wages.incurred, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(1, 10000), ylim = c(0, 15))
#####
qplot(Wages.incurred, data=WorkClaim4, geom="histogram", fill=Occupations)
qplot(Wages.incurred, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(1, 250000), ylim = c(0, 150))
qplot(Wages.incurred, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(100000, 250000), ylim = c(0, 15))
qplot(Wages.incurred, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(50000, 100000), ylim = c(0, 15))


#####Wages.paid
qplot(Wages.paid, data=WorkClaim4, geom="histogram", fill=Descriptions)
qplot(Wages.paid, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(1, 250000), ylim = c(0, 150))
qplot(Wages.paid, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(10000, 250000), ylim = c(0, 15))
qplot(Wages.paid, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(1, 10000), ylim = c(0, 15))
#####
qplot(Wages.paid, data=WorkClaim4, geom="histogram", fill=Occupations)
qplot(Wages.paid, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(1, 250000), ylim = c(0, 15))
qplot(Wages.paid, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(100000, 250000), ylim = c(0, 15))
qplot(Wages.paid, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(50000, 100000), ylim = c(0, 15))

################################################################################






############################find out in common character#########################
########way one############
a <- c('blahABfCoo', 'blahDEfFoo')
b <- c('XXABC-123', 'XXDEF-123')
a
b
WorkClaim2$Occupations[1:20]

library(qualV)

sapply(seq_along(a), function(i)
  paste(LCS(substring(a[i], seq(1, nchar(a[i])), seq(1, nchar(a[i]))),
            substring(b[i], seq(1, nchar(b[i])), seq(1, nchar(b[i]))))$LCS,
        collapse = ""))


################################################################################
########way two############
source("http://bioconductor.org/biocLite.R")
#biocLite("Rlibstree") 
require(Rlibstree)
ll <- list(a,b)
lapply(data.frame(do.call(rbind, ll), stringsAsFactors=FALSE), 
       function(x) getLongestCommonSubstring(x))

data.frame(do.call(rbind, ll), stringsAsFactors=FALSE)

WorkClaim2$Occupations


WorkClaim2
sapply(WorkClaim2$Occupations, function(x) getLongestCommonSubstring(x))

################################################################################

#Only select the occupations happends more than once, the result is WorkClaim4

summary(summary(as.factor(WorkClaim2$Occupations)) > 1)
WorkClaim3 <- WorkClaim2
WorkClaim3$Test <- duplicated(WorkClaim3$Occupations, fromLast = TRUE)
WorkClaim3$Test1 <- duplicated(WorkClaim3$Occupations)
WorkClaim3$Test2 <- WorkClaim3$Test | WorkClaim3$Test1
summary(WorkClaim3$Test2)
WorkClaim3$Test2
WorkClaim4 <- WorkClaim3[WorkClaim3$Test2,]
summary(as.factor(WorkClaim4$Occupations))

################################################################################


#Only select the occupations happends more than 20 times, the result is WorkClaim5
require(plyr)
count(WorkClaim4$Occupations)
t <- count(WorkClaim4$Occupations)

WorkClaim5 <- WorkClaim4
WorkClaim5
t[(t$freq > 20),]
t[t$freq>20,]$x
ts <- as.character(t[t$freq>20,]$x)
str(ts)
WorkClaim5[which(WorkClaim5$Occupations == ts),]


#intersect(WorkClaim5$Occupations,ts)

summary(WorkClaim5[WorkClaim5$Occupations %in% ts,])

WorkClaim5 <- WorkClaim5[WorkClaim5$Occupations %in% ts,]

summary(as.factor(WorkClaim5$Occupations))























##############Final Presentation##############


View(WorkClaim2)
WorkClaim6 <- WorkClaim2[!is.na(WorkClaim6$Length),]
WorkClaim6$Count <- 1
WorkClaim6$Env <- ifelse(WorkClaim6$Occupations == "ENVIROMENTAL", 1, 0)


summary(WorkClaim6)
summary(WorkClaim6$Env)



# WorkClaim6$YOH <- WorkClaim6$Length
# WorkClaim6$YOH <- ifelse(WorkClaim6$Length == "< 1M", 0.1, WorkClaim6$YOH)
# WorkClaim6$YOH <- ifelse(WorkClaim6$Length == "< 1Y", 0.9, WorkClaim6$YOH)
# WorkClaim6$YOH <- ifelse(WorkClaim6$Length == "< 1Y", 0.9, WorkClaim6$YOH)

train_pay_10years_Regular$EHS <- ifelse(grepl("EHS", train_pay_10years_Regular$Course), 1, 0)






str(WorkClaim6$Length)
str(WorkClaim6$Count)



summary(as.factor(WorkClaim6[(WorkClaim6$Length == " < 1M "),]$Count))
summary(as.factor(WorkClaim6[(WorkClaim6$Length == "01Y"),]$Count))

summary(as.factor(WorkClaim6[(WorkClaim6$Length == " < 1Y "),]$Descriptions))
summary(WorkClaim6)
summary((WorkClaim6$Length))
summary(as.factor(WorkClaim6$Length))
WorkClaim6$Length <- as.character(WorkClaim6$Length)


#explore relation ship between Length and Occupations############
s1 <- summary(as.factor(WorkClaim6[(WorkClaim6$Occupations == "ENVIROMENTAL" & WorkClaim6$Length == " < 1M "),]$Count))
s2 <- summary(as.factor(WorkClaim6[(WorkClaim6$Length == ' < 1M '),] $Count))
summary(as.factor(WorkClaim6[(WorkClaim6$Occupations == "ENVIROMENTAL" & WorkClaim6$Length == " < 1M "),]$Count))
summary(as.factor(WorkClaim6[(WorkClaim6$Length == ' < 1M '),] $Count))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Annual Courses Taken", ylab = "Percentage of Active Staff Employee", main = "Exempt Staff Employee taking less than 12 courses")


#explore relation ship between Length and Occupations############
s1 <- summary(as.factor(WorkClaim6[(WorkClaim6$Occupations == "ENVIROMENTAL" & WorkClaim6$Length == " < 1Y "),]$Count))
s2 <- summary(as.factor(WorkClaim6[(WorkClaim6$Length == ' < 1Y '),] $Count))
summary(as.factor(WorkClaim6[(WorkClaim6$Occupations == "ENVIROMENTAL" & WorkClaim6$Length == " < 1Y "),]$Count))
summary(as.factor(WorkClaim6[(WorkClaim6$Length == ' < 1Y '),] $Count))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Annual Courses Taken", ylab = "Percentage of Active Staff Employee", main = "Exempt Staff Employee taking less than 12 courses")



s1 <- summary(as.factor(WorkClaim6[(WorkClaim6$Occupations == "ENVIROMENTAL" & WorkClaim6$Length != " < 1Y " & WorkClaim6$Length != " < 1M "),]$Count))
s2 <- summary(as.factor(WorkClaim6[(WorkClaim6$Length != ' < 1Y ' & WorkClaim6$Length != ' < 1M '),] $Count))
summary(as.factor(WorkClaim6[(WorkClaim6$Occupations == "ENVIROMENTAL" & WorkClaim6$Length != " < 1Y " & WorkClaim6$Length != ' < 1M '),]$Count))
summary(as.factor(WorkClaim6[(WorkClaim6$Length != ' < 1Y ' & WorkClaim6$Length != ' < 1M '),] $Count))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Annual Courses Taken", ylab = "Percentage of Active Staff Employee", main = "Exempt Staff Employee taking less than 12 courses")



require(ggplot2)
qplot(as.factor(Length), data=WorkClaim6, geom="histogram", fill=Occupations)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))  


qplot(as.factor(Length), data=WorkClaim6, geom="histogram", fill=Descriptions)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))  


qplot(as.factor(Length), data=WorkClaim6, geom="histogram", fill=as.factor(Env), xlab = 'Year of Service')+ 
  ggtitle("All Employees Claims") +
  theme(text = element_text(size = 18, family="Impact"))  







s1 <- summary(as.factor(WorkClaim6[(WorkClaim6$Descriptions == "FALL"),]$Length))
s2 <- summary(as.factor(WorkClaim6[(WorkClaim6$Length != '39Y' & WorkClaim6$Length != '51Y'),] $Length))
summary(as.factor(WorkClaim6[(WorkClaim6$Descriptions == "FALL"),]$Length))
summary(as.factor(WorkClaim6[(WorkClaim6$Length != '39Y' & WorkClaim6$Length != '51Y'),] $Length))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Working Length", ylab = "Percentage of FALL", main = "Employees")
















#####Total.Incurred
qplot(Total.Incurred, data=WorkClaim4, geom="histogram", fill=Descriptions)
qplot(Total.Incurred, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(1, 250000), ylim = c(0, 30))
qplot(Total.Incurred, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(10000, 250000), ylim = c(0, 30))
qplot(Total.Incurred, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(1, 10000), ylim = c(0, 200))
#####
qplot(Total.Incurred, data=WorkClaim5, geom="histogram", fill=Occupations)
qplot(Total.Incurred, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(1, 250000), ylim = c(0, 30))
qplot(Total.Incurred, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(100000, 250000), ylim = c(0, 15))
qplot(Total.Incurred, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(50000, 100000), ylim = c(0, 15))




#####Total.Paid
qplot(Total.Paid, data=WorkClaim4, geom="histogram", fill=Descriptions)
qplot(Total.Paid, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(1, 250000), ylim = c(0, 15))
qplot(Total.Paid, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(10000, 250000), ylim = c(0, 15))
qplot(Total.Paid, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(1, 10000), ylim = c(0, 50))
#####
qplot(Total.Paid, data=WorkClaim4, geom="histogram", fill=Occupations)
qplot(Total.Paid, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(1, 250000), ylim = c(0, 15))
qplot(Total.Paid, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(100000, 250000), ylim = c(0, 15))
qplot(Total.Paid, data=WorkClaim4, geom="histogram", fill=Occupations, xlim = c(50000, 100000), ylim = c(0, 15))


qplot(Total.Incurred, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(1, 10000), ylim = c(0, 120))+ 
  ggtitle("All Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Total.Incurred, data=WorkClaim4, geom="histogram", fill=Descriptions, xlim = c(10000, 250000), ylim = c(0, 20))+ 
  ggtitle("All Employees") +
  theme(text = element_text(size = 18, family="Impact"))  













