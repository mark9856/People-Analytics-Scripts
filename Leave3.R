
require(ggplot2)
##analysis the year of service relationship with Current Employee Status###########################################
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

##analysis the year of service relationship with Employee.Faculty.Staff.Student.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

##analysis the year of service relationship with Employee.Eeo.Contract.Group.Description###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


##analysis the year of service relationship with Employee.Exempt.Non.Exempt.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


##analysis the year of service relationship with Employee.Regular.Fixed.Term.Temp.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Employee.Regular.Fixed.Term.Temp.Indicator)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Employee.Regular.Fixed.Term.Temp.Indicator)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


##analysis the year of service relationship with Citizenship.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Citizenship.Indicator)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Citizenship.Indicator)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



##analysis the year of service relationship with Employee.Full.Time.Part.Time.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



##analysis the year of service relationship with Gender###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Gender)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Gender)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



##analysis the year of service relationship with Ethnicity###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Ethnicity)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Ethnicity)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))











######################density#########################
ggplot(pay3.leave.regular, aes(x=Hired, fill=Employee.Faculty.Staff.Student.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, fill=Employee.Faculty.Staff.Student.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.leave.regular, aes(x=Hired, colour=Employee.Faculty.Staff.Student.Indicator)) + geom_density()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, colour=Employee.Faculty.Staff.Student.Indicator)) + geom_density()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


######################density#########################
ggplot(pay3.leave.regular, aes(x=Hired, fill=Employee.Eeo.Contract.Group.Description)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, fill=Employee.Eeo.Contract.Group.Description)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.leave.regular, aes(x=Hired, colour=Employee.Eeo.Contract.Group.Description)) + geom_density()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, colour=Employee.Eeo.Contract.Group.Description)) + geom_density()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

######################density#########################
ggplot(pay3.leave.regular, aes(x=Hired, fill=Employee.Exempt.Non.Exempt.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, fill=Employee.Exempt.Non.Exempt.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.leave.regular, aes(x=Hired, colour=Employee.Exempt.Non.Exempt.Indicator)) + geom_density()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, colour=Employee.Exempt.Non.Exempt.Indicator)) + geom_density()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

######################density#########################
ggplot(pay3.leave.regular, aes(x=Hired, fill=Employee.Type)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, fill=Employee.Type)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.leave.regular, aes(x=Hired, colour=Employee.Type)) + geom_density()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, colour=Employee.Type)) + geom_density()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

######################density#########################
ggplot(pay3.leave.regular, aes(x=Hired, fill=Citizenship.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, fill=Citizenship.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.leave.regular, aes(x=Hired, colour=Citizenship.Indicator)) + geom_density()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, colour=Citizenship.Indicator)) + geom_density()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

######################density#########################
ggplot(pay3.leave.regular, aes(x=Hired, fill=Employee.Full.Time.Part.Time.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, fill=Employee.Full.Time.Part.Time.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.leave.regular, aes(x=Hired, colour=Employee.Full.Time.Part.Time.Indicator)) + geom_density()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, colour=Employee.Full.Time.Part.Time.Indicator)) + geom_density()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

######################density#########################
ggplot(pay3.leave.regular, aes(x=Hired, fill=Gender)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, fill=Gender)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.leave.regular, aes(x=Hired, colour=Gender)) + geom_density()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, colour=Gender)) + geom_density()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

######################density#########################
ggplot(pay3.leave.regular, aes(x=Hired, fill=Ethnicity)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, fill=Ethnicity)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.leave.regular, aes(x=Hired, colour=Ethnicity)) + geom_density()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, colour=Ethnicity)) + geom_density()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))
















#######################violin#######################
p <- ggplot(pay3.leave.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


#######################violin#######################
p <- ggplot(pay3.leave.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.regular, aes(x=Employee.Eeo.Contract.Group.Description, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


#######################violin#######################
p <- ggplot(pay3.leave.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

#######################violin#######################
p <- ggplot(pay3.leave.regular, aes(x=Citizenship.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.regular, aes(x=Citizenship.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

#######################violin#######################
p <- ggplot(pay3.leave.regular, aes(x=Employee.Full.Time.Part.Time.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.regular, aes(x=Employee.Full.Time.Part.Time.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

#######################violin#######################
p <- ggplot(pay3.leave.regular, aes(x=Gender, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.regular, aes(x=Gender, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))





















pay3.leave.regular.rateh <- pay3.leave.regular[(pay3.leave.regular$Annual.Increase.Rate < .2),]
pay3.leave.regular.rate <- pay3.leave.regular.rateh[(pay3.leave.regular.rateh$Annual.Increase.Rate > -.2),]


pay3.regular.rateh <- pay3.regular[(pay3.regular$Annual.Increase.Rate < .2),]
pay3.regular.rate <- pay3.regular.rateh[(pay3.regular.rateh$Annual.Increase.Rate > -.2),]
#######################violin#######################
p <- ggplot(pay3.leave.regular.rate, aes(x=Employee.Faculty.Staff.Student.Indicator, y=Annual.Increase.Rate ))

p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.regular.rate, aes(x=Employee.Faculty.Staff.Student.Indicator, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

#######################violin#######################
p <- ggplot(pay3.leave.regular.rate, aes(x=Employee.Eeo.Contract.Group.Description, y=Annual.Increase.Rate ))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.regular.rate, aes(x=Employee.Eeo.Contract.Group.Description, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


#######################violin#######################
p <- ggplot(pay3.leave.regular.rate, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=Annual.Increase.Rate ))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.regular.rate, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



#######################violin#######################
p <- ggplot(pay3.leave.regular.rate, aes(x=Citizenship.Indicator, y=Annual.Increase.Rate ))

p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.regular.rate, aes(x=Citizenship.Indicator, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


#######################violin#######################
p <- ggplot(pay3.leave.regular.rate, aes(x=Employee.Full.Time.Part.Time.Indicator, y=Annual.Increase.Rate ))

p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.regular.rate, aes(x=Employee.Full.Time.Part.Time.Indicator, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


#######################violin#######################
p <- ggplot(pay3.leave.regular.rate, aes(x=Gender, y=Annual.Increase.Rate ))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.regular.rate, aes(x=Gender, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

