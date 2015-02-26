summary(train_pay_10years_Regular)

summary(train_pay_10years_Regular$Course)

train_pay_10years_Regular$Course.Category <- as.factor(train_pay_10years_Regular$Course.Category)

summary(train_pay_10years_Regular$Course.Category)

train_pay_10years_Regular_Leadership <- train_pay_10years_Regular[(train_pay_10years_Regular$Course.Category == "HR-Professional Development- Leadership Skills Series"),]

train_pay_10years_Regular_Non_Leadership <- train_pay_10years_Regular[(train_pay_10years_Regular$Course.Category != "HR-Professional Development- Leadership Skills Series"),]

train_pay_10years_Regular_CS <- train_pay_10years_Regular[(train_pay_10years_Regular$Course.Category == "Computer Technology"),]
train_pay_10years_Regular_Comp_Tech <- train_pay_10years_Regular[(train_pay_10years_Regular$Course.Category == c("Computer Technology", "Computer Technology > Rensselaer In-House Computer Workshops")),]
train_pay_10years_Regular_Non_Comp_Tech <- train_pay_10years_Regular[(train_pay_10years_Regular$Course.Category != c("Computer Technology", "Computer Technology > Rensselaer In-House Computer Workshops")),]

train_pay_10years_Regular$Comp_Tech <- ifelse(train_pay_10years_Regular$Course.Category == c("Computer Technology", "Computer Technology > Rensselaer In-House Computer Workshops"), 1, 0)
train_pay_10years_Regular$Leadership <- ifelse(train_pay_10years_Regular$Course.Category == "HR-Professional Development- Leadership Skills Series", 1, 0)
train_pay_10years_Regular$EHS <- ifelse(grepl("EHS", train_pay_10years_Regular$Course), 1, 0)





#####Analysis of all regular#######
qplot(as.factor(Comp_Tech), data=train_pay_10years_Regular, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Comp_Tech), data=train_pay_10years_Regular, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Comp_Tech), data=train_pay_10years_Regular_Comp_Tech, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Comp_Tech), data=train_pay_10years_Regular, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Comp_Tech), data=train_pay_10years_Regular, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(as.factor(Comp_Tech), data=train_pay_10years_Regular, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Comp_Tech), data=train_pay_10years_Regular, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Comp_Tech), data=train_pay_10years_Regular, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Comp_Tech), data=train_pay_10years_Regular, geom="histogram", fill=Citizenship.Indicator)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Comp_Tech), data=train_pay_10years_Regular, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Comp_Tech), data=train_pay_10years_Regular, geom="histogram", fill=Gender)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Comp_Tech), data=train_pay_10years_Regular, geom="histogram", fill=Ethnicity)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Comp_Tech), data=train_pay_10years_Regular, geom="histogram", fill=as.factor(Hired))+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Comp_Tech), data=train_pay_10years_Regular, geom="histogram", fill=as.factor(Start.Year))+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Comp_Tech), data=train_pay_10years_Regular, geom="histogram", fill=as.factor(End.Year))+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Annual.Increase.Rate, data=train_pay_10years_Regular, geom="histogram", fill= as.factor(Comp_Tech))+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))  


qplot(Annual.Increase.Rate, data=train_pay_10years_Regular[(train_pay_10years_Regular$Comp_Tech == 1),], geom="histogram", fill= as.factor(Comp_Tech))+ 
  ggtitle("All Exempt Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))  





summary(train_pay_10years_Regular$Comp_Tech)
summary(as.factor(train_pay_10years_Regular$Comp_Tech))
summary(train_pay_10years_Regular)
summary(train_pay_10years_Regular$Course.Category)


#######################violin#######################
######Analysis of Terminated regular employee###########
p <- ggplot(train_pay_10years_Regular, aes(x=as.factor(Comp_Tech), y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("All Employee Taken Computer Technology Course") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(train_pay_10years_Regular, aes(x=as.factor(Comp_Tech), y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("All Employee Taken Computer Technology Course") +
  theme(text = element_text(size = 18, family="Impact"))  

p <- ggplot(train_pay_10years_Regular, aes(x=as.factor(Comp_Tech), y=Hired))
p + geom_violin()+ 
  ggtitle("All Employee Taken Computer Technology Course") +
  theme(text = element_text(size = 18, family="Impact")) 

p <- ggplot(na.omit(train_pay_10years_Regular), aes(x=as.factor(Comp_Tech), y=Employee.Type))
p + geom_violin()+ 
  ggtitle("All Employee Taken Computer Technology Course") +
  theme(text = element_text(size = 18, family="Impact"))      

######Analysis of Terminated regular employee###########
p <- ggplot(train_pay_10years_Regular, aes(x=as.factor(Leadership), y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("All Employee Taken Leadership Course") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(train_pay_10years_Regular, aes(x=as.factor(Leadership), y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("All Employee Taken Leadership Course") +
  theme(text = element_text(size = 18, family="Impact"))  

p <- ggplot(train_pay_10years_Regular, aes(x=as.factor(Leadership), y=Hired))
p + geom_violin()+ 
  ggtitle("All Employee Taken Leadership Course") +
  theme(text = element_text(size = 18, family="Impact"))    


######Analysis of Terminated regular employee###########
p <- ggplot(train_pay_10years_Regular, aes(x=as.factor(EHS), y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("All Employee Taken EHS Course") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(train_pay_10years_Regular, aes(x=as.factor(EHS), y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("All Employee Taken EHS Course") +
  theme(text = element_text(size = 18, family="Impact"))  

p <- ggplot(train_pay_10years_Regular, aes(x=as.factor(EHS), y=Hired))
p + geom_violin()+ 
  ggtitle("All Employee Taken EHS Course") +
  theme(text = element_text(size = 18, family="Impact"))      

p <- ggplot(train_pay_10years_Regular, aes(x=as.factor(EHS), y=Employee.Type))
p + geom_violin()+ 
  ggtitle("All Employee Taken Computer Technology Course") +
  theme(text = element_text(size = 18, family="Impact"))      











#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(train_pay_10years_Regular[(train_pay_10years_Regular$Current.Employee.Status == "Active"),]$Comp_Tech))
s2 <- summary(as.factor(train_pay_10years_Regular$Comp_Tech))
summary(as.factor(train_pay_10years_Regular[(train_pay_10years_Regular$Current.Employee.Status == "Active"),]$Comp_Tech))
summary(as.factor(train_pay_10years_Regular$Comp_Tech))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Computer Technology Course")




#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(train_pay_10years_Regular[(train_pay_10years_Regular$Current.Employee.Status == "Active"),]$Leadership))
s2 <- summary(as.factor(train_pay_10years_Regular$Leadership))
summary(as.factor(train_pay_10years_Regular[(train_pay_10years_Regular$Current.Employee.Status == "Active"),]$Leadership))
summary(as.factor(train_pay_10years_Regular$Leadership))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")




















##############Course Taken by each employee#####
train_pay_10years_Regular_Courses <- train_pay_10years_Regular

EHS_agg <- aggregate(EHS ~ RIN, data = train_pay_10years_Regular_Courses, sum)
Comp_Tech_agg <- aggregate(Comp_Tech ~ RIN, data = train_pay_10years_Regular_Courses, sum)
Leadership_agg <- aggregate(Leadership ~ RIN, data = train_pay_10years_Regular_Courses, sum)

str(EHS_agg)
str(courseTaken10years_courses)
str(a)


require(plyr)
a <- count(as.factor(train_pay_10years_Regular_Courses$RIN))
a

courseTaken10years_courses <- data.frame(RIN=a$x, CoursesTaken=a$freq)
courseTaken10years_courses


merg3 <- function(x, y){
  z <- (merge(x, y, by = c("RIN")))
  #z <- z[!is.na(z$Course),]
  z <- z[!is.na(z$RIN),]
  #z <- z[!is.na(z$Annual.Increase.Rate),]
  
  return(z)
}

View(courseTaken10years_pay_Regular_couses)

####################################################################################################
View(courseTaken10years_pay_Regular_couses)
# Build a courseTaken10years_pay_Regular_couses that include the annual courses taken, sum of EHS, Comp_Tech, and Leadership
courseTaken10years_pay_Regular_couses <- merge(courseTaken10years_courses, pay3.regular.rate, by.x = c("RIN"), by.y = c("Rensselaer.Id.Number"))
courseTaken10years_pay_Regular_couses <- merge(courseTaken10years_pay_Regular_couses, EHS_agg, by = c("RIN"))
courseTaken10years_pay_Regular_couses <- merge(courseTaken10years_pay_Regular_couses, Comp_Tech_agg, by = c("RIN"))
courseTaken10years_pay_Regular_couses <- merge(courseTaken10years_pay_Regular_couses, Leadership_agg, by = c("RIN"))

courseTaken10years_pay_Regular_couses$Indicator_EHS <- ifelse(courseTaken10years_pay_Regular_couses$EHS > 0, 1, 0)
courseTaken10years_pay_Regular_couses$Indicator_Comp_Tech <- ifelse(courseTaken10years_pay_Regular_couses$Comp_Tech > 0, 1, 0)
courseTaken10years_pay_Regular_couses$Indicator_Leadership <- ifelse(courseTaken10years_pay_Regular_couses$Leadership > 0, 1, 0)


courseTaken10years_CBS_Regular_couses <- merge(courseTaken10years_courses, cbs.pay.regular, by.x = c("RIN"), by.y = c("Rensselaer.Id.Number"))
courseTaken10years_CBS_Regular_couses <- merge(courseTaken10years_CBS_Regular_couses, EHS_agg, by = c("RIN"))
courseTaken10years_CBS_Regular_couses <- merge(courseTaken10years_CBS_Regular_couses, Comp_Tech_agg, by = c("RIN"))
courseTaken10years_CBS_Regular_couses <- merge(courseTaken10years_CBS_Regular_couses, Leadership_agg, by = c("RIN"))


###################################################################################################
#take a look of who taken EHS, Comp_Tech and Leadership courses

#a whole picture of employee group
summary(courseTaken10years_pay_Regular_couses$Employee.Eeo.Contract.Group.Description)
summary(courseTaken10years_CBS_Regular_couses$JOB.TITLE)
summary(courseTaken10years_pay_Regular_couses)
#who didn't need to take EHS
summary(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$EHS == 0), ])
summary(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$EHS == 0), ]$Employee.Eeo.Contract.Group.Description)
summary(courseTaken10years_CBS_Regular_couses[(courseTaken10years_CBS_Regular_couses$EHS == 0), ]$JOB.TITLE)
summary(courseTaken10years_CBS_Regular_couses[(courseTaken10years_CBS_Regular_couses$EHS == 0), ]$TS_ORG_TITLE)


#who takes Comp_Tech
summary(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Comp_Tech > 0), ])
summary(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Comp_Tech > 0), ]$Employee.Eeo.Contract.Group.Description)
summary(courseTaken10years_CBS_Regular_couses[(courseTaken10years_CBS_Regular_couses$Comp_Tech > 0), ]$JOB.TITLE)
summary(courseTaken10years_CBS_Regular_couses[(courseTaken10years_CBS_Regular_couses$Comp_Tech > 0), ]$TS_ORG_TITLE)

#who takes Leadership
summary(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Leadership > 0), ])
summary(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Leadership > 0), ]$Employee.Eeo.Contract.Group.Description)
summary(courseTaken10years_CBS_Regular_couses[(courseTaken10years_CBS_Regular_couses$Leadership > 0), ]$JOB.TITLE)
summary(courseTaken10years_CBS_Regular_couses[(courseTaken10years_CBS_Regular_couses$Leadership > 0), ]$TS_ORG_TITLE)



#courseTaken10years_pay_Regular_couses <- merg2(courseTaken10years_pay_Regular_couses, CBSFY12)

courseTaken10years_pay_Regular_couses$AnnualCourseTaken <- courseTaken10years_pay_Regular_couses$CoursesTaken/courseTaken10years_pay_Regular_couses$Hired
ceiling(courseTaken10years_pay_Regular_couses$AnnualCourseTaken)
courseTaken10years_pay_Regular_couses$AnnualCourseTaken <- ifelse(courseTaken10years_pay_Regular_couses$Hired == 0, courseTaken10years_pay_Regular_couses$CoursesTaken, ceiling(courseTaken10years_pay_Regular_couses$AnnualCourseTaken))
summary(courseTaken10years_pay_Regular_couses$AnnualCourseTaken)

str(courseTaken10years_pay_Regular_couses)

courseTaken10years_pay_Regular_couses <- asFactor2(courseTaken10years_pay_Regular_couses)
courseTaken10years_pay_Regular_couses <- asFactor(courseTaken10years_pay_Regular_couses)

courseTest <- merge(courseTaken10years_pay_Regular_couses, trainingAll12, by = c("RIN"), all = T)

lowerAge <- function(x){
  x$Age <- x$Age - 2
  x$Hired <- x$Hired -2
  return(x)
}

#courseTaken10years_pay_Regular_couses <- lowerAge(courseTaken10years_pay_Regular_couses)

head(courseTaken10years_pay_Regular_couses)





######Analysis of Terminated regular employee###########
p <- ggplot(courseTaken10years_pay_Regular_couses, aes(x=as.factor(EHS), y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("All Employee Taken EHS Course") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_couses, aes(x=as.factor(EHS), y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("All Employee Taken EHS Course") +
  theme(text = element_text(size = 18, family="Impact"))  

p <- ggplot(courseTaken10years_pay_Regular_couses, aes(x=as.factor(EHS), y=Hired))
p + geom_violin()+ 
  ggtitle("All Employee Taken EHS Course") +
  theme(text = element_text(size = 18, family="Impact"))      

p <- ggplot(courseTaken10years_pay_Regular_couses, aes(x=as.factor(EHS), y=Employee.Type))
p + geom_violin()+ 
  ggtitle("All Employee Taken Computer Technology Course") +
  theme(text = element_text(size = 18, family="Impact"))      




#####Analysis of all regular of Comp_Tech Taken#######


qplot(as.factor(Indicator_Comp_Tech), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Regular Employee Taken Comp_Tech") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(as.factor(Indicator_Comp_Tech), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Regular Employee Taken Comp_Tech") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Indicator_Comp_Tech), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Regular Employee Taken Comp_Tech") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Indicator_Comp_Tech), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Regular Employee Taken Comp_Tech") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Indicator_Comp_Tech), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Citizenship.Indicator)+ 
  ggtitle("All Regular Employee Taken Comp_Tech") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Indicator_Comp_Tech), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
  ggtitle("All Regular Employee Taken Comp_Tech") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Indicator_Comp_Tech), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Gender)+ 
  ggtitle("All Regular Employee Taken Comp_Tech") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Indicator_Comp_Tech), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Ethnicity)+ 
  ggtitle("All Regular Employee Taken Comp_Tech") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Indicator_Comp_Tech), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=as.factor(Hired))+ 
  ggtitle("All Regular Employee Taken Comp_Tech") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Indicator_Comp_Tech), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=as.factor(Start.Year))+ 
  ggtitle("All Regular Employee Taken Comp_Tech") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Indicator_Comp_Tech), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=as.factor(End.Year))+ 
  ggtitle("All Regular Employee Taken Comp_Tech") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Start.Annual.Pay, data=courseTaken10years_pay_Regular_couses, geom="histogram", fill= as.factor(Indicator_Comp_Tech))+ 
  ggtitle("All Regular Employee Taken Comp_Tech") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(End.Annual.Pay, data=courseTaken10years_pay_Regular_couses, geom="histogram", fill= as.factor(Indicator_Comp_Tech))+ 
  ggtitle("All Regular Employee Taken Comp_Tech") +
  theme(text = element_text(size = 18, family="Impact"))  


qplot(Annual.Increase.Rate, data=courseTaken10years_pay_Regular_couses, geom="histogram", fill= as.factor(Indicator_Comp_Tech))+ 
  ggtitle("All Regular Employee Taken Comp_Tech") +
  theme(text = element_text(size = 18, family="Impact"))  

View(courseTaken10years_pay_Regular_couses)
















#####Analysis of all regular of Leadership Taken#######


qplot(as.factor(Indicator_Leadership), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Regular Employee Taken Leadership") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(as.factor(Indicator_Leadership), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Regular Employee Taken Leadership") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Indicator_Leadership), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Regular Employee Taken Leadership") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Indicator_Leadership), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Regular Employee Taken Leadership") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Indicator_Leadership), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Citizenship.Indicator)+ 
  ggtitle("All Regular Employee Taken Leadership") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Indicator_Leadership), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
  ggtitle("All Regular Employee Taken Leadership") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Indicator_Leadership), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Gender)+ 
  ggtitle("All Regular Employee Taken Leadership") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Indicator_Leadership), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Ethnicity)+ 
  ggtitle("All Regular Employee Taken Leadership") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Indicator_Leadership), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=as.factor(Hired))+ 
  ggtitle("All Regular Employee Taken Leadership") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Indicator_Leadership), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=as.factor(Start.Year))+ 
  ggtitle("All Regular Employee Taken Leadership") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Indicator_Leadership), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=as.factor(End.Year))+ 
  ggtitle("All Regular Employee Taken Leadership") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Start.Annual.Pay, data=courseTaken10years_pay_Regular_couses, geom="histogram", fill= as.factor(Indicator_Leadership))+ 
  ggtitle("All Regular Employee Taken Leadership") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(End.Annual.Pay, data=courseTaken10years_pay_Regular_couses, geom="histogram", fill= as.factor(Indicator_Leadership))+ 
  ggtitle("All Regular Employee Taken Leadership") +
  theme(text = element_text(size = 18, family="Impact"))  


qplot(Annual.Increase.Rate, data=courseTaken10years_pay_Regular_couses, geom="histogram", fill= as.factor(Indicator_Leadership))+ 
  ggtitle("All Regular Employee Taken Leadership") +
  theme(text = element_text(size = 18, family="Impact"))  

View(courseTaken10years_pay_Regular_couses)



#####Analysis of all regular of EHS Taken#######


qplot(as.factor(Indicator_EHS), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Regular Employee Taken EHS") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(as.factor(Indicator_EHS), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Regular Employee Taken EHS") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Indicator_EHS), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Regular Employee Taken EHS") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Indicator_EHS), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Regular Employee Taken EHS") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Indicator_EHS), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Citizenship.Indicator)+ 
  ggtitle("All Regular Employee Taken EHS") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Indicator_EHS), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
  ggtitle("All Regular Employee Taken EHS") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Indicator_EHS), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Gender)+ 
  ggtitle("All Regular Employee Taken EHS") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Indicator_EHS), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=Ethnicity)+ 
  ggtitle("All Regular Employee Taken EHS") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Indicator_EHS), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=as.factor(Hired))+ 
  ggtitle("All Regular Employee Taken EHS") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Indicator_EHS), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=as.factor(Start.Year))+ 
  ggtitle("All Regular Employee Taken EHS") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Indicator_EHS), data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=as.factor(End.Year))+ 
  ggtitle("All Regular Employee Taken EHS") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Start.Annual.Pay, data=courseTaken10years_pay_Regular_couses, geom="histogram", fill= as.factor(Indicator_EHS))+ 
  ggtitle("All Regular Employee Taken EHS") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(End.Annual.Pay, data=courseTaken10years_pay_Regular_couses, geom="histogram", fill= as.factor(Indicator_EHS))+ 
  ggtitle("All Regular Employee Taken EHS") +
  theme(text = element_text(size = 18, family="Impact"))  


qplot(Annual.Increase.Rate, data=courseTaken10years_pay_Regular_couses, geom="histogram", fill= as.factor(Indicator_EHS))+ 
  ggtitle("All Regular Employee Taken EHS") +
  theme(text = element_text(size = 18, family="Impact"))  

View(courseTaken10years_pay_Regular_couses)













#Analysis of why some employees taking more than 12 courses annually
View(courseTaken10years_pay_Regular_couses)
View(pay3.regular.rate)
summary(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$AnnualCourseTaken == 36),])
View(trainingAll10Years)
trainingAll10Years[(trainingAll10Years$RIN == 660115201),]
pay3.regular.rate[(pay3.regular.rate$Rensselaer.Id.Number == 660115201),]

cbs.pay.regular[(cbs.pay.regular$Rensselaer.Id.Number == 660115201), ]
pay[(pay$Rensselaer.Id.Number == 660115201),]





trainingAll10Years[(trainingAll10Years$RIN == 661010978),]
pay3.regular.rate[(pay3.regular.rate$Rensselaer.Id.Number == 661010978),]

cbs.pay.regular[(cbs.pay.regular$Rensselaer.Id.Number == 661010978), ]
pay[(pay$Rensselaer.Id.Number == 661010978),]







#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Current.Employee.Status == "Active"),]$Indicator_Comp_Tech))
s2 <- summary(as.factor(courseTaken10years_pay_Regular_couses$Indicator_Comp_Tech))
summary(as.factor(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Current.Employee.Status == "Active"),]$Indicator_Comp_Tech))
summary(as.factor(courseTaken10years_pay_Regular_couses$Indicator_Comp_Tech))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")



#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Gender == "Female"),]$Indicator_Comp_Tech))
s2 <- summary(as.factor(courseTaken10years_pay_Regular_couses$Indicator_Comp_Tech))
summary(as.factor(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Gender == "Female"),]$Indicator_Comp_Tech))
summary(as.factor(courseTaken10years_pay_Regular_couses$Indicator_Comp_Tech))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")






#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Current.Employee.Status == "Active"),]$Indicator_EHS))
s2 <- summary(as.factor(courseTaken10years_pay_Regular_couses$Indicator_EHS))
summary(as.factor(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Current.Employee.Status == "Active"),]$Indicator_EHS))
summary(as.factor(courseTaken10years_pay_Regular_couses$Indicator_EHS))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")



summary(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Indicator_Comp_Tech == 1),])

plot(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Indicator_Comp_Tech == 1),]$Start.Annual.Pay, ylim = c(0, 80000))

plot(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Indicator_Comp_Tech == 1),]$End.Annual.Pay, ylim = c(0, 80000))


summary(courseTaken10years_pay_Regular_couses[courseTaken10years_pay_Regular_couses$Indicator_Comp_Tech == 1,]$Annual.Increase.Rate)
summary(courseTaken10years_pay_Regular_couses[courseTaken10years_pay_Regular_couses$Indicator_Comp_Tech == 0,]$Annual.Increase.Rate)















#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Current.Employee.Status == "Active"),]$Indicator_Leadership))
s2 <- summary(as.factor(courseTaken10years_pay_Regular_couses$Indicator_Leadership))
summary(as.factor(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Current.Employee.Status == "Active"),]$Indicator_Leadership))
summary(as.factor(courseTaken10years_pay_Regular_couses$Indicator_Leadership))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")



#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Current.Employee.Status == "Active"),]$Indicator_Comp_Tech))
s2 <- summary(as.factor(courseTaken10years_pay_Regular_couses$Indicator_Comp_Tech))
summary(as.factor(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Current.Employee.Status == "Active"),]$Indicator_Comp_Tech))
summary(as.factor(courseTaken10years_pay_Regular_couses$Indicator_Comp_Tech))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")



#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Employee.Exempt.Non.Exempt.Indicator == "Exempt"),]$Indicator_Leadership))
s2 <- summary(as.factor(courseTaken10years_pay_Regular_couses$Indicator_Leadership))
summary(as.factor(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Employee.Exempt.Non.Exempt.Indicator == "Exempt"),]$Indicator_Leadership))
summary(as.factor(courseTaken10years_pay_Regular_couses$Indicator_Leadership))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")



summary(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Indicator_Leadership == 1),])

plot(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Indicator_Leadership == 1),]$Start.Annual.Pay, ylim = c(20000, 120000))

plot(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Indicator_Leadership == 1),]$End.Annual.Pay, ylim = c(0, 80000))


summary(courseTaken10years_pay_Regular_couses[courseTaken10years_pay_Regular_couses$Indicator_Leadership == 1,]$Annual.Increase.Rate)
summary(courseTaken10years_pay_Regular_couses[courseTaken10years_pay_Regular_couses$Indicator_Leadership == 0,]$Annual.Increase.Rate)


summary(courseTaken10years_pay_Regular_couses$Start.Annual.Pay)








#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Current.Employee.Status == "Active"),]$Indicator_EHS))
s2 <- summary(as.factor(courseTaken10years_pay_Regular_couses$Indicator_EHS))
summary(as.factor(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Current.Employee.Status == "Active"),]$Indicator_EHS))
summary(as.factor(courseTaken10years_pay_Regular_couses$Indicator_EHS))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")



#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Employee.Exempt.Non.Exempt.Indicator == "Exempt"),]$Indicator_EHS))
s2 <- summary(as.factor(courseTaken10years_pay_Regular_couses$Indicator_EHS))
summary(as.factor(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Employee.Exempt.Non.Exempt.Indicator == "Exempt"),]$Indicator_EHS))
summary(as.factor(courseTaken10years_pay_Regular_couses$Indicator_EHS))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")



summary(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Indicator_EHS == 1),]$Start.Annual.Pay)
summary(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Indicator_EHS == 0),]$Start.Annual.Pay)


plot(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Indicator_EHS == 1),]$Start.Annual.Pay, ylim = c(20000, 120000))

plot(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Indicator_EHS == 1),]$End.Annual.Pay, ylim = c(0, 80000))


summary(courseTaken10years_pay_Regular_couses[courseTaken10years_pay_Regular_couses$Indicator_EHS == 1,]$Annual.Increase.Rate)
summary(courseTaken10years_pay_Regular_couses[courseTaken10years_pay_Regular_couses$Indicator_EHS == 0,]$Annual.Increase.Rate)























######Final Presentation###########
qplot(Annual.Increase.Rate, data=courseTaken10years_pay_Regular_couses, geom="histogram", fill= as.factor(AnnualCourseTaken))+ 


View(courseTaken10years_pay_Regular_couses)

#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(courseTaken10years_pay_Regular_small_nonexempt_Staff[(courseTaken10years_pay_Regular_small_nonexempt_Staff$Hired == 9),]$AnnualCourseTaken))
s2 <- summary(as.factor(courseTaken10years_pay_Regular_small_nonexempt_Staff[(courseTaken10years_pay_Regular_small_nonexempt_Staff$AnnualCourseTaken < 10),]$AnnualCourseTaken))
summary(as.factor(courseTaken10years_pay_Regular_small_nonexempt_Staff[(courseTaken10years_pay_Regular_small_nonexempt_Staff$Hired == 9),]$AnnualCourseTaken))
summary(as.factor(courseTaken10years_pay_Regular_small_nonexempt_Staff$AnnualCourseTaken))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Annual Courses Taken", ylab = "Percentage of Staff Employee with 9 or 9+ years of service", main = "Non-xempt Staff Employee taking less than 12 courses")


summary(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Indicator_Leadership == 1),]$Annual.Increase.Rate)
summary(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Indicator_Leadership == 0),]$Annual.Increase.Rate)

summary(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Indicator_Comp_Tech == 1),]$Annual.Increase.Rate)
summary(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Indicator_Comp_Tech == 0),]$Annual.Increase.Rate)





summary(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Indicator_Leadership == 1 & courseTaken10years_pay_Regular_couses$Start.Annual.Pay < 180000),]$Start.Annual.Pay)
summary(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Indicator_Leadership == 0 & courseTaken10years_pay_Regular_couses$Start.Annual.Pay < 180000),]$Start.Annual.Pay)

summary(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Indicator_Comp_Tech == 1 & courseTaken10years_pay_Regular_couses$Start.Annual.Pay < 180000),]$Start.Annual.Pay)
summary(courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Indicator_Comp_Tech == 0 & courseTaken10years_pay_Regular_couses$Start.Annual.Pay < 180000),]$Start.Annual.Pay)





qplot(Annual.Increase.Rate, data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=as.factor(Indicator_Leadership))+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(Annual.Increase.Rate, data=courseTaken10years_pay_Regular_couses, geom="histogram", fill=as.factor(Indicator_Comp_Tech))+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


summary(courseTaken10years_pay_Regular_couses)
View(courseTaken10years_pay_Regular_couses)













qplot(Annual.Increase.Rate, data=courseTaken10years_pay_Regular_couses, geom="histogram", fill= as.factor(Indicator_Leadership))+ 
  ggtitle("All Regular Employee Taken EHS") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Annual.Increase.Rate, data=courseTaken10years_pay_Regular_couses, geom="histogram", fill= as.factor(Indicator_Comp_Tech))+ 
  ggtitle("All Regular Employee Taken EHS") +
  theme(text = element_text(size = 18, family="Impact"))  







######Final Presentation#######
x1 <- (courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Indicator_Comp_Tech == 1),]$Annual.Increase.Rate)
x2 <- (courseTaken10years_pay_Regular_couses[(courseTaken10years_pay_Regular_couses$Indicator_Comp_Tech == 0),]$Annual.Increase.Rate)

t.test(x1, x2)


