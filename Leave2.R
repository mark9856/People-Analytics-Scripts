
require(ggplot2)
##analysis the year of service relationship with Current Employee Status###########################################
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Current.Employee.Status)+ 
 ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

#qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Employee.Regular.Fixed.Term.Temp.Indicator)




##analysis the year of service relationship with Employee.Faculty.Staff.Student.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
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
#####################################################

ggplot(pay3.leave.regular, aes(x=Hired)) +
  geom_histogram(binwidth=1, colour="grey", size=.1) +
  facet_grid(Employee.Faculty.Staff.Student.Indicator ~ .)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


ggplot(pay3.regular, aes(x=Hired)) +
  geom_histogram(binwidth=1, colour="grey", size=.1) +
  facet_grid(Employee.Faculty.Staff.Student.Indicator ~ .)+ 
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


##analysis the year of service relationship with Employee.Eeo.Contract.Group.Description###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
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
#####################################################




ggplot(pay3.leave.regular, aes(x=Hired)) +
  geom_histogram(binwidth=1, colour="grey", size=.1) +
  facet_grid(Employee.Eeo.Contract.Group.Description ~ .)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


ggplot(pay3.regular, aes(x=Hired)) +
  geom_histogram(binwidth=1, colour="grey", size=.1) +
  facet_grid(Employee.Eeo.Contract.Group.Description ~ .)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



#######################violin#######################
p <- ggplot(pay3.leave.regular, aes(x=, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.regular, aes(x=, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


##analysis the year of service relationship with Employee.Exempt.Non.Exempt.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
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
#####################################################

ggplot(pay3.leave.regular, aes(x=Hired)) +
  geom_histogram(binwidth=1, colour="grey", size=.1) +
  facet_grid(Employee.Exempt.Non.Exempt.Indicator ~ .)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


ggplot(pay3.regular, aes(x=Hired)) +
  geom_histogram(binwidth=1, colour="grey", size=.1) +
  facet_grid(Employee.Exempt.Non.Exempt.Indicator ~ .)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


#######################violin#######################
p <- ggplot(pay3.leave.regular, aes(x=, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.regular, aes(x=, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


##analysis the year of service relationship with Employee.Regular.Fixed.Term.Temp.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Employee.Regular.Fixed.Term.Temp.Indicator)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Employee.Regular.Fixed.Term.Temp.Indicator)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

######################density#########################
ggplot(pay3.leave.regular, aes(x=Hired, fill=Employee.Regular.Fixed.Term.Temp.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, fill=Employee.Regular.Fixed.Term.Temp.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


ggplot(pay3.leave.regular, aes(x=Hired, colour=)) + geom_density()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, colour=)) + geom_density()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))
#####################################################

ggplot(pay3.leave.regular, aes(x=Hired)) +
  geom_histogram(binwidth=1, colour="grey", size=.1) +
  facet_grid(Employee.Regular.Fixed.Term.Temp.Indicator ~ .)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


ggplot(pay3.regular, aes(x=Hired)) +
  geom_histogram(binwidth=1, colour="grey", size=.1) +
  facet_grid(Employee.Regular.Fixed.Term.Temp.Indicator ~ .)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



#######################violin#######################
p <- ggplot(pay3.leave.regular, aes(x=, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.regular, aes(x=, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


##analysis the year of service relationship with Citizenship.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Citizenship.Indicator)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Citizenship.Indicator)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

######################density#########################
ggplot(pay3.leave.regular, aes(x=Hired, fill=Citizenship.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, fill=Citizenship.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


ggplot(pay3.leave.regular, aes(x=Hired, colour=)) + geom_density()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, colour=)) + geom_density()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))
#####################################################


ggplot(pay3.leave.regular, aes(x=Hired)) +
  geom_histogram(binwidth=1, colour="grey", size=.1) +
  facet_grid(Citizenship.Indicator ~ .)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


ggplot(pay3.regular, aes(x=Hired)) +
  geom_histogram(binwidth=1, colour="grey", size=.1) +
  facet_grid(Citizenship.Indicator ~ .)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



#######################violin#######################
p <- ggplot(pay3.leave.regular, aes(x=, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.regular, aes(x=, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


##analysis the year of service relationship with Employee.Full.Time.Part.Time.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

######################density#########################
ggplot(pay3.leave.regular, aes(x=Hired, fill=Employee.Full.Time.Part.Time.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, fill=Employee.Full.Time.Part.Time.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


ggplot(pay3.leave.regular, aes(x=Hired, colour=)) + geom_density()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, colour=)) + geom_density()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))
#####################################################


ggplot(pay3.leave.regular, aes(x=Hired)) +
  geom_histogram(binwidth=1, colour="grey", size=.1) +
  facet_grid(Employee.Full.Time.Part.Time.Indicator ~ .)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


ggplot(pay3.regular, aes(x=Hired)) +
  geom_histogram(binwidth=1, colour="grey", size=.1) +
  facet_grid(Employee.Full.Time.Part.Time.Indicator ~ .)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


#######################violin#######################
p <- ggplot(pay3.leave.regular, aes(x=, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.regular, aes(x=, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


##analysis the year of service relationship with Gender###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Gender)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Gender)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


######################density#########################
ggplot(pay3.leave.regular, aes(x=Hired, fill=Gender)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, fill=Gender)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


ggplot(pay3.leave.regular, aes(x=Hired, colour=)) + geom_density()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, colour=)) + geom_density()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))
#####################################################


ggplot(pay3.leave.regular, aes(x=Hired)) +
  geom_histogram(binwidth=1, colour="grey", size=.1) +
  facet_grid( Gender~ .)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


ggplot(pay3.regular, aes(x=Hired)) +
  geom_histogram(binwidth=1, colour="grey", size=.1) +
  facet_grid( Gender~ .)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



#######################violin#######################
p <- ggplot(pay3.leave.regular, aes(x=, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.regular, aes(x=, y=Start.Annual.Pay))
p + geom_violin()+ 
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
ggplot(pay3.leave.regular, aes(x=Hired, fill=Ethnicity)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, fill=Ethnicity)) + geom_density(alpha=.3)+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



ggplot(pay3.leave.regular, aes(x=Hired, colour=)) + geom_density()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))
ggplot(pay3.regular, aes(x=Hired, colour=)) + geom_density()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))
#####################################################



#######################violin#######################
p <- ggplot(pay3.leave.regular, aes(x=, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))


p <- ggplot(pay3.regular, aes(x=, y=Start.Annual.Pay))
p + geom_violin()+ 
  ggtitle("Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))