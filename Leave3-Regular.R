


require(ggplot2)
##analysis the year of service relationship with Current Employee Status###########################################
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Hired), data=pay3.active.regular, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

##analysis the year of service relationship with Employee.Faculty.Staff.Student.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Hired), data=pay3.active.regular, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

##analysis the year of service relationship with Employee.Eeo.Contract.Group.Description###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Hired), data=pay3.active.regular, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
##analysis the year of service relationship with Employee.Exempt.Non.Exempt.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Hired), data=pay3.active.regular, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

##analysis the year of service relationship with Employee.Regular.Fixed.Term.Temp.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Employee.Regular.Fixed.Term.Temp.Indicator)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Employee.Regular.Fixed.Term.Temp.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(as.factor(Hired), data=pay3.active.regular, geom="histogram", fill=Employee.Regular.Fixed.Term.Temp.Indicator)+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
##analysis the year of service relationship with Citizenship.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Citizenship.Indicator)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Citizenship.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Hired), data=pay3.active.regular, geom="histogram", fill=Citizenship.Indicator)+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


##analysis the year of service relationship with Employee.Full.Time.Part.Time.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Hired), data=pay3.active.regular, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


##analysis the year of service relationship with Gender###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Gender)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Gender)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Hired), data=pay3.active.regular, geom="histogram", fill=Gender)+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


##analysis the year of service relationship with Ethnicity###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Ethnicity)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Ethnicity)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(as.factor(Hired), data=pay3.active.regular, geom="histogram", fill=Ethnicity)+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))









######################density#########################
ggplot(pay3.leave.regular, aes(x=Hired, fill=Employee.Faculty.Staff.Student.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, fill=Employee.Faculty.Staff.Student.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.active.regular, aes(x=Hired, fill=Employee.Faculty.Staff.Student.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.leave.regular, aes(x=Hired, colour=Employee.Faculty.Staff.Student.Indicator)) + geom_density()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, colour=Employee.Faculty.Staff.Student.Indicator)) + geom_density()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


######################density#########################
ggplot(pay3.leave.regular, aes(x=Hired, fill=Employee.Eeo.Contract.Group.Description)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, fill=Employee.Eeo.Contract.Group.Description)) + geom_density(alpha=.3)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.leave.regular, aes(x=Hired, colour=Employee.Eeo.Contract.Group.Description)) + geom_density()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, colour=Employee.Eeo.Contract.Group.Description)) + geom_density()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.active.regular, aes(x=Hired, colour=Employee.Eeo.Contract.Group.Description)) + geom_density()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

######################density#########################
ggplot(pay3.leave.regular, aes(x=Hired, fill=Employee.Exempt.Non.Exempt.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, fill=Employee.Exempt.Non.Exempt.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.active.regular, aes(x=Hired, fill=Employee.Exempt.Non.Exempt.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.leave.regular, aes(x=Hired, colour=Employee.Exempt.Non.Exempt.Indicator)) + geom_density()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, colour=Employee.Exempt.Non.Exempt.Indicator)) + geom_density()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

######################density#########################
ggplot(pay3.leave.regular, aes(x=Hired, fill=Employee.Type)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, fill=Employee.Type)) + geom_density(alpha=.3)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.active.regular, aes(x=Hired, fill=Employee.Type)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))



ggplot(pay3.leave.regular, aes(x=Hired, colour=Employee.Type)) + geom_density()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, colour=Employee.Type)) + geom_density()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

######################density#########################
ggplot(pay3.leave.regular, aes(x=Hired, fill=Citizenship.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, fill=Citizenship.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.active.regular, aes(x=Hired, fill=Citizenship.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.leave.regular, aes(x=Hired, colour=Citizenship.Indicator)) + geom_density()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, colour=Citizenship.Indicator)) + geom_density()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

######################density#########################
ggplot(pay3.leave.regular, aes(x=Hired, fill=Employee.Full.Time.Part.Time.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, fill=Employee.Full.Time.Part.Time.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.active.regular, aes(x=Hired, fill=Employee.Full.Time.Part.Time.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.leave.regular, aes(x=Hired, colour=Employee.Full.Time.Part.Time.Indicator)) + geom_density()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, colour=Employee.Full.Time.Part.Time.Indicator)) + geom_density()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

######################density#########################
ggplot(pay3.leave.regular, aes(x=Hired, fill=Gender)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, fill=Gender)) + geom_density(alpha=.3)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.active.regular, aes(x=Hired, fill=Gender)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.leave.regular, aes(x=Hired, colour=Gender)) + geom_density()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, colour=Gender)) + geom_density()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

######################density#########################
ggplot(pay3.leave.regular, aes(x=Hired, fill=Ethnicity)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, fill=Ethnicity)) + geom_density(alpha=.3)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.leave.regular, aes(x=Hired, colour=Ethnicity)) + geom_density()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.active.regular, aes(x=Hired, colour=Ethnicity)) + geom_density()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, colour=Ethnicity)) + geom_density()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))
















#######################violin#######################
p <- ggplot(pay3.leave.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(pay3.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


#######################violin#######################
p <- ggplot(pay3.leave.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(pay3.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


#######################violin#######################
p <- ggplot(pay3.leave.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(pay3.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

#######################violin#######################
p <- ggplot(pay3.leave.regular, aes(x=Citizenship.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.regular, aes(x=Citizenship.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(pay3.regular, aes(x=Citizenship.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

#######################violin#######################
p <- ggplot(pay3.leave.regular, aes(x=Employee.Full.Time.Part.Time.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.regular, aes(x=Employee.Full.Time.Part.Time.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(pay3.regular, aes(x=Employee.Full.Time.Part.Time.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

#######################violin#######################
p <- ggplot(pay3.leave.regular, aes(x=Gender, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.regular, aes(x=Gender, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(pay3.regular, aes(x=Gender, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))





















pay3.leave.regular.rateh <- pay3.leave.regular[(pay3.leave.regular$Annual.Increase.Rate < .2),]
pay3.leave.regular.rate <- pay3.leave.regular.rateh[(pay3.leave.regular.rateh$Annual.Increase.Rate > -.2),]


pay3.active.regular.rateh <- pay3.active.regular[(pay3.active.regular$Annual.Increase.Rate < .2),]
pay3.active.regular.rate <- pay3.active.regular.rateh[(pay3.active.regular.rateh$Annual.Increase.Rate > -.2),]



pay3.regular.rateh <- pay3.regular[(pay3.regular$Annual.Increase.Rate < .2),]
pay3.regular.rate <- pay3.regular.rateh[(pay3.regular.rateh$Annual.Increase.Rate > -.2),]
#######################violin#######################
p <- ggplot(pay3.leave.regular.rate, aes(x=Employee.Faculty.Staff.Student.Indicator, y=Annual.Increase.Rate ))

p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.regular.rate, aes(x=Employee.Faculty.Staff.Student.Indicator, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.regular.rate, aes(x=Employee.Faculty.Staff.Student.Indicator, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

#######################violin#######################
p <- ggplot(pay3.leave.regular.rate, aes(x=Employee.Eeo.Contract.Group.Description, y=Annual.Increase.Rate ))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.regular.rate, aes(x=Employee.Eeo.Contract.Group.Description, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(pay3.regular.rate, aes(x=Employee.Eeo.Contract.Group.Description, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


#######################violin#######################
p <- ggplot(pay3.leave.regular.rate, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=Annual.Increase.Rate ))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.regular.rate, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(pay3.regular.rate, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



#######################violin#######################
p <- ggplot(pay3.leave.regular.rate, aes(x=Citizenship.Indicator, y=Annual.Increase.Rate ))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.regular.rate, aes(x=Citizenship.Indicator, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(pay3.regular.rate, aes(x=Citizenship.Indicator, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


#######################violin#######################
p <- ggplot(pay3.leave.regular.rate, aes(x=Employee.Full.Time.Part.Time.Indicator, y=Annual.Increase.Rate ))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.regular.rate, aes(x=Employee.Full.Time.Part.Time.Indicator, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(pay3.regular.rate, aes(x=Employee.Full.Time.Part.Time.Indicator, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


#######################violin#######################
p <- ggplot(pay3.leave.regular.rate, aes(x=Gender, y=Annual.Increase.Rate ))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.regular.rate, aes(x=Gender, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("Regular Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(pay3.regular.rate, aes(x=Gender, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))










##############Final Presentation#################



pay3_regular_rate <- pay3.regular.rate
pay3_regular_rate$Count <- 1


View(pay3_regular_rate)


s1 <- summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Employee.Faculty.Staff.Student.Indicator == "Staff" & pay3_regular_rate$Current.Employee.Status == "Job Terminated" & pay3_regular_rate$Hired <= 1),]$Count))
s2 <- summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Employee.Faculty.Staff.Student.Indicator == "Staff" & pay3_regular_rate$Hired <= 1),] $Count))
summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Employee.Faculty.Staff.Student.Indicator == "Staff" & pay3_regular_rate$Current.Employee.Status == "Job Terminated" & pay3_regular_rate$Hired <= 1),]$Count))
summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Employee.Faculty.Staff.Student.Indicator == "Staff" & pay3_regular_rate$Hired <= 1),] $Count))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Working Length", ylab = "Percentage of FALL", main = "Employees")
x1 <- s1
n1 <- s2


s1 <- summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Employee.Faculty.Staff.Student.Indicator == "Staff" & pay3_regular_rate$Current.Employee.Status == "Job Terminated" & pay3_regular_rate$Hired > 1),]$Count))
s2 <- summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Employee.Faculty.Staff.Student.Indicator == "Staff" & pay3_regular_rate$Hired > 1),] $Count))
summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Employee.Faculty.Staff.Student.Indicator == "Staff" & pay3_regular_rate$Current.Employee.Status == "Job Terminated" & pay3_regular_rate$Hired > 1),]$Count))
summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Employee.Faculty.Staff.Student.Indicator == "Staff" & pay3_regular_rate$Hired > 1),] $Count))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Working Length", ylab = "Percentage of FALL", main = "Employees")

x2 <- s1
n2 <- s2

prop.test(x = c(x1, x2), n = c(n1, n2), correct = FALSE)


s1 <- summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Employee.Faculty.Staff.Student.Indicator == "Faculty" & pay3_regular_rate$Current.Employee.Status == "Job Terminated" & pay3_regular_rate$Hired <= 1),]$Count))
s2 <- summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Employee.Faculty.Staff.Student.Indicator == "Faculty" & pay3_regular_rate$Hired <= 1),] $Count))
summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Employee.Faculty.Staff.Student.Indicator == "Faculty" & pay3_regular_rate$Current.Employee.Status == "Job Terminated" & pay3_regular_rate$Hired <= 1),]$Count))
summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Employee.Faculty.Staff.Student.Indicator == "Faculty" & pay3_regular_rate$Hired <= 1),] $Count))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Working Length", ylab = "Percentage of FALL", main = "Employees")





View(pay3_regular_rate)



s1 <- summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Current.Employee.Status == "Job Terminated" & pay3_regular_rate$Citizenship.Indicator == "Non-Citizen"),]$Count))
s2 <- summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Citizenship.Indicator == "Non-Citizen"),] $Count))
summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Current.Employee.Status == "Job Terminated" & pay3_regular_rate$Citizenship.Indicator == "Non-Citizen"),]$Count))
summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Citizenship.Indicator == "Non-Citizen"),] $Count))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Working Length", ylab = "Percentage of FALL", main = "Employees")


s1 <- summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Current.Employee.Status == "Job Terminated" & pay3_regular_rate$Citizenship.Indicator == "US Citizen"),]$Count))
s2 <- summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Citizenship.Indicator == "US Citizen"),] $Count))
summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Current.Employee.Status == "Job Terminated" & pay3_regular_rate$Citizenship.Indicator == "US Citizen"),]$Count))
summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Citizenship.Indicator == "US Citizen"),] $Count))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Working Length", ylab = "Percentage of FALL", main = "Employees")


s1 <- summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Current.Employee.Status == "Job Terminated" & pay3_regular_rate$Citizenship.Indicator == "Permanent Resident"),]$Count))
s2 <- summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Citizenship.Indicator == "Permanent Resident"),] $Count))
summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Current.Employee.Status == "Job Terminated" & pay3_regular_rate$Citizenship.Indicator == "Permanent Resident"),]$Count))
summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Citizenship.Indicator == "Permanent Resident"),] $Count))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Working Length", ylab = "Percentage of FALL", main = "Employees")



s1 <- summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Current.Employee.Status == "Job Terminated" ),]$Count))
s2 <- summary(as.factor(pay3_regular_rate $Count))
summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Current.Employee.Status == "Job Terminated" ),]$Count))
summary(as.factor(pay3_regular_rate $Count))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Working Length", ylab = "Percentage of FALL", main = "Employees")









pay3_fixed_rate <- pay3.fixed.rate
pay3_fixed_rate$Count <- 1




s1 <- summary(as.factor(pay3_fixed_rate[(pay3_fixed_rate$Ethnicity == "Asian or Pacific Islander" ),]$Count))
s2 <- summary(as.factor(pay3_fixed_rate $Count))
summary(as.factor(pay3_fixed_rate[(pay3_fixed_rate$Ethnicity == "Asian or Pacific Islander" ),]$Count))
summary(as.factor(pay3_fixed_rate $Count))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Working Length", ylab = "Percentage of FALL", main = "Employees")


s1 <- summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Ethnicity == "Asian or Pacific Islander" ),]$Count))
s2 <- summary(as.factor(pay3_regular_rate $Count))
summary(as.factor(pay3_regular_rate[(pay3_regular_rate$Ethnicity == "Asian or Pacific Islander" ),]$Count))
summary(as.factor(pay3_regular_rate $Count))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Working Length", ylab = "Percentage of FALL", main = "Employees")








summary(pay3_regular_rate[(pay3_regular_rate$Current.Employee.Status == "Job Terminated"),]$Annual.Increase.Rate)
summary(pay3_regular_rate[(pay3_regular_rate$Current.Employee.Status == "Active"),]$Annual.Increase.Rate)




summary(pay3_regular_rate[(pay3_regular_rate$Current.Employee.Status == "Job Terminated"),]$Annual.Increase.Rate)
summary(pay3_regular_rate[(pay3_regular_rate$Current.Employee.Status == "Active"),]$Annual.Increase.Rate)


summary(pay3_regular_rate[(pay3_regular_rate$Gender == "Female"),]$Start.Annual.Pay)
summary(pay3_regular_rate[(pay3_regular_rate$Gender == "Male"),]$Start.Annual.Pay)


summary(pay3_regular_rate[(pay3_regular_rate$Gender == "Female"),]$Annual.Increase.Rate)
summary(pay3_regular_rate[(pay3_regular_rate$Gender == "Male"),]$Annual.Increase.Rate)




summary(pay3_regular_rate)





qplot(as.factor(Gender), data=pay3_regular_rate, geom="histogram", fill=as.factor(Current.Employee.Status), xlab = 'Gender')+ 
  ggtitle("All Regular Employees") +
  theme(text = element_text(size = 18, family="Impact"))  


qplot(Annual.Increase.Rate, data=pay3_regular_rate, geom="histogram", fill=as.factor(Current.Employee.Status), xlab = 'Annual.Increase.Rate')+ 
  ggtitle("All Regular Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Citizenship.Indicator, data=pay3_regular_rate, geom="histogram", fill=as.factor(Current.Employee.Status))+ 
  ggtitle("All Regular Employees") +
  theme(text = element_text(size = 18, family="Impact"))  


qplot(Start.Annual.Pay, data=pay3_regular_rate, geom="histogram", fill=as.factor(Gender))+ 
  ggtitle("All Regular Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Annual.Increase.Rate, data=pay3_regular_rate, geom="histogram", fill=as.factor(Gender))+ 
  ggtitle("All Regular Employees") +
  theme(text = element_text(size = 18, family="Impact"))  



qplot(as.factor(Hired), data=pay3_regular_rate[(pay3_regular_rate$Employee.Faculty.Staff.Student.Indicator == "Staff"),] , geom="histogram", fill=as.factor(Current.Employee.Status), xlab = 'Staff')+ 
  ggtitle("All Staff Employees") +
  theme(text = element_text(size = 18, family="Impact"))  



sum(pay3_regular_rate[(pay3_regular_rate$Employee.Faculty.Staff.Student.Indicator == "Staff" & pay3_regular_rate$),]$Count)
sum(pay3_regular_rate[(pay3_regular_rate$Employee.Faculty.Staff.Student.Indicator == "Staff" & pay3_regular_rate$),]$Count)

