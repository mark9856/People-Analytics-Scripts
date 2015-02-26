WorkCompClaim1 <- read.csv(file="/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Work Comp Claim/work_comp_claim.csv", header=TRUE, sep=",")
WorkCompClaim2 <- read.csv(file="/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Work Comp Claim/Number.csv", header=TRUE, sep=",")


View(WorkCompClaim1)
View(WorkCompClaim2)


WorkCompClaim <- merge(WorkCompClaim2, WorkCompClaim1, by.y = c("CLAIMANT_SSN_NBR"), by.x = c("ss"))
View(WorkCompClaim)


# merge new data wiht 10 years pay data
# WorkCompClaim_Pay_10years_Regular <- merge(WorkCompClaim, pay3.regular.rate, by.x = c("rin"), by.y = c("Rensselaer.Id.Number"))
# View(WorkCompClaim_Pay_10years_Regular)

# summary(WorkCompClaim_Pay_10years_Regular)



# WorkCompClaim_test <- WorkCompClaim_Pay_10years_Regular


# View(WorkCompClaim_test)


# replace the CLAIM_ID the same with the data in old data

WorkCompClaim$CLAIM_ID <- sub("YLAC", "YLA C ", WorkCompClaim$CLAIM_ID)
WorkCompClaim$CLAIM_ID <- sub("YHZC", "YHZ C ", WorkCompClaim$CLAIM_ID)
WorkCompClaim$CLAIM_ID <- sub("YSQC", "YSQ C ", WorkCompClaim$CLAIM_ID)
WorkCompClaim$CLAIM_ID <- sub("YZCC", "YZC C ", WorkCompClaim$CLAIM_ID)
WorkCompClaim$CLAIM_ID <- sub("YMJC", "YMJ C ", WorkCompClaim$CLAIM_ID)
WorkCompClaim$CLAIM_ID <- sub("YBHC", "YBH C ", WorkCompClaim$CLAIM_ID)



# merge new data with old data
WorkCompClaim_tog <- merge(WorkCompClaim, WorkClaim, by.x = c("CLAIM_ID"), by.y = c("Claim.Number"))

View(courseTaken10years_pay_Regular_couses)
View(WorkCompClaim_tog)

WorkCompClaim_Training_Pay_10years_Regular <- merge(WorkCompClaim_tog, courseTaken10years_pay_Regular_couses, by.x = c("rin"), by.y = c("RIN"))

View(WorkCompClaim_Training_Pay_10years_Regular)

summary(WorkCompClaim_Training_Pay_10years_Regular)



# Simplify the location
WorkCompClaim_Training_Pay_10years_Regular$Location <- as.character(WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC)

str(WorkCompClaim_Training_Pay_10years_Regular$Location)

WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("RENSSELAER POLYTECHNIC INST", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"RPI", WorkCompClaim_Training_Pay_10years_Regular$Location)

WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("RENSSELAER POLYTECHNIC I", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"RPI", WorkCompClaim_Training_Pay_10years_Regular$Location)

WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("RENSSELEAR POLYTECHNIC INST", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"RPI", WorkCompClaim_Training_Pay_10years_Regular$Location)

WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("UNKNOWN", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"", WorkCompClaim_Training_Pay_10years_Regular$Location)

WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("UNK", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"", WorkCompClaim_Training_Pay_10years_Regular$Location)

WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("Unknown", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"", WorkCompClaim_Training_Pay_10years_Regular$Location)

WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("HOUSTON", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"HOUSTON FIELD HOUSE", WorkCompClaim_Training_Pay_10years_Regular$Location)


WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("ACADEMY", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"ACADEMY HALL", WorkCompClaim_Training_Pay_10years_Regular$Location)
WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("ADMISSIONS", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"ADMISSIONS BUILDING", WorkCompClaim_Training_Pay_10years_Regular$Location)
WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("EMPAC", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"EMPAC", WorkCompClaim_Training_Pay_10years_Regular$Location)
WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("RENSSELEAR", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"RPI", WorkCompClaim_Training_Pay_10years_Regular$Location)
WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("CII", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"CII", WorkCompClaim_Training_Pay_10years_Regular$Location)
WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("COMMONS", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"COMMONS", WorkCompClaim_Training_Pay_10years_Regular$Location)
WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("LIBRARY", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"LIBRARY", WorkCompClaim_Training_Pay_10years_Regular$Location)
WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("GARAGE", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"GARAGE", WorkCompClaim_Training_Pay_10years_Regular$Location)
WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("HALL", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"HALL", WorkCompClaim_Training_Pay_10years_Regular$Location)
WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("BAR", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"BAR", WorkCompClaim_Training_Pay_10years_Regular$Location)
WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("PARKING", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"PARKING", WorkCompClaim_Training_Pay_10years_Regular$Location)
WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("PITTSBURGH", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"PITTSBURGH", WorkCompClaim_Training_Pay_10years_Regular$Location)
WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("SHOP", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"SHOP", WorkCompClaim_Training_Pay_10years_Regular$Location)
WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("OUTSIDE", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"OUTSIDE", WorkCompClaim_Training_Pay_10years_Regular$Location)
WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("STAIRS", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"STAIRS", WorkCompClaim_Training_Pay_10years_Regular$Location)
WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("VIC", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"VIC", WorkCompClaim_Training_Pay_10years_Regular$Location)
WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("DFWI", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"DFWI", WorkCompClaim_Training_Pay_10years_Regular$Location)
WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("WATERVLIET", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"WATERVLIET", WorkCompClaim_Training_Pay_10years_Regular$Location)
WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("CHURCH", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"CHURCH", WorkCompClaim_Training_Pay_10years_Regular$Location)
WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("BUILDING", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"BUILDING", WorkCompClaim_Training_Pay_10years_Regular$Location)
WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"", WorkCompClaim_Training_Pay_10years_Regular$Location)
WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"", WorkCompClaim_Training_Pay_10years_Regular$Location)
WorkCompClaim_Training_Pay_10years_Regular$Location = ifelse(grepl("", 
					WorkCompClaim_Training_Pay_10years_Regular$LOCATION_DESC) == TRUE,
				 	"", WorkCompClaim_Training_Pay_10years_Regular$Location)









summary(as.factor(WorkCompClaim_Training_Pay_10years_Regular$Location))



################################################################################
#deal with Descriptions
WorkCompClaim_Training_Pay_10years_Regular$Descriptions = WorkCompClaim_Training_Pay_10years_Regular$Claim.Description
str(WorkCompClaim_Training_Pay_10years_Regular$Descriptions)
summary(as.factor(WorkCompClaim_Training_Pay_10years_Regular$Claim.Description))
summary(as.factor(WorkCompClaim_Training_Pay_10years_Regular$Descriptions))
WorkCompClaim_Training_Pay_10years_Regular$Descriptions = as.character(WorkCompClaim_Training_Pay_10years_Regular$Descriptions)
WorkCompClaim_Training_Pay_10years_Regular$Descriptions = ifelse(grepl("CAUGHT IN", WorkCompClaim_Training_Pay_10years_Regular$Descriptions) == TRUE, "CAUGHT IN", WorkCompClaim_Training_Pay_10years_Regular$Descriptions)
WorkCompClaim_Training_Pay_10years_Regular$Descriptions = ifelse(grepl("CONTACT", WorkCompClaim_Training_Pay_10years_Regular$Descriptions) == TRUE, "CONTACT", WorkCompClaim_Training_Pay_10years_Regular$Descriptions)
WorkCompClaim_Training_Pay_10years_Regular$Descriptions = ifelse(grepl("CUMULATIVE", WorkCompClaim_Training_Pay_10years_Regular$Descriptions) == TRUE, "CUMULATIVE", WorkCompClaim_Training_Pay_10years_Regular$Descriptions)
WorkCompClaim_Training_Pay_10years_Regular$Descriptions = ifelse(grepl("FALL", WorkCompClaim_Training_Pay_10years_Regular$Descriptions) == TRUE, "FALL", WorkCompClaim_Training_Pay_10years_Regular$Descriptions)
WorkCompClaim_Training_Pay_10years_Regular$Descriptions = ifelse(grepl("STRUCK", WorkCompClaim_Training_Pay_10years_Regular$Descriptions) == TRUE, "STRUCK", WorkCompClaim_Training_Pay_10years_Regular$Descriptions)
WorkCompClaim_Training_Pay_10years_Regular$Descriptions = ifelse(grepl("STRAIN", WorkCompClaim_Training_Pay_10years_Regular$Descriptions) == TRUE, "STRAIN", WorkCompClaim_Training_Pay_10years_Regular$Descriptions)
WorkCompClaim_Training_Pay_10years_Regular$Descriptions = ifelse(grepl("SORENESS", WorkCompClaim_Training_Pay_10years_Regular$Descriptions) == TRUE, "SORENESS", WorkCompClaim_Training_Pay_10years_Regular$Descriptions)
WorkCompClaim_Training_Pay_10years_Regular$Descriptions = ifelse(grepl("VEH", WorkCompClaim_Training_Pay_10years_Regular$Descriptions) == TRUE, "VEH", WorkCompClaim_Training_Pay_10years_Regular$Descriptions)
WorkCompClaim_Training_Pay_10years_Regular$Descriptions = ifelse(grepl("ASSAULT", WorkCompClaim_Training_Pay_10years_Regular$Descriptions) == TRUE, "OTHER", WorkCompClaim_Training_Pay_10years_Regular$Descriptions)
WorkCompClaim_Training_Pay_10years_Regular$Descriptions = ifelse(grepl("CLAIM NOT COVERED", WorkCompClaim_Training_Pay_10years_Regular$Descriptions) == TRUE, "OTHER", WorkCompClaim_Training_Pay_10years_Regular$Descriptions)
WorkCompClaim_Training_Pay_10years_Regular$Descriptions = ifelse(grepl("CONTROL", WorkCompClaim_Training_Pay_10years_Regular$Descriptions) == TRUE, "OTHER", WorkCompClaim_Training_Pay_10years_Regular$Descriptions)
WorkCompClaim_Training_Pay_10years_Regular$Descriptions = ifelse(grepl("Other", WorkCompClaim_Training_Pay_10years_Regular$Descriptions) == TRUE, "OTHER", WorkCompClaim_Training_Pay_10years_Regular$Descriptions)
WorkCompClaim_Training_Pay_10years_Regular$Descriptions = ifelse(grepl("CUMULATIVE", WorkCompClaim_Training_Pay_10years_Regular$Descriptions) == TRUE, "OTHER", WorkCompClaim_Training_Pay_10years_Regular$Descriptions)


summary(as.factor(WorkCompClaim_Training_Pay_10years_Regular$Descriptions))
View(WorkCompClaim_Training_Pay_10years_Regular)








WorkCompClaim_Training_Pay_10years_Regular$Accidence <- 1


# EHS_agg <- aggregate(EHS ~ RIN, data = train_pay_10years_Regular_Courses, sum)
AnnualAccidence_agg <- aggregate(Accidence ~ rin, data = WorkCompClaim_Training_Pay_10years_Regular, sum)

View(AnnualAccidence_agg)

WorkCompClaim_Training_Pay_10years_Regular_Aggr <- merge(AnnualAccidence_agg, courseTaken10years_pay_Regular_couses, by.x = c('rin'), by.y = c('RIN'))

View(WorkCompClaim_Training_Pay_10years_Regular_Aggr)
summary(WorkCompClaim_Training_Pay_10years_Regular_Aggr)



test <- WorkCompClaim_Training_Pay_10years_Regular[, c('rin', 'Descriptions')]

View(test)








#####Analysis of all regular of EHS Taken#######
require(ggplot2)

qplot(as.factor(Accidence), data=WorkCompClaim_Training_Pay_10years_Regular_Aggr, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Regular Employee in Work Comp Claim") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(as.factor(Accidence), data=WorkCompClaim_Training_Pay_10years_Regular_Aggr, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Regular Employee in Work Comp Claim") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Accidence), data=WorkCompClaim_Training_Pay_10years_Regular_Aggr, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Regular Employee in Work Comp Claim") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Accidence), data=WorkCompClaim_Training_Pay_10years_Regular_Aggr, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Regular Employee in Work Comp Claim") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Accidence), data=WorkCompClaim_Training_Pay_10years_Regular_Aggr, geom="histogram", fill=Citizenship.Indicator)+ 
  ggtitle("All Regular Employee in Work Comp Claim") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Accidence), data=WorkCompClaim_Training_Pay_10years_Regular_Aggr, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
  ggtitle("All Regular Employee in Work Comp Claim") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Accidence), data=WorkCompClaim_Training_Pay_10years_Regular_Aggr, geom="histogram", fill=Gender)+ 
  ggtitle("All Regular Employee in Work Comp Claim") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Accidence), data=WorkCompClaim_Training_Pay_10years_Regular_Aggr, geom="histogram", fill=Ethnicity)+ 
  ggtitle("All Regular Employee in Work Comp Claim") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Accidence), data=WorkCompClaim_Training_Pay_10years_Regular_Aggr, geom="histogram", fill=as.factor(Hired))+ 
  ggtitle("All Regular Employee in Work Comp Claim") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Accidence), data=WorkCompClaim_Training_Pay_10years_Regular_Aggr, geom="histogram", fill=as.factor(Start.Year))+ 
  ggtitle("All Regular Employee in Work Comp Claim") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Accidence), data=WorkCompClaim_Training_Pay_10years_Regular_Aggr, geom="histogram", fill=as.factor(End.Year))+ 
  ggtitle("All Regular Employee in Work Comp Claim") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Start.Annual.Pay, data=WorkCompClaim_Training_Pay_10years_Regular_Aggr, geom="histogram", fill= as.factor(Accidence))+ 
  ggtitle("All Regular Employee in Work Comp Claim") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(End.Annual.Pay, data=WorkCompClaim_Training_Pay_10years_Regular_Aggr, geom="histogram", fill= as.factor(Accidence))+ 
  ggtitle("All Regular Employee in Work Comp Claim") +
  theme(text = element_text(size = 18, family="Impact"))  


qplot(Annual.Increase.Rate, data=WorkCompClaim_Training_Pay_10years_Regular_Aggr, geom="histogram", fill= as.factor(Accidence))+ 
  ggtitle("All Regular Employee in Work Comp Claim") +
  theme(text = element_text(size = 18, family="Impact"))  


qplot(as.factor(Accidence), data=WorkCompClaim_Training_Pay_10years_Regular_Aggr, geom="histogram", fill=as.factor(Indicator_EHS))+ 
  ggtitle("All Regular Employee in Work Comp Claim") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Accidence), data=WorkCompClaim_Training_Pay_10years_Regular_Aggr, geom="histogram", fill=as.factor(Indicator_Comp_Tech))+ 
  ggtitle("All Regular Employee in Work Comp Claim") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Accidence), data=WorkCompClaim_Training_Pay_10years_Regular_Aggr, geom="histogram", fill=as.factor(Indicator_Leadership))+ 
  ggtitle("All Regular Employee in Work Comp Claim") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Accidence), data=WorkCompClaim_Training_Pay_10years_Regular_Aggr, geom="histogram", fill=as.factor(AnnualCourseTaken))+ 
  ggtitle("All Regular Employee in Work Comp Claim") +
  theme(text = element_text(size = 18, family="Impact"))

summary(WorkCompClaim_Training_Pay_10years_Regular_Aggr)
summary(as.factor(WorkCompClaim_Training_Pay_10years_Regular_Aggr$Hired))
summary(as.factor(WorkCompClaim_Training_Pay_10years_Regular_Aggr$Start.Year))
summary(as.factor(WorkCompClaim_Training_Pay_10years_Regular_Aggr$AnnualCourseTaken))


# plot(WorkCompClaim_Training_Pay_10years_Regular_Aggr$Annual.Increase.Rate)









