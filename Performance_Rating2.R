options(java.parameters = "-Xmx4g" )
library(XLConnect)


Rating08 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Performance_Review_6_years/Performance Results FY08.xlsx"),sheet=1)

Rating09 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Performance_Review_6_years/Performance Results FY09.xlsx"),sheet=1)
Rating10 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Performance_Review_6_years/Performance Results FY10.xlsx"),sheet=1)
Rating11 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Performance_Review_6_years/Performance Results FY11.xlsx"),sheet=1)
Rating12 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Performance_Review_6_years/Performance Results FY12.xlsx"),sheet=1)
Rating13 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Performance_Review_6_years/Performance Results FY13.xlsx"),sheet=1)
# Rating14 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Performance_Review_6_years/Performance Results FY14.xlsx"),sheet=1)
Rating14 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Performance_Review_6_years/fy15rating with port tile.xlsx"),sheet=1)



summary(Rating08)
summary(Rating09)
summary(Rating10)
summary(Rating11)
summary(Rating12)
summary(Rating13)
summary(Rating14)

summary(as.factor(Rating08$Portfolio.Title))
summary(as.factor(Rating09$Portfolio.Title))
summary(as.factor(Rating10$Portfolio.Title))
summary(as.factor(Rating11$Portfolio.Title))
summary(as.factor(Rating12$Portfolio.Title))
summary(as.factor(Rating13$Portfolio.Title))
summary(as.factor(Rating14$Portfolio.Title))

summary(as.factor(Rating_CBS_Pay_extreme$Portfolio_Title))



summary(as.factor(Rating08$Performance.Rating..Select.from.Drop.Down.))
summary(as.factor(Rating09$Performance.Rating..Select.from.Drop.Down.))
summary(as.factor(Rating10$Rating))
summary(as.factor(Rating11$Performance.Rating..Select.from.Drop.Down.))
summary(as.factor(Rating12$Performance.Rating..Select.from.Drop.Down.))
summary(as.factor(Rating13$Performance.Rating..Select.from.Drop.Down.))
summary(as.factor(Rating14$Performance.Rating..Select.from.Drop.Down.))


# Rating08_1 <- Rating08[,c('RIN', 'Portfolio.Title', 'Org.Title', 'Title', 'ECLS', 'Performance.Rating..Select.from.Drop.Down.')]
# Rating09_1 <- Rating09[,c('RIN', 'Portfolio.Title', 'Org.Title', 'Title', 'ECLS', 'Performance.Rating..Select.from.Drop.Down.')]
# Rating10_1 <- Rating10[,c('RIN', 'Portfolio.Title', 'Org.Title', 'Title', 'ECLS', 'Rating')]
# Rating11_1 <- Rating11[,c('RIN', 'Portfolio.Title', 'Org.Title', 'Title', 'ECLS', 'Performance.Rating..Select.from.Drop.Down.')]
# Rating12_1 <- Rating12[,c('RIN', 'Portfolio.Title', 'Org.Title', 'Title', 'ECLS', 'Performance.Rating..Select.from.Drop.Down.')]
# Rating13_1 <- Rating13[,c('RIN', 'Portfolio.Title', 'Org.Title', 'Title', 'ECLS', 'Performance.Rating..Select.from.Drop.Down.')]

Rating08_1 <- Rating08[,c('RIN', 'Performance.Rating..Select.from.Drop.Down.', 'Portfolio.Title')]
Rating09_1 <- Rating09[,c('RIN', 'Performance.Rating..Select.from.Drop.Down.', 'Portfolio.Title')]
Rating10_1 <- Rating10[,c('RIN', 'Rating', 'Portfolio.Title')]
Rating11_1 <- Rating11[,c('RIN', 'Performance.Rating..Select.from.Drop.Down.', 'Portfolio.Title')]
Rating12_1 <- Rating12[,c('RIN', 'Performance.Rating..Select.from.Drop.Down.', 'Portfolio.Title')]
Rating13_1 <- Rating13[,c('RIN', 'Performance.Rating..Select.from.Drop.Down.', 'Portfolio.Title')]
Rating14_1 <- Rating14[,c('RIN', 'Performance.Rating..Select.from.Drop.Down.', 'Portfolio.Title')]


View(Rating08_1)
View(Rating09_1)
View(Rating10_1)
View(Rating11_1)
View(Rating12_1)
View(Rating13_1)
View(Rating14_1)


View(CBS_FY08)
View(CBS_FY09)
View(CBS_FY10)
View(CBS_FY11)
View(CBS_FY12)
View(CBS_FY13)

Rating08_CBS <- merge(Rating08_1, CBS_FY08, by = c('RIN'))
Rating09_CBS <- merge(Rating09_1, CBS_FY09, by = c('RIN'))
Rating10_CBS <- merge(Rating10_1, CBS_FY10, by = c('RIN'))
Rating11_CBS <- merge(Rating11_1, CBS_FY11, by = c('RIN'))
Rating12_CBS <- merge(Rating12_1, CBS_FY12, by = c('RIN'))
Rating13_CBS <- merge(Rating13_1, CBS_FY13, by = c('RIN'))
Rating14_CBS <- merge(Rating14_1, CBS_FY14, by = c('RIN'))


summary(CBS_FY08)
summary(CBS_FY09)
summary(CBS_FY10)
summary(CBS_FY11)
summary(CBS_FY12)
summary(CBS_FY13)
summary(CBS_FY14)


View(Rating08_CBS)
View(Rating09_CBS)
View(Rating10_CBS)
View(Rating11_CBS)
View(Rating12_CBS)
View(Rating13_CBS)
View(Rating14_CBS)


Rating08_CBS$Rating_Year <- 2008
Rating09_CBS$Rating_Year <- 2009
Rating10_CBS$Rating_Year <- 2010
Rating11_CBS$Rating_Year <- 2011
Rating12_CBS$Rating_Year <- 2012
Rating13_CBS$Rating_Year <- 2013
Rating14_CBS$Rating_Year <- 2014



colnames(Rating08_CBS)[names(Rating08_CBS) == "Performance.Rating..Select.from.Drop.Down."] <- "Performance_Rating"
colnames(Rating09_CBS)[names(Rating09_CBS) == "Performance.Rating..Select.from.Drop.Down."] <- "Performance_Rating"
colnames(Rating10_CBS)[names(Rating10_CBS) == "Rating"] <- "Performance_Rating"
colnames(Rating11_CBS)[names(Rating11_CBS) == "Performance.Rating..Select.from.Drop.Down."] <- "Performance_Rating"
colnames(Rating12_CBS)[names(Rating12_CBS) == "Performance.Rating..Select.from.Drop.Down."] <- "Performance_Rating"
colnames(Rating13_CBS)[names(Rating13_CBS) == "Performance.Rating..Select.from.Drop.Down."] <- "Performance_Rating"
colnames(Rating14_CBS)[names(Rating14_CBS) == "Performance.Rating..Select.from.Drop.Down."] <- "Performance_Rating"

Rating_CBS_total <- rbind(Rating08_CBS, Rating09_CBS)
Rating_CBS_total <- rbind(Rating_CBS_total, Rating10_CBS)
Rating_CBS_total <- rbind(Rating_CBS_total, Rating11_CBS)
Rating_CBS_total <- rbind(Rating_CBS_total, Rating12_CBS)
Rating_CBS_total <- rbind(Rating_CBS_total, Rating13_CBS)
Rating_CBS_total <- rbind(Rating_CBS_total, Rating14_CBS)
View(Rating_CBS_total)
summary(Rating_CBS_total)


Rating_CBS_total$Age <- as.numeric(Rating_CBS_total$Rating_Year)-as.numeric(format(as.Date(Rating_CBS_total$DOB,format="%m/%d/%Y"),format="%Y")) 
Rating_CBS_total$Year_of_Service <- as.numeric(Rating_CBS_total$Rating_Year)-as.numeric(format(as.Date(Rating_CBS_total$DOH,format="%m/%d/%Y"),format="%Y")) 
Rating_CBS_Pay_Total <- merge(Rating_CBS_total, pay2, by.x = c('RIN', 'Rating_Year'), by.y = c('Rensselaer.Id.Number', 'Fiscal.Year'))



View(Rating_CBS_total)
View(Rating_CBS_Pay_Total)
summary(Rating_CBS_total)
summary(Rating_CBS_Pay_Total)
summary(Rating_CBS_Pay_Total$Performance_Rating)
summary(as.factor( Rating_CBS_Pay_Total$Performance_Rating))
summary(as.factor(Rating_CBS_Pay_Total$Performance_Rating))
summary(as.factor(Rating_CBS_extrem$Performance_Rating))
summary(Rating_CBS_Pay_extrem)

#list of characters####
#RIN 	Rating_Year		Portfolio.Title 	Org.Title 	Title 	ECLS 	Performance_Rating 	ADDR_1 	CITY 	ST
# ZIP 	CT 	DOB 	DOH 	ACT_PAY 	ECLS.y 	MED_CV 	JOB.TITLE 	TS_ORG 	TS_ORG_TITLE 	HOL_PAID 	PTO_BAL
# PTO_PAID 	RTO_BAL 	RTO_PAID	SCHED_PTO_TAKEN 	UNSCHED_PTO_TAKEN 	RTO_TAKEN 	DISABILITY_TAKEN DISABILITY.PAID
# Age 	Year_of_Service 	Employees.On.Leave 	Employee.Faculty.Staff.Student.Indicator 	Current.Employee.Status
# Employee.Eeo.Contract.Group.Description 	Employee.Exempt.Non.Exempt.Indicator 	Employee.Type
# Employee.Regular.Fixed.Term.Temp.Indicator 	Citizenship.Indicator 	Employee.Full.Time.Part.Time.Indicator
# Gender 	Ethnicity 	Job.Hourly.Rate 	Hours.Per.Day 	Hours.Per.Pay.Period 	Annual.Pay 	Pay.Factor
# Pays.Per.Year

summary(Rating_CBS_Pay_Total)
summary(as.factor(Rating_CBS_Pay_Total$Performance_Rating))

Rating_CBS_Pay_Total$Performance_Rating = ifelse(Rating_CBS_Pay_Total$Performance_Rating == "exceeds expectations", 'Exceeds Expectations', Rating_CBS_Pay_Total$Performance_Rating)
Rating_CBS_Pay_Total$Performance_Rating = ifelse(Rating_CBS_Pay_Total$Performance_Rating == "successful performance", 'Successful Performance', Rating_CBS_Pay_Total$Performance_Rating)
Rating_CBS_Pay_Total <- Rating_CBS_Pay_Total[!(Rating_CBS_Pay_Total$Performance_Rating == "Brian Clement"),]
Rating_CBS_Pay_Total <- Rating_CBS_Pay_Total[!(Rating_CBS_Pay_Total$Performance_Rating == "Mary Dixey"),]
Rating_CBS_Pay_Total <- Rating_CBS_Pay_Total[!(Rating_CBS_Pay_Total$Performance_Rating == "No Evaluation"),]
Rating_CBS_Pay_Total <- Rating_CBS_Pay_Total[!(Rating_CBS_Pay_Total$Performance_Rating == "Termed 6/30/09"),]
Rating_CBS_Pay_Total <- Rating_CBS_Pay_Total[!is.na(Rating_CBS_Pay_Total$Performance_Rating),]
# Rating_CBS_Pay_Total <- Rating_CBS_Pay_Total[!(Rating_CBS_Pay_Total$Performance_Rating == ""),]


Rating_CBS_Pay_extrem <- Rating_CBS_Pay_Total
Rating_CBS_Pay_extrem$Rating <- ifelse(Rating_CBS_Pay_extrem$Performance_Rating == "Exceeds Expectations", 'Best', Rating_CBS_Pay_extrem$Rating)
Rating_CBS_Pay_extrem$Rating <- ifelse(Rating_CBS_Pay_extrem$Performance_Rating == "Exceeds Standards", 'Best', Rating_CBS_Pay_extrem$Rating)
Rating_CBS_Pay_extrem$Rating <- ifelse(Rating_CBS_Pay_extrem$Performance_Rating == "Successful Performance", 'Normal', Rating_CBS_Pay_extrem$Rating)
Rating_CBS_Pay_extrem$Rating <- ifelse(Rating_CBS_Pay_extrem$Performance_Rating == "Developing Performance", 'Worst', Rating_CBS_Pay_extrem$Rating)
Rating_CBS_Pay_extrem$Rating <- ifelse(Rating_CBS_Pay_extrem$Performance_Rating == "Improvement Essential", 'Worst', Rating_CBS_Pay_extrem$Rating)
Rating_CBS_Pay_extrem$Rating <- ifelse(Rating_CBS_Pay_extrem$Performance_Rating == "Development is Necessary", 'Worst', Rating_CBS_Pay_extrem$Rating)


summary(as.factor(Rating_CBS_Pay_extrem$Rating))
summary(as.factor(Rating_CBS_Pay_extrem$Performance_Rating))


Rating_CBS_Pay_extreme <- Rating_CBS_Pay_extrem[, c('RIN', 'Rating_Year', 'Performance_Rating','Portfolio.Title', 
	'ECLS', 'CITY', 'ST', 'ZIP', 'CT', 'DOB', 'DOH', 'ACT_PAY', 'JOB.TITLE', 'TS_ORG',
	'TS_ORG_TITLE', 'HOL_PAID', 'PTO_BAL', 'PTO_PAID', 'RTO_BAL', 'RTO_PAID', 'SCHED_PTO_TAKEN', 'UNSCHED_PTO_TAKEN',
	'RTO_TAKEN', 'DISABILITY_TAKEN', 'DISABILITY.PAID', 'Age', 'Year_of_Service', 'Employee.Faculty.Staff.Student.Indicator',
	'Current.Employee.Status', 'Employee.Eeo.Contract.Group.Description', 'Employee.Exempt.Non.Exempt.Indicator',
	'Employee.Type', 'Employee.Regular.Fixed.Term.Temp.Indicator', 'Citizenship.Indicator', 'Employee.Full.Time.Part.Time.Indicator',
	'Gender', 'Ethnicity', 'Job.Hourly.Rate', 'Hours.Per.Day', 'Hours.Per.Pay.Period', 'Annual.Pay', 'Pay.Factor',
	'Pays.Per.Year', 'Rating'),]

View(Rating_CBS_Pay_extreme)
summary(Rating_CBS_Pay_extreme)



summary(Rating_CBS_Pay_extreme$Portfolio.Title)
summary(as.factor(Rating_CBS_Pay_extreme$Portfolio.Title))
summary(as.factor(Rating_CBS_Pay_extreme$Portfolio_Title))


Rating_CBS_Pay_extreme$Portfolio_Title <- Rating_CBS_Pay_extreme$Portfolio.Title
Rating_CBS_Pay_extreme$Portfolio_Title <- ifelse(Rating_CBS_Pay_extreme$Portfolio.Title == "Division of Administration", 'Administration', Rating_CBS_Pay_extreme$Portfolio_Title)
Rating_CBS_Pay_extreme$Portfolio_Title <- ifelse(Rating_CBS_Pay_extreme$Portfolio.Title == "Division of Enrollment Management", 'Enrollment Management', Rating_CBS_Pay_extreme$Portfolio_Title)
Rating_CBS_Pay_extreme$Portfolio_Title <- ifelse(Rating_CBS_Pay_extreme$Portfolio.Title == "Division of Finance", 'Finance', Rating_CBS_Pay_extreme$Portfolio_Title)
Rating_CBS_Pay_extreme$Portfolio_Title <- ifelse(Rating_CBS_Pay_extreme$Portfolio.Title == "Division of Human Resources", 'Human Resources', Rating_CBS_Pay_extreme$Portfolio_Title)
Rating_CBS_Pay_extreme$Portfolio_Title <- ifelse(Rating_CBS_Pay_extreme$Portfolio.Title == "Division of Institute Advancement", 'Institute Advancement', Rating_CBS_Pay_extreme$Portfolio_Title)
Rating_CBS_Pay_extreme$Portfolio_Title <- ifelse(Rating_CBS_Pay_extreme$Portfolio.Title == "Division of Research", 'Research', Rating_CBS_Pay_extreme$Portfolio_Title)
Rating_CBS_Pay_extreme$Portfolio_Title <- ifelse(Rating_CBS_Pay_extreme$Portfolio.Title == "Division of Strategic Communications & External Relations", 'Strat Communications & External Rel', Rating_CBS_Pay_extreme$Portfolio_Title)
Rating_CBS_Pay_extreme$Portfolio_Title <- ifelse(Rating_CBS_Pay_extreme$Portfolio.Title == "Division of Student Life", 'Student Life', Rating_CBS_Pay_extreme$Portfolio_Title)
Rating_CBS_Pay_extreme$Portfolio_Title <- ifelse(Rating_CBS_Pay_extreme$Portfolio.Title == "Lally School of Management", 'Lally Sch of Mgt & Technology', Rating_CBS_Pay_extreme$Portfolio_Title)
Rating_CBS_Pay_extreme$Portfolio_Title <- ifelse(Rating_CBS_Pay_extreme$Portfolio.Title == "Lally School of Management & Technology", 'Lally Sch of Mgt & Technology', Rating_CBS_Pay_extreme$Portfolio_Title)
Rating_CBS_Pay_extreme$Portfolio_Title <- ifelse(Rating_CBS_Pay_extreme$Portfolio.Title == "Office of the President", 'President', Rating_CBS_Pay_extreme$Portfolio_Title)
Rating_CBS_Pay_extreme$Portfolio_Title <- ifelse(Rating_CBS_Pay_extreme$Portfolio.Title == "Office of the Provost", 'Provost', Rating_CBS_Pay_extreme$Portfolio_Title)
Rating_CBS_Pay_extreme$Portfolio_Title <- ifelse(Rating_CBS_Pay_extreme$Portfolio.Title == "Vice President of Research", 'Research', Rating_CBS_Pay_extreme$Portfolio_Title)
Rating_CBS_Pay_extreme$Portfolio_Title <- ifelse(Rating_CBS_Pay_extreme$Portfolio.Title == "School of Humanities, Arts & Social Sciences", 'School of Humanities & Social Sci', Rating_CBS_Pay_extreme$Portfolio_Title)
Rating_CBS_Pay_extreme$Portfolio_Title <- ifelse(Rating_CBS_Pay_extreme$Portfolio.Title == "Off of Biotech & Interdiscip St Ctr", 'CBIS', Rating_CBS_Pay_extreme$Portfolio_Title)
Rating_CBS_Pay_extreme$Portfolio_Title <- ifelse(Rating_CBS_Pay_extreme$Portfolio.Title == "Graduate School", 'Graduate Education', Rating_CBS_Pay_extreme$Portfolio_Title)
# Rating_CBS_Pay_extreme$Portfolio_Title <- ifelse(Rating_CBS_Pay_extreme$Portfolio.Title == "", '', Rating_CBS_Pay_extreme$Portfolio_Title)
# Rating_CBS_Pay_extreme$Portfolio_Title <- ifelse(Rating_CBS_Pay_extreme$Portfolio.Title == "", '', Rating_CBS_Pay_extreme$Portfolio_Title)
# Rating_CBS_Pay_extreme$Portfolio_Title <- ifelse(Rating_CBS_Pay_extreme$Portfolio.Title == "", '', Rating_CBS_Pay_extreme$Portfolio_Title)
Rating_CBS_Pay_extreme <- Rating_CBS_Pay_extreme[!is.na(Rating_CBS_Pay_extreme$Portfolio_Title),]




summary(as.factor( Rating_CBS_Pay_extreme$Rating))

Rating_CBS_Pay_extreme$RIN <- as.factor(Rating_CBS_Pay_extreme$RIN)
Rating_CBS_Pay_extreme$Rating_Year <- as.factor(Rating_CBS_Pay_extreme$Rating_Year)
#Rating_CBS_Pay_extreme$Portfolio.Title <- as.factor(Rating_CBS_Pay_extreme$Portfolio.Title)
#Rating_CBS_Pay_extreme$Org.Title <- as.factor(Rating_CBS_Pay_extreme$Org.Title)
#Rating_CBS_Pay_extreme$Title <- as.factor(Rating_CBS_Pay_extreme$Title)
Rating_CBS_Pay_extreme$ECLS <- as.factor(Rating_CBS_Pay_extreme$ECLS)
Rating_CBS_Pay_extreme$Performance_Rating <- as.factor(Rating_CBS_Pay_extreme$Performance_Rating)
Rating_CBS_Pay_extreme$Portfolio.Title <- as.factor(Rating_CBS_Pay_extreme$Portfolio.Title)
Rating_CBS_Pay_extreme$Portfolio_Title <- as.factor(Rating_CBS_Pay_extreme$Portfolio_Title)
Rating_CBS_Pay_extreme$CITY <- as.factor(Rating_CBS_Pay_extreme$CITY)
Rating_CBS_Pay_extreme$ST <- as.factor(Rating_CBS_Pay_extreme$ST)
Rating_CBS_Pay_extreme$ZIP <- as.factor(Rating_CBS_Pay_extreme$ZIP)
Rating_CBS_Pay_extreme$CT <- as.factor(Rating_CBS_Pay_extreme$CT)
# Rating_CBS_Pay_extreme$DOB <- as.factor(Rating_CBS_Pay_extreme$DOB)
# Rating_CBS_Pay_extreme$DOH <- as.factor(Rating_CBS_Pay_extreme$DOH)
Rating_CBS_Pay_extreme$TS_ORG_TITLE <- as.factor(Rating_CBS_Pay_extreme$TS_ORG_TITLE)
Rating_CBS_Pay_extreme$JOB.TITLE <- as.factor(Rating_CBS_Pay_extreme$JOB.TITLE)
Rating_CBS_Pay_extreme$Rating <- as.factor(Rating_CBS_Pay_extreme$Rating)
Rating_CBS_Pay_extreme$YOB <- as.numeric(format(as.Date(Rating_CBS_Pay_extreme$DOB,format="%m/%d/%Y"),format="%Y"))
Rating_CBS_Pay_extreme$YOH <- as.numeric(format(as.Date(Rating_CBS_Pay_extreme$DOH,format="%m/%d/%Y"),format="%Y"))
# Rating_CBS_Pay_extreme$ <- as.factor(Rating_CBS_Pay_extreme$)




######only keep the regular full time employees############
summary(Rating_CBS_Pay_extreme)
Rating_CBS_Pay_extreme_after <- Rating_CBS_Pay_extreme[(Rating_CBS_Pay_extreme$Employee.Regular.Fixed.Term.Temp.Indicator == 'Regular'),]
Rating_CBS_Pay_extreme_after <- Rating_CBS_Pay_extreme_after[(Rating_CBS_Pay_extreme_after$Employee.Full.Time.Part.Time.Indicator == 'Full Time'),]




Rating_CBS_Pay_extreme_Exempt <- Rating_CBS_Pay_extreme_after[(Rating_CBS_Pay_extreme_after$Employee.Exempt.Non.Exempt.Indicator == 'Exempt'),]
Rating_CBS_Pay_extreme_Nonexempt <- Rating_CBS_Pay_extreme_after[(Rating_CBS_Pay_extreme_after$Employee.Exempt.Non.Exempt.Indicator == 'Non-Exempt'),]


summary(Rating_CBS_Pay_extreme_Exempt)
summary(Rating_CBS_Pay_extreme_Nonexempt)


Rating_CBS_Pay_extreme_Exempt_e <- Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating != 'Normal'),]
Rating_CBS_Pay_extreme_Nonexempt_e <- Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating != 'Normal'),]


require(ggplot2)
#####Analysis of all regular#######

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Portfolio.Title)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Org.Title)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Title)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=ECLS)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=CITY)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=ST)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=ZIP)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=ACT_PAY)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=JOB.TITLE)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=TS_ORG_TITLE)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=HOL_PAID)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=PTO_BAL)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=PTO_PAID)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=RTO_BAL)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=RTO_PAID)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=SCHED_PTO_TAKEN)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=UNSCHED_PTO_TAKEN)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=RTO_TAKEN)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=DISABILITY_TAKEN)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=DISABILITY.PAID)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Rating_Year)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Age)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Year_of_Service)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Rating_Year)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Current.Employee.Status)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Employee.Regular.Fixed.Term.Temp.Indicator)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Citizenship.Indicator)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Gender)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Ethnicity)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Job.Hourly.Rate)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Hours.Per.Day)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Hours.Per.Pay.Period)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Annual.Pay)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Pay.Factor)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Pays.Per.Year)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=YOB)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=YOH)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=Rating_Year)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# # qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=)+ 
# #   ggtitle("All Exempt Employees") +
# #   theme(text = element_text(size = 18, family="Impact"))

# # qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill=)+ 
# #   ggtitle("All Exempt Employees") +
# #   theme(text = element_text(size = 18, family="Impact"))


















############Analysis of Exempt with normal #####################

summary(Rating_CBS_Pay_extreme_Exempt)


qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Portfolio_Title))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  


qplot(Portfolio_Title, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(ECLS, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(ST, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

# qplot(Title, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))  

qplot(ECLS, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(CITY, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

# qplot(ACT_PAY, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating), xlim = c(0, 150000))+ 
qplot(ACT_PAY, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(TS_ORG_TITLE, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(HOL_PAID, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(DISABILITY_TAKEN, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(DISABILITY.PAID, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Age, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Year_of_Service, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Current.Employee.Status, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Employee.Eeo.Contract.Group.Description, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Employee.Type, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Citizenship.Indicator, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Employee.Full.Time.Part.Time.Indicator, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Gender, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Ethnicity, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Job.Hourly.Rate, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Hours.Per.Pay.Period, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Annual.Pay, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Pay.Factor, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Pays.Per.Year, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(YOB, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(YOH, data=Rating_CBS_Pay_extreme_Exempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

















############Analysis of Exempt without normal #####################

qplot(Portfolio_Title, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(ECLS, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(ST, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

# qplot(Title, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
#   ggtitle("Exempt Employees without Normal Grade") +
#   theme(text = element_text(size = 18, family="Impact"))  

qplot(ECLS, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(CITY, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(ACT_PAY, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(TS_ORG_TITLE, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(HOL_PAID, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(DISABILITY_TAKEN, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(DISABILITY.PAID, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Age, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Year_of_Service, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Current.Employee.Status, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Employee.Eeo.Contract.Group.Description, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Employee.Type, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Citizenship.Indicator, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Employee.Full.Time.Part.Time.Indicator, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Gender, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Ethnicity, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Job.Hourly.Rate, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Hours.Per.Pay.Period, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Annual.Pay, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Pay.Factor, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Pays.Per.Year, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(YOB, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(YOH, data=Rating_CBS_Pay_extreme_Exempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  



#explore relationship between Portfolio_Title and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$Portfolio_Title))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt$Portfolio_Title))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$Portfolio_Title))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt$Portfolio_Title))
s1/s2


#explore relationship between Portfolio_Title and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$Portfolio_Title))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt$Portfolio_Title))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$Portfolio_Title))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt$Portfolio_Title))
s1/s2



#explore relationship between ECLS and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$ECLS))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt$ECLS))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$ECLS))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt$ECLS))
s1/s2


#explore relationship between ECLS and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$ECLS))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt$ECLS))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$ECLS))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt$ECLS))
s1/s2




#explore relationship between ST and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$ST))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt$ST))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$ST))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt$ST))
s1/s2

#explore relationship between ST and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$ST))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt$ST))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$ST))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt$ST))
s1/s2


#explore relationship between HOL_PAID and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$HOL_PAID))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt$HOL_PAID))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$HOL_PAID))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt$HOL_PAID))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "HOL_PAID", ylab = "Best Rating Rate", main = "Exempt Employees")


#explore relationship between HOL_PAID and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$HOL_PAID))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt$HOL_PAID))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$HOL_PAID))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt$HOL_PAID))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "HOL_PAID", ylab = "Worst Rating Rate", main = "Exempt Employees")


#explore relationship between Age and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$Age))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Age > 23 & Rating_CBS_Pay_extreme_Exempt$Age < 69),]$Age))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$Age))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Age > 23 & Rating_CBS_Pay_extreme_Exempt$Age < 69),]$Age))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Age", ylab = "Best Rating Rate", main = "Exempt Employees")


#explore relationship between Age and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$Age))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Age < 71 & Rating_CBS_Pay_extreme_Exempt$Age > 24),] $Age))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$Age))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Age < 71 & Rating_CBS_Pay_extreme_Exempt$Age > 24),] $Age))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Age", ylab = "Worst Rating Rate", main = "Exempt Employees")



#explore relationship between ACT_PAY and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$ACT_PAY))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt$ACT_PAY))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$ACT_PAY))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt$ACT_PAY))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "ACT_PAY", ylab = "Best Rating Rate", main = "Exempt Employees")


#explore relationship between ACT_PAY and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$ACT_PAY))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt$ACT_PAY))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$ACT_PAY))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt$ACT_PAY))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "ACT_PAY", ylab = "Worst Rating Rate", main = "Exempt Employees")




#explore relationship between Year_of_Service and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$Year_of_Service))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Year_of_Service < 42),] $Year_of_Service))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$Year_of_Service))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Year_of_Service < 42),] $Year_of_Service))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Year_of_Service", ylab = "Best Rating Rate", main = "Exempt Employees")


#explore relationship between Year_of_Service and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$Year_of_Service))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Year_of_Service < 39),]$Year_of_Service))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$Year_of_Service))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Year_of_Service < 39),]$Year_of_Service))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Year_of_Service", ylab = "Worst Rating Rate", main = "Exempt Employees")



#explore relationship between Current.Employee.Status and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$Current.Employee.Status))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt$Current.Employee.Status))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$Current.Employee.Status))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt$Current.Employee.Status))
s1/s2

#explore relationship between Current.Employee.Status and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$Current.Employee.Status))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt$Current.Employee.Status))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$Current.Employee.Status))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt$Current.Employee.Status))
s1/s2


#explore relationship between Gender and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$Gender))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt$Gender))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$Gender))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt$Gender))
s1/s2

#explore relationship between Gender and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$Gender))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt$Gender))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$Gender))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt$Gender))
s1/s2

#explore relationship between Ethnicity and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$Ethnicity))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt$Ethnicity))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$Ethnicity))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt$Ethnicity))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Ethnicity", ylab = "Best Rating Rate", main = "Exempt Employees")


#explore relationship between Ethnicity and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$Ethnicity))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt$Ethnicity))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$Ethnicity))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt$Ethnicity))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Ethnicity", ylab = "Worst Rating Rate", main = "Exempt Employees")




#explore relationship between Job.Hourly.Rate and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$Job.Hourly.Rate))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt$Job.Hourly.Rate))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$Job.Hourly.Rate))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt$Job.Hourly.Rate))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Job.Hourly.Rate", ylab = "Best Rating Rate", main = "Exempt Employees")


#explore relationship between Job.Hourly.Rate and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$Job.Hourly.Rate))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt$Job.Hourly.Rate))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$Job.Hourly.Rate))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt$Job.Hourly.Rate))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Job.Hourly.Rate", ylab = "Worst Rating Rate", main = "Exempt Employees")


#explore relationship between YOB and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$YOB))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$YOB > 1941 & Rating_CBS_Pay_extreme_Exempt$YOB < 1988),] $YOB))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$YOB))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$YOB > 1941 & Rating_CBS_Pay_extreme_Exempt$YOB < 1988),] $YOB))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "YOB", ylab = "Best Rating Rate", main = "Exempt Employees")


#explore relationship between YOB and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$YOB))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$YOB > 1941 & Rating_CBS_Pay_extreme_Exempt$YOB < 1986),] $YOB))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$YOB))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$YOB > 1941 & Rating_CBS_Pay_extreme_Exempt$YOB < 1986),] $YOB))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "YOB", ylab = "Worst Rating Rate", main = "Exempt Employees")


#explore relationship between YOH and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$YOH))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$YOH >= 1971),] $YOH))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Best'),]$YOH))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$YOH >= 1971),] $YOH))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "YOH", ylab = "Best Rating Rate", main = "Exempt Employees")


#explore relationship between YOH and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$YOH))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$YOH >= 1972),]$YOH))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$Rating == 'Worst'),]$YOH))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt[(Rating_CBS_Pay_extreme_Exempt$YOH >= 1972),]$YOH))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "YOH", ylab = "Worst Rating Rate", main = "Exempt Employees")




#######################################################################################
































require(ggplot2)
#####Analysis of all Non-Exempt#######

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Portfolio_Title)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Org.Title)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Title)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=ECLS)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=CITY)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=ST)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=ZIP)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=ACT_PAY)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=JOB.TITLE)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=TS_ORG_TITLE)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=HOL_PAID)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=PTO_BAL)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=PTO_PAID)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=RTO_BAL)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=RTO_PAID)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=SCHED_PTO_TAKEN)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=UNSCHED_PTO_TAKEN)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=RTO_TAKEN)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=DISABILITY_TAKEN)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=DISABILITY.PAID)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Rating_Year)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Age)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Year_of_Service)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Rating_Year)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Current.Employee.Status)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Employee.Regular.Fixed.Term.Temp.Indicator)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Citizenship.Indicator)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Gender)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Ethnicity)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Job.Hourly.Rate)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Hours.Per.Day)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Hours.Per.Pay.Period)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Annual.Pay)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Pay.Factor)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Pays.Per.Year)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=YOB)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=YOH)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=Rating_Year)+ 
#   ggtitle("All Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))

# # qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=)+ 
# #   ggtitle("All Exempt Employees") +
# #   theme(text = element_text(size = 18, family="Impact"))

# # qplot(as.factor(Rating), data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill=)+ 
# #   ggtitle("All Exempt Employees") +
# #   theme(text = element_text(size = 18, family="Impact"))


















############Analysis of Exempt with normal #####################

qplot(Portfolio_Title, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  


qplot(ECLS, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(ST, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

# qplot(Title, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
#   ggtitle("All Non-Exempt Employees") +
#   theme(text = element_text(size = 18, family="Impact"))  

qplot(CITY, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(ACT_PAY, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(TS_ORG_TITLE, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(HOL_PAID, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(DISABILITY_TAKEN, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(DISABILITY.PAID, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Age, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Year_of_Service, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Current.Employee.Status, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Employee.Eeo.Contract.Group.Description, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Employee.Type, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Citizenship.Indicator, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Employee.Full.Time.Part.Time.Indicator, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Gender, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Ethnicity, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Job.Hourly.Rate, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Hours.Per.Pay.Period, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Annual.Pay, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Pay.Factor, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Pays.Per.Year, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(YOB, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(YOH, data=Rating_CBS_Pay_extreme_Nonexempt, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("All Non-Exempt Employees") +
  theme(text = element_text(size = 18, family="Impact"))  








############Analysis of Exempt without normal #####################


qplot(Portfolio_Title, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  


qplot(ECLS, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(ST, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

# qplot(Title, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
#   ggtitle("Non-Exempt Employees without Normal Grade") +
#   theme(text = element_text(size = 18, family="Impact"))  

qplot(CITY, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(ACT_PAY, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(TS_ORG_TITLE, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(HOL_PAID, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(DISABILITY_TAKEN, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(DISABILITY.PAID, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Age, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Year_of_Service, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Current.Employee.Status, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Employee.Eeo.Contract.Group.Description, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Employee.Type, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Citizenship.Indicator, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Employee.Full.Time.Part.Time.Indicator, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Gender, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Ethnicity, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Job.Hourly.Rate, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Hours.Per.Pay.Period, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Annual.Pay, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Pay.Factor, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Pays.Per.Year, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(YOB, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(YOH, data=Rating_CBS_Pay_extreme_Nonexempt_e, geom="histogram", fill= as.factor(Rating))+ 
  ggtitle("Non-Exempt Employees without Normal Grade") +
  theme(text = element_text(size = 18, family="Impact"))    









#explore relationship between Portfolio_Title and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$Portfolio_Title))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Portfolio_Title))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$Portfolio_Title))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Portfolio_Title))
s1/s2


#explore relationship between Portfolio_Title and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$Portfolio_Title))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Portfolio_Title))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$Portfolio_Title))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Portfolio_Title))
s1/s2



#explore relationship between ECLS and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$ECLS))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$ECLS))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$ECLS))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$ECLS))
s1/s2


#explore relationship between ECLS and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$ECLS))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$ECLS))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$ECLS))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$ECLS))
s1/s2




#explore relationship between ST and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$ST))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$ST))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$ST))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$ST))
s1/s2

#explore relationship between ST and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$ST))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$ST))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$ST))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$ST))
s1/s2


#explore relationship between HOL_PAID and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$HOL_PAID))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$HOL_PAID))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$HOL_PAID))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$HOL_PAID))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "HOL_PAID", ylab = "Best Rating Rate", main = "Exempt Employees")


#explore relationship between HOL_PAID and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$HOL_PAID))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$HOL_PAID))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$HOL_PAID))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$HOL_PAID))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "HOL_PAID", ylab = "Worst Rating Rate", main = "Exempt Employees")


#explore relationship between Age and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$Age))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Age < 71 & Rating_CBS_Pay_extreme_Nonexempt$Age > 22),] $Age))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$Age))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Age < 71 & Rating_CBS_Pay_extreme_Nonexempt$Age > 22),] $Age))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Age", ylab = "Best Rating Rate", main = "Exempt Employees")


#explore relationship between Age and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$Age))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Age < 67),] $Age))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$Age))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Age < 67),] $Age))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Age", ylab = "Worst Rating Rate", main = "Exempt Employees")



#explore relationship between ACT_PAY and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$ACT_PAY))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$ACT_PAY))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$ACT_PAY))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$ACT_PAY))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "ACT_PAY", ylab = "Best Rating Rate", main = "Exempt Employees")


#explore relationship between ACT_PAY and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$ACT_PAY))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$ACT_PAY))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$ACT_PAY))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$ACT_PAY))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "ACT_PAY", ylab = "Worst Rating Rate", main = "Exempt Employees")




#explore relationship between Year_of_Service and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$Year_of_Service))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Year_of_Service < 41),] $Year_of_Service))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$Year_of_Service))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Year_of_Service < 41),] $Year_of_Service))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Year_of_Service", ylab = "Best Rating Rate", main = "Exempt Employees")


#explore relationship between Year_of_Service and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$Year_of_Service))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Year_of_Service < 26),] $Year_of_Service))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$Year_of_Service))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Year_of_Service < 26),] $Year_of_Service))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Year_of_Service", ylab = "Worst Rating Rate", main = "Exempt Employees")



#explore relationship between Current.Employee.Status and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$Current.Employee.Status))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Current.Employee.Status))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$Current.Employee.Status))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Current.Employee.Status))
s1/s2

#explore relationship between Current.Employee.Status and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$Current.Employee.Status))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Current.Employee.Status))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$Current.Employee.Status))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Current.Employee.Status))
s1/s2


#explore relationship between Gender and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$Gender))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Gender))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$Gender))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Gender))
s1/s2

#explore relationship between Gender and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$Gender))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Gender))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$Gender))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Gender))
s1/s2

#explore relationship between Ethnicity and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$Ethnicity))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Ethnicity))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$Ethnicity))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Ethnicity))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Ethnicity", ylab = "Best Rating Rate", main = "Non-Exempt Employees")


#explore relationship between Ethnicity and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$Ethnicity))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Ethnicity))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$Ethnicity))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Ethnicity))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Ethnicity", ylab = "Worst Rating Rate", main = "Exempt Employees")




#explore relationship between Job.Hourly.Rate and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$Job.Hourly.Rate))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Job.Hourly.Rate))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$Job.Hourly.Rate))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Job.Hourly.Rate))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Job.Hourly.Rate", ylab = "Best Rating Rate", main = "Exempt Employees")


#explore relationship between Job.Hourly.Rate and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$Job.Hourly.Rate))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Job.Hourly.Rate))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$Job.Hourly.Rate))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Job.Hourly.Rate))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Job.Hourly.Rate", ylab = "Worst Rating Rate", main = "Exempt Employees")


#explore relationship between YOB and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$YOB))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$YOB < 1986 & Rating_CBS_Pay_extreme_Nonexempt$YOB > 1940),] $YOB))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$YOB))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$YOB < 1986 & Rating_CBS_Pay_extreme_Nonexempt$YOB > 1940),] $YOB))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "YOB", ylab = "Best Rating Rate", main = "Exempt Employees")


#explore relationship between YOB and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$YOB))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$YOB > 1943 & Rating_CBS_Pay_extreme_Nonexempt$YOB < 1991),] $YOB))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$YOB))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$YOB > 1943 & Rating_CBS_Pay_extreme_Nonexempt$YOB < 1991),] $YOB))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "YOB", ylab = "Worst Rating Rate", main = "Exempt Employees")


#explore relationship between YOH and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$YOH))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$YOH >= 1966),] $YOH))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$YOH))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$YOH >= 1966),] $YOH))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "YOH", ylab = "Best Rating Rate", main = "Exempt Employees")


#explore relationship between YOH and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$YOH))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$YOH))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$YOH))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$YOH))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "YOH", ylab = "Worst Rating Rate", main = "Exempt Employees")




#######################################################################################




summary(Rating08$Portfolio.Title)
summary(as.factor(Rating08$Portfolio.Title))















###############Final Presentation###############


Rating_CBS_Pay_extreme_Exempt_test <- Rating_CBS_Pay_extreme_Exempt
Rating_CBS_Pay_extreme_Exempt_test$Count <- 1

Rating_CBS_Pay_extreme_Nonexempt_test <- Rating_CBS_Pay_extreme_Nonexempt
Rating_CBS_Pay_extreme_Nonexempt_test$Count <- 1


#explore relationship between YOH and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Worst' & Rating_CBS_Pay_extreme_Exempt_test$Year_of_Service == 1),]$Count))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Year_of_Service == 1),] $Count))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Worst' & Rating_CBS_Pay_extreme_Exempt_test$Year_of_Service == 1),]$Count))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Year_of_Service == 1),] $Count))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "YOH", ylab = "Worst Rating Rate", main = "Exempt Employees")



#explore relationship between YOH and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Worst' & Rating_CBS_Pay_extreme_Exempt_test$Year_of_Service != 1),]$Count))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Year_of_Service != 1),] $Count))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Worst' & Rating_CBS_Pay_extreme_Exempt_test$Year_of_Service != 1),]$Count))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Year_of_Service != 1),] $Count))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "YOH", ylab = "Worst Rating Rate", main = "Exempt Employees")





#explore relationship between YOH and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Best' & Rating_CBS_Pay_extreme_Exempt_test$Year_of_Service < 4),]$Count))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Year_of_Service < 4),] $Count))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Best' & Rating_CBS_Pay_extreme_Exempt_test$Year_of_Service < 4),]$Count))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Year_of_Service < 4),] $Count))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "YOH", ylab = "Worst Rating Rate", main = "Exempt Employees")


#explore relationship between YOH and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Best' & Rating_CBS_Pay_extreme_Exempt_test$Year_of_Service >= 4),]$Count))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Year_of_Service >= 4),] $Count))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Best' & Rating_CBS_Pay_extreme_Exempt_test$Year_of_Service >= 4),]$Count))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Year_of_Service >= 4),] $Count))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "YOH", ylab = "Worst Rating Rate", main = "Exempt Employees")





















s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt_test[(Rating_CBS_Pay_extreme_Nonexempt_test$Rating == 'Worst' & Rating_CBS_Pay_extreme_Nonexempt_test$Age < 25),]$Count))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt_test[(Rating_CBS_Pay_extreme_Nonexempt_test$Age < 25),] $Count))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt_test[(Rating_CBS_Pay_extreme_Nonexempt_test$Rating == 'Worst' & Rating_CBS_Pay_extreme_Nonexempt_test$Age < 25),]$Count))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt_test[(Rating_CBS_Pay_extreme_Nonexempt_test$Age < 25),] $Count))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "YOH", ylab = "Worst Rating Rate", main = "Exempt Employees")


s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt_test[(Rating_CBS_Pay_extreme_Nonexempt_test$Rating == 'Worst' & Rating_CBS_Pay_extreme_Nonexempt_test$Age >= 25),]$Count))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt_test[(Rating_CBS_Pay_extreme_Nonexempt_test$Age >= 25),] $Count))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt_test[(Rating_CBS_Pay_extreme_Nonexempt_test$Rating == 'Worst' & Rating_CBS_Pay_extreme_Nonexempt_test$Age >= 25),]$Count))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt_test[(Rating_CBS_Pay_extreme_Nonexempt_test$Age >= 25),] $Count))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "YOH", ylab = "Worst Rating Rate", main = "Exempt Employees")





s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt_test[(Rating_CBS_Pay_extreme_Nonexempt_test$Rating == 'Worst' & Rating_CBS_Pay_extreme_Nonexempt_test$Year_of_Service == 1),]$Count))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt_test[(Rating_CBS_Pay_extreme_Nonexempt_test$Year_of_Service == 1),] $Count))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt_test[(Rating_CBS_Pay_extreme_Nonexempt_test$Rating == 'Worst' & Rating_CBS_Pay_extreme_Nonexempt_test$Year_of_Service == 1),]$Count))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt_test[(Rating_CBS_Pay_extreme_Nonexempt_test$Year_of_Service == 1),] $Count))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "YOH", ylab = "Worst Rating Rate", main = "Exempt Employees")



s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt_test[(Rating_CBS_Pay_extreme_Nonexempt_test$Rating == 'Worst' & Rating_CBS_Pay_extreme_Nonexempt_test$Year_of_Service > 1),]$Count))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt_test[(Rating_CBS_Pay_extreme_Nonexempt_test$Year_of_Service > 1),] $Count))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt_test[(Rating_CBS_Pay_extreme_Nonexempt_test$Rating == 'Worst' & Rating_CBS_Pay_extreme_Nonexempt_test$Year_of_Service > 1),]$Count))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt_test[(Rating_CBS_Pay_extreme_Nonexempt_test$Year_of_Service > 1),] $Count))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "YOH", ylab = "Worst Rating Rate", main = "Exempt Employees")





Rating_CBS_Pay_extreme_Exempt_test$HighRating <- ifelse(Rating_CBS_Pay_extreme_Exempt_test$Rating == "Best", 1, 0)
Rating_CBS_Pay_extreme_Exempt_test$BadRating <- ifelse(Rating_CBS_Pay_extreme_Exempt_test$Rating == "Worst", 1, 0)

Rating_CBS_Pay_extreme_Nonexempt_test$HighRating <- ifelse(Rating_CBS_Pay_extreme_Nonexempt_test$Rating == "Best", 1, 0)
Rating_CBS_Pay_extreme_Nonexempt_test$BadRating <- ifelse(Rating_CBS_Pay_extreme_Nonexempt_test$Rating == "Worst", 1, 0)


View(Rating_CBS_Pay_extreme_Exempt_test)

qplot(Year_of_Service, data=Rating_CBS_Pay_extreme_Exempt_test, geom="histogram", fill=as.factor(BadRating))+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(Year_of_Service, data=Rating_CBS_Pay_extreme_Exempt_test, geom="histogram", fill=as.factor(HighRating))+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(Current.Employee.Status, data=Rating_CBS_Pay_extreme_Exempt_test, geom="histogram", fill=as.factor(HighRating))+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(Current.Employee.Status, data=Rating_CBS_Pay_extreme_Exempt_test, geom="histogram", fill=as.factor(BadRating))+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(Gender, data=Rating_CBS_Pay_extreme_Exempt_test, geom="histogram", fill=as.factor(HighRating))+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(Gender, data=Rating_CBS_Pay_extreme_Exempt_test, geom="histogram", fill=as.factor(BadRating))+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(Ethnicity, data=Rating_CBS_Pay_extreme_Exempt_test, geom="histogram", fill=as.factor(HighRating))+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(Ethnicity, data=Rating_CBS_Pay_extreme_Exempt_test, geom="histogram", fill=as.factor(BadRating))+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))










###Non-Exempt
qplot(Age, data=Rating_CBS_Pay_extreme_Nonexempt_test, geom="histogram", fill=as.factor(HighRating))+ 
  ggtitle("All Non-Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(Age, data=Rating_CBS_Pay_extreme_Nonexempt_test, geom="histogram", fill=as.factor(BadRating))+ 
  ggtitle("All Non-Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(Year_of_Service, data=Rating_CBS_Pay_extreme_Nonexempt_test, geom="histogram", fill=as.factor(HighRating))+ 
  ggtitle("All Non-Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(Year_of_Service, data=Rating_CBS_Pay_extreme_Nonexempt_test, geom="histogram", fill=as.factor(BadRating))+ 
  ggtitle("All Non-Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(Current.Employee.Status, data=Rating_CBS_Pay_extreme_Nonexempt_test, geom="histogram", fill=as.factor(HighRating))+ 
  ggtitle("All Non-Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(Current.Employee.Status, data=Rating_CBS_Pay_extreme_Nonexempt_test, geom="histogram", fill=as.factor(BadRating))+ 
  ggtitle("All Non-Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(Ethnicity, data=Rating_CBS_Pay_extreme_Nonexempt_test, geom="histogram", fill=as.factor(HighRating))+ 
  ggtitle("All Non-Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(Ethnicity, data=Rating_CBS_Pay_extreme_Nonexempt_test, geom="histogram", fill=as.factor(BadRating))+ 
  ggtitle("All Non-Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))






#explore relationship between Gender and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Best' & Rating_CBS_Pay_extreme_Exempt_test$Gender == "Male"),]$Count))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Gender == "Male"),] $Count))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Best' & Rating_CBS_Pay_extreme_Exempt_test$Gender == "Male"),]$Count))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Gender == "Male"),] $Count))
s1/s2

#explore relationship between Gender and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Best' & Rating_CBS_Pay_extreme_Exempt_test$Gender == "Female"),]$Count))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Gender == "Female"),] $Count))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Best' & Rating_CBS_Pay_extreme_Exempt_test$Gender == "Female"),]$Count))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Gender == "Female"),] $Count))
s1/s2






#explore relationship between Gender and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Worst' & Rating_CBS_Pay_extreme_Exempt_test$Gender == "Male"),]$Count))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Gender == "Male"),] $Count))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Worst' & Rating_CBS_Pay_extreme_Exempt_test$Gender == "Male"),]$Count))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Gender == "Male"),] $Count))
s1/s2

x1 <- s1
n1 <- s2

#explore relationship between Gender and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Worst' & Rating_CBS_Pay_extreme_Exempt_test$Gender == "Female"),]$Count))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Gender == "Female"),] $Count))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Worst' & Rating_CBS_Pay_extreme_Exempt_test$Gender == "Female"),]$Count))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Gender == "Female"),] $Count))
s1/s2

x2 <- s1
n2 <- s2




#explore relationship between Gender and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Best' & Rating_CBS_Pay_extreme_Exempt_test$Gender == "Male"),]$Count))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Gender == "Male"),] $Count))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Best' & Rating_CBS_Pay_extreme_Exempt_test$Gender == "Male"),]$Count))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Gender == "Male"),] $Count))
s1/s2

x1 <- s1
n1 <- s2

#explore relationship between Gender and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Best' & Rating_CBS_Pay_extreme_Exempt_test$Gender == "Female"),]$Count))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Gender == "Female"),] $Count))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Best' & Rating_CBS_Pay_extreme_Exempt_test$Gender == "Female"),]$Count))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Gender == "Female"),] $Count))
s1/s2

x2 <- s1
n2 <- s2






prop.test(x = c(x1, x2), n = c(n1, n2), correct = FALSE)






#explore relationship between Ethnicity and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Best'),]$Ethnicity))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test$Ethnicity))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Best'),]$Ethnicity))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test$Ethnicity))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Ethnicity", ylab = "Best Rating Rate", main = "Non-Exempt Employees")


#explore relationship between Ethnicity and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Worst'),]$Ethnicity))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test$Ethnicity))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test[(Rating_CBS_Pay_extreme_Exempt_test$Rating == 'Worst'),]$Ethnicity))
summary(as.factor(Rating_CBS_Pay_extreme_Exempt_test$Ethnicity))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Ethnicity", ylab = "Worst Rating Rate", main = "Exempt Employees")


#####Ethnicity test######
prop.test(x = c(16, 9, 3, 618), n = c(145, 125, 57, 3657), correct = FALSE)
prop.test(x = c(2, 5, 1, 69), n = c(145, 125, 57, 3657), correct = FALSE)












#explore relationship between Ethnicity and Best Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$Ethnicity))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Ethnicity))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Best'),]$Ethnicity))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Ethnicity))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Ethnicity", ylab = "Best Rating Rate", main = "Non-Exempt Employees")


#explore relationship between Ethnicity and Worst Rating ############
s1 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$Ethnicity))
s2 <- summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Ethnicity))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt[(Rating_CBS_Pay_extreme_Nonexempt$Rating == 'Worst'),]$Ethnicity))
summary(as.factor(Rating_CBS_Pay_extreme_Nonexempt$Ethnicity))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Ethnicity", ylab = "Worst Rating Rate", main = "Exempt Employees")


#####Ethnicity test######
prop.test(x = c(13, 20, 4, 396), n = c(79, 226, 117, 3027), correct = FALSE)
prop.test(x = c(2, 13, 6, 84), n = c(79, 226, 117, 3027), correct = FALSE)





