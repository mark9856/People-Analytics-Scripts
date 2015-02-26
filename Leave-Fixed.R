


require(ggplot2)
##analysis the year of service relationship with Current Employee Status###########################################
qplot(as.factor(Hired), data=pay3.fixed, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Hired), data=pay3.active.fixed, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Hired), data=pay3.leave.fixed, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

##analysis the year of service relationship with Employee.Faculty.Staff.Student.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.fixed, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Hired), data=pay3.active.fixed, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Hired), data=pay3.fixed, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))

##analysis the year of service relationship with Employee.Eeo.Contract.Group.Description###########################################
qplot(as.factor(Hired), data=pay3.leave.fixed, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.active.fixed, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.fixed, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))


##analysis the year of service relationship with Employee.Exempt.Non.Exempt.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.fixed, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.active.fixed, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.fixed, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))


##analysis the year of service relationship with Employee.fixed.Fixed.Term.Temp.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.fixed, geom="histogram", fill=Employee.Regular.Fixed.Term.Temp.Indicator)+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.active.fixed, geom="histogram", fill=Employee.Regular.Fixed.Term.Temp.Indicator)+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Hired), data=pay3.fixed, geom="histogram", fill=Employee.Regular.Fixed.Term.Temp.Indicator)+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))


##analysis the year of service relationship with Citizenship.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.fixed, geom="histogram", fill=Citizenship.Indicator)+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.active.fixed, geom="histogram", fill=Citizenship.Indicator)+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.fixed, geom="histogram", fill=Citizenship.Indicator)+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))


#Mark


##analysis the year of service relationship with Employee.Full.Time.Part.Time.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.fixed, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.active.fixed, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.fixed, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))



##analysis the year of service relationship with Gender###########################################
qplot(as.factor(Hired), data=pay3.leave.fixed, geom="histogram", fill=Gender)+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.active.fixed, geom="histogram", fill=Gender)+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.fixed, geom="histogram", fill=Gender)+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))



##analysis the year of service relationship with Ethnicity###########################################
qplot(as.factor(Hired), data=pay3.leave.fixed, geom="histogram", fill=Ethnicity)+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.active.fixed, geom="histogram", fill=Ethnicity)+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.fixed, geom="histogram", fill=Ethnicity)+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))











######################density#########################
ggplot(pay3.leave.fixed, aes(x=Hired, fill=Employee.Faculty.Staff.Student.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.active.fixed, aes(x=Hired, fill=Employee.Faculty.Staff.Student.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.fixed, aes(x=Hired, fill=Employee.Faculty.Staff.Student.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.leave.fixed, aes(x=Hired, colour=Employee.Faculty.Staff.Student.Indicator)) + geom_density()+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.active.fixed, aes(x=Hired, colour=Employee.Faculty.Staff.Student.Indicator)) + geom_density()+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.fixed, aes(x=Hired, colour=Employee.Faculty.Staff.Student.Indicator)) + geom_density()+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))


######################density#########################
ggplot(pay3.leave.fixed, aes(x=Hired, fill=Employee.Eeo.Contract.Group.Description)) + geom_density(alpha=.3)+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.active.fixed, aes(x=Hired, fill=Employee.Eeo.Contract.Group.Description)) + geom_density(alpha=.3)+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.fixed, aes(x=Hired, fill=Employee.Eeo.Contract.Group.Description)) + geom_density(alpha=.3)+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.leave.fixed, aes(x=Hired, colour=Employee.Eeo.Contract.Group.Description)) + geom_density()+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.active.fixed, aes(x=Hired, colour=Employee.Eeo.Contract.Group.Description)) + geom_density()+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.fixed, aes(x=Hired, colour=Employee.Eeo.Contract.Group.Description)) + geom_density()+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))

######################density#########################
ggplot(pay3.leave.fixed, aes(x=Hired, fill=Employee.Exempt.Non.Exempt.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.active.fixed, aes(x=Hired, fill=Employee.Exempt.Non.Exempt.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.fixed, aes(x=Hired, fill=Employee.Exempt.Non.Exempt.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(pay3.leave.fixed, aes(x=Hired, colour=Employee.Exempt.Non.Exempt.Indicator)) + geom_density()+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.active.fixed, aes(x=Hired, colour=Employee.Exempt.Non.Exempt.Indicator)) + geom_density()+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.fixed, aes(x=Hired, colour=Employee.Exempt.Non.Exempt.Indicator)) + geom_density()+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))

######################density#########################
ggplot(pay3.leave.fixed, aes(x=Hired, fill=Employee.Type)) + geom_density(alpha=.3)+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.active.fixed, aes(x=Hired, fill=Employee.Type)) + geom_density(alpha=.3)+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.fixed, aes(x=Hired, fill=Employee.Type)) + geom_density(alpha=.3)+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))


ggplot(pay3.leave.fixed, aes(x=Hired, colour=Employee.Type)) + geom_density()+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.active.fixed, aes(x=Hired, colour=Employee.Type)) + geom_density()+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.fixed, aes(x=Hired, colour=Employee.Type)) + geom_density()+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))


######################density#########################
ggplot(pay3.leave.fixed, aes(x=Hired, fill=Citizenship.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.active.fixed, aes(x=Hired, fill=Citizenship.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.fixed, aes(x=Hired, fill=Citizenship.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))


ggplot(pay3.leave.fixed, aes(x=Hired, colour=Citizenship.Indicator)) + geom_density()+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.active.fixed, aes(x=Hired, colour=Citizenship.Indicator)) + geom_density()+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.fixed, aes(x=Hired, colour=Citizenship.Indicator)) + geom_density()+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))


######################density#########################
ggplot(pay3.leave.fixed, aes(x=Hired, fill=Employee.Full.Time.Part.Time.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.active.fixed, aes(x=Hired, fill=Employee.Full.Time.Part.Time.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.fixed, aes(x=Hired, fill=Employee.Full.Time.Part.Time.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))


ggplot(pay3.leave.fixed, aes(x=Hired, colour=Employee.Full.Time.Part.Time.Indicator)) + geom_density()+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.active.fixed, aes(x=Hired, colour=Employee.Full.Time.Part.Time.Indicator)) + geom_density()+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.fixed, aes(x=Hired, colour=Employee.Full.Time.Part.Time.Indicator)) + geom_density()+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))


######################density#########################
ggplot(pay3.leave.fixed, aes(x=Hired, fill=Gender)) + geom_density(alpha=.3)+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.active.fixed, aes(x=Hired, fill=Gender)) + geom_density(alpha=.3)+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.fixed, aes(x=Hired, fill=Gender)) + geom_density(alpha=.3)+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))


ggplot(pay3.leave.fixed, aes(x=Hired, colour=Gender)) + geom_density()+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.fixed, aes(x=Hired, colour=Gender)) + geom_density()+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.active.fixed, aes(x=Hired, colour=Gender)) + geom_density()+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


######################density#########################
ggplot(pay3.leave.fixed, aes(x=Hired, fill=Ethnicity)) + geom_density(alpha=.3)+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.active.fixed, aes(x=Hired, fill=Ethnicity)) + geom_density(alpha=.3)+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.fixed, aes(x=Hired, fill=Ethnicity)) + geom_density(alpha=.3)+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))


ggplot(pay3.leave.fixed, aes(x=Hired, colour=Ethnicity)) + geom_density()+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.active.fixed, aes(x=Hired, colour=Ethnicity)) + geom_density()+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.fixed, aes(x=Hired, colour=Ethnicity)) + geom_density()+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))
















#######################violin#######################
p <- ggplot(pay3.leave.fixed, aes(x=Employee.Faculty.Staff.Student.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.fixed, aes(x=Employee.Faculty.Staff.Student.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(pay3.fixed, aes(x=Employee.Faculty.Staff.Student.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))



#######################violin#######################
p <- ggplot(pay3.leave.fixed, aes(x=Employee.Eeo.Contract.Group.Description, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.fixed, aes(x=Employee.Eeo.Contract.Group.Description, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.fixed, aes(x=Employee.Eeo.Contract.Group.Description, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))


#######################violin#######################
p <- ggplot(pay3.leave.fixed, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.fixed, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.fixed, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))

#######################violin#######################
p <- ggplot(pay3.leave.fixed, aes(x=Citizenship.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.fixed, aes(x=Citizenship.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.fixed, aes(x=Citizenship.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))

#######################violin#######################
p <- ggplot(pay3.leave.fixed, aes(x=Employee.Full.Time.Part.Time.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.fixed, aes(x=Employee.Full.Time.Part.Time.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(pay3.fixed, aes(x=Employee.Full.Time.Part.Time.Indicator, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))

#######################violin#######################
p <- ggplot(pay3.leave.fixed, aes(x=Gender, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.fixed, aes(x=Gender, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(pay3.fixed, aes(x=Gender, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))






















pay3.leave.fixed.rateh <- pay3.leave.fixed[(pay3.leave.fixed$Annual.Increase.Rate < .2),]
pay3.leave.fixed.rate <- pay3.leave.fixed.rateh[(pay3.leave.fixed.rateh$Annual.Increase.Rate > -.2),]


pay3.active.fixed.rateh <- pay3.active.fixed[(pay3.active.fixed$Annual.Increase.Rate < .2),]
pay3.active.fixed.rate <- pay3.active.fixed.rateh[(pay3.active.fixed.rateh$Annual.Increase.Rate > -.2),]


pay3.fixed.rateh <- pay3.fixed[(pay3.fixed$Annual.Increase.Rate < .2),]
pay3.fixed.rate <- pay3.fixed.rateh[(pay3.fixed.rateh$Annual.Increase.Rate > -.2),]
#######################violin#######################
p <- ggplot(pay3.leave.fixed.rate, aes(x=Employee.Faculty.Staff.Student.Indicator, y=Annual.Increase.Rate ))

p + geom_violin()+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.fixed.rate, aes(x=Employee.Faculty.Staff.Student.Indicator, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.fixed.rate, aes(x=Employee.Faculty.Staff.Student.Indicator, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))

#######################violin#######################
p <- ggplot(pay3.leave.fixed.rate, aes(x=Employee.Eeo.Contract.Group.Description, y=Annual.Increase.Rate ))
p + geom_violin()+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.fixed.rate, aes(x=Employee.Eeo.Contract.Group.Description, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.fixed.rate, aes(x=Employee.Eeo.Contract.Group.Description, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))



#######################violin#######################
p <- ggplot(pay3.leave.fixed.rate, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=Annual.Increase.Rate ))
p + geom_violin()+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.fixed.rate, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(pay3.fixed.rate, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))



#######################violin#######################
p <- ggplot(pay3.leave.fixed.rate, aes(x=Citizenship.Indicator, y=Annual.Increase.Rate ))

p + geom_violin()+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(pay3.active.fixed.rate, aes(x=Citizenship.Indicator, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.fixed.rate, aes(x=Citizenship.Indicator, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))


#######################violin#######################
p <- ggplot(pay3.leave.fixed.rate, aes(x=Employee.Full.Time.Part.Time.Indicator, y=Annual.Increase.Rate ))

p + geom_violin()+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.fixed.rate, aes(x=Employee.Full.Time.Part.Time.Indicator, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(pay3.fixed.rate, aes(x=Employee.Full.Time.Part.Time.Indicator, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))


#######################violin#######################
p <- ggplot(pay3.leave.fixed.rate, aes(x=Gender, y=Annual.Increase.Rate ))
p + geom_violin()+ 
  ggtitle("Fixed Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.active.fixed.rate, aes(x=Gender, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("Fixed Active Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(pay3.fixed.rate, aes(x=Gender, y=Annual.Increase.Rate))
p + geom_violin()+ 
  ggtitle("All Fixed Employee") +
  theme(text = element_text(size = 18, family="Impact"))


