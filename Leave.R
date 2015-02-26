summary(pay3.all4)

#employees who had leave RPI and with more than 1 year pay information
leave1 <- pay3.all4[(pay3.all4$Current.Employee.Status != "Active"),]
summary(leave1)

#All employees who had leave RPI########
leave0 <- pay3.all[(pay3.all2$Current.Employee.Status != "Active"),]
summary(leave0)

summary(pay3.all2)
#summary(CBSfy14)
#try1 <- merge(CBSfy14, leave0, by.x = c("RIN"), by.y = c("Rensselaer.Id.Number"))


pay3.leave <- pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]
pay3.leave.regular <- pay3.leave[(pay3.leave$Employee.Regular.Fixed.Term.Temp.Indicator == "Regular"),]
pay3.regular <- pay3.all2[(pay3.all2$Employee.Regular.Fixed.Term.Temp.Indicator == "Regular"),]



pay3.leave.fixed <- pay3.leave[(pay3.leave$Employee.Regular.Fixed.Term.Temp.Indicator == "Fixed"),]
pay3.fixed <- pay3.all2[(pay3.all2$Employee.Regular.Fixed.Term.Temp.Indicator == "Fixed"),]



pay3.active <- pay3.all2[(pay3.all2$Current.Employee.Status == "Active"),]
pay3.active.regular <- pay3.active[(pay3.active$Employee.Regular.Fixed.Term.Temp.Indicator == "Regular"),]
pay3.active.fixed <- pay3.active[(pay3.active$Employee.Regular.Fixed.Term.Temp.Indicator == "Fixed"),]






require(ggplot2)
qplot(Annual.Pay, data=leave0, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)
qplot(Hired, data=leave0, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)
qplot(Annual.Pay, data=pay3.all2, geom="histogram", fill=Current.Employee.Status)


#analysis  relationship with Current Employee Status############################################
qplot(as.factor(), data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(as.factor(), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Current.Employee.Status)

#explore relation ship between Job Terminated Status and years of service############
summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$))
summary(as.factor(pay3.all2$))
s1 <- summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$))
s2 <- summary(as.factor(pay3.all2$))
s1/s2

########################################################################################################################


require(ggplot2)
##analysis the year of service relationship with Current Employee Status###########################################
qplot(as.factor(Hired), data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(as.factor(Hired), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Current.Employee.Status)

qplot(as.factor(Hired), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Active"),], geom="histogram", fill=Current.Employee.Status)


##analysis the year of service relationship with Employee.Faculty.Staff.Student.Indicator###########################################
qplot(as.factor(Hired), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)

##analysis the year of service relationship with Employee.Eeo.Contract.Group.Description###########################################
qplot(as.factor(Hired), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Employee.Eeo.Contract.Group.Description)

##analysis the year of service relationship with Employee.Exempt.Non.Exempt.Indicator###########################################
qplot(as.factor(Hired), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)

##analysis the year of service relationship with Employee.Regular.Fixed.Term.Temp.Indicator###########################################
qplot(as.factor(Hired), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Employee.Regular.Fixed.Term.Temp.Indicator)

##analysis the year of service relationship with Citizenship.Indicator###########################################
qplot(as.factor(Hired), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Citizenship.Indicator)

##analysis the year of service relationship with Employee.Full.Time.Part.Time.Indicator###########################################
qplot(as.factor(Hired), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)

##analysis the year of service relationship with Gender###########################################
qplot(as.factor(Hired), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Gender)

##analysis the year of service relationship with Ethnicity###########################################
qplot(as.factor(Hired), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Ethnicity)

##analysis the year of service relationship with ###########################################
qplot(as.factor(Hired), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=)

##analysis the year of service relationship with ###########################################
qplot(as.factor(Hired), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=)

##analysis the year of service relationship with ###########################################
qplot(as.factor(Hired), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=)

##analysis the year of service relationship with ###########################################
qplot(as.factor(Hired), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=)







#explore relation ship between Job Terminated Status and years of service############
summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$Hired))
summary(as.factor(pay3.all2$Hired))
s1 <- summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$Hired))
s2 <- summary(as.factor(pay3.all2$Hired))
s1/s2

qplot(Start.Annual.Pay, Annual.Increase.Rate, data = pay3.all2, colour = Hired, ylim = c(-.2, .2))
qplot(Start.Annual.Pay, Annual.Increase.Rate, data = pay3.mid, colour = Hired)
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Active"),], colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.mid[(pay3.mid$Current.Employee.Status == "Job Terminated"),], colour = Hired)
qplot(Start.Annual.Pay, Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], colour = Hired, ylim = c(-.2, .2))

qplot(Start.Annual.Pay, Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Active"),], colour = Employee.Faculty.Staff.Student.Indicator, ylim = c(-.2, .2))
qplot(Start.Annual.Pay, Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], colour = Employee.Faculty.Staff.Student.Indicator, ylim = c(-.2, .2))



########################################################################################################################
qplot(as.factor(Start.Year), data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(as.factor(Start.Year), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Current.Employee.Status)

#explore relation ship between Job Terminated Status and years of service############
summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$Start.Year))
summary(as.factor(pay3.all2$Start.Year))
s1 <- summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$Start.Year))
s2 <- summary(as.factor(pay3.all2$Start.Year))
s1/s2


qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2, colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Active"),], colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], colour = )


########################################################################################################################

#analysis the Contract Group relationship with Current Employee Status############################################

qplot(Employee.Eeo.Contract.Group.Description, data=pay3.all2, geom="histogram", fill=Current.Employee.Status)

qplot(as.factor(Employee.Eeo.Contract.Group.Description), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Current.Employee.Status)

#explore relation ship between Job Terminated Status and years of service############
summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$Employee.Eeo.Contract.Group.Description))
summary(as.factor(pay3.all2$Employee.Eeo.Contract.Group.Description))
s1 <- summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$Employee.Eeo.Contract.Group.Description))
s2 <- summary(as.factor(pay3.all2$Employee.Eeo.Contract.Group.Description))
s1/s2


qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2, colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Active"),], colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], colour = )


########################################################################################################################


#analysis Employee.Faculty.Staff.Student.Indicator relationship with Current Employee Status############################################
qplot(as.factor(Employee.Faculty.Staff.Student.Indicator), data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(as.factor(Employee.Faculty.Staff.Student.Indicator), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Current.Employee.Status)

#explore relation ship between Job Terminated Status and years of service############
summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$Employee.Faculty.Staff.Student.Indicator))
summary(as.factor(pay3.all2$Employee.Faculty.Staff.Student.Indicator))
s1 <- summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$Employee.Faculty.Staff.Student.Indicator))
s2 <- summary(as.factor(pay3.all2$Employee.Faculty.Staff.Student.Indicator))
s1/s2


qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2, colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Active"),], colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], colour = )


########################################################################################################################


#analysis Employee.Exempt.Non.Exempt.Indicator relationship with Current Employee Status############################################
qplot(as.factor(Employee.Exempt.Non.Exempt.Indicator), data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(as.factor(Employee.Exempt.Non.Exempt.Indicator), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Current.Employee.Status)

#explore relation ship between Job Terminated Status and years of service############
summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$Employee.Exempt.Non.Exempt.Indicator))
summary(as.factor(pay3.all2$Employee.Exempt.Non.Exempt.Indicator))
s1 <- summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$Employee.Exempt.Non.Exempt.Indicator))
s2 <- summary(as.factor(pay3.all2$Employee.Exempt.Non.Exempt.Indicator))
s1/s2


qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2, colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Active"),], colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], colour = )


########################################################################################################################



#analysis Employee.Regular.Fixed.Term.Temp.Indicator relationship with Current Employee Status############################################
qplot(as.factor(Employee.Regular.Fixed.Term.Temp.Indicator), data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(as.factor(Employee.Regular.Fixed.Term.Temp.Indicator), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Current.Employee.Status)

#explore relation ship between Job Terminated Status and years of service############
summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$Employee.Regular.Fixed.Term.Temp.Indicator))
summary(as.factor(pay3.all2$Employee.Regular.Fixed.Term.Temp.Indicator))
s1 <- summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$Employee.Regular.Fixed.Term.Temp.Indicator))
s2 <- summary(as.factor(pay3.all2$Employee.Regular.Fixed.Term.Temp.Indicator))
s1/s2


qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2, colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Active"),], colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], colour = )


########################################################################################################################


#analysis Citizenship.Indicator relationship with Current Employee Status############################################
qplot(as.factor(Citizenship.Indicator), data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(as.factor(Citizenship.Indicator), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Current.Employee.Status)

#explore relation ship between Job Terminated Status and years of service############
summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$Citizenship.Indicator))
summary(as.factor(pay3.all2$Citizenship.Indicator))
s1 <- summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$Citizenship.Indicator))
s2 <- summary(as.factor(pay3.all2$Citizenship.Indicator))
s1/s2


qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2, colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Active"),], colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], colour = )


########################################################################################################################


#analysis Employee.Full.Time.Part.Time.Indicator relationship with Current Employee Status############################################
qplot(as.factor(Employee.Full.Time.Part.Time.Indicator), data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(as.factor(Employee.Full.Time.Part.Time.Indicator), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Current.Employee.Status)

#explore relation ship between Job Terminated Status and years of service############
summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$Employee.Full.Time.Part.Time.Indicator))
summary(as.factor(pay3.all2$Employee.Full.Time.Part.Time.Indicator))
s1 <- summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$Employee.Full.Time.Part.Time.Indicator))
s2 <- summary(as.factor(pay3.all2$Employee.Full.Time.Part.Time.Indicator))
s1/s2


qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2, colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Active"),], colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], colour = )


########################################################################################################################


#analysis Gender relationship with Current Employee Status############################################
qplot(as.factor(Gender), data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(as.factor(Gender), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Current.Employee.Status)

#explore relation ship between Job Terminated Status and years of service############
summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$Gender))
summary(as.factor(pay3.all2$Gender))
s1 <- summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$Gender))
s2 <- summary(as.factor(pay3.all2$Gender))
s1/s2

qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2, colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Active"),], colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], colour = )


########################################################################################################################


#analysis Ethnicity relationship with Current Employee Status############################################
qplot(as.factor(Ethnicity), data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(as.factor(Ethnicity), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Current.Employee.Status)

#explore relation ship between Job Terminated Status and years of service############
summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$Ethnicity))
summary(as.factor(pay3.all2$Ethnicity))
s1 <- summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$Ethnicity))
s2 <- summary(as.factor(pay3.all2$Ethnicity))
s1/s2

qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2, colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Active"),], colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], colour = )


########################################################################################################################


#analysis  relationship with Current Employee Status############################################
qplot(Start.Annual.Pay, data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(Start.Annual.Pay, data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Current.Employee.Status)

#explore relation ship between Job Terminated Status and years of service############
summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$))
summary(as.factor(pay3.all2$))
s1 <- summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$))
s2 <- summary(as.factor(pay3.all2$))
s1/s2

qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2, colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Active"),], colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], colour = )


########################################################################################################################


#analysis  relationship with Current Employee Status############################################
qplot(as.factor(), data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(as.factor(), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Current.Employee.Status)

#explore relation ship between Job Terminated Status and years of service############
summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$))
summary(as.factor(pay3.all2$))
s1 <- summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$))
s2 <- summary(as.factor(pay3.all2$))
s1/s2

qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2, colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Active"),], colour = )
qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], colour = )


########################################################################################################################


#analysis  relationship with Current Employee Status############################################
qplot(as.factor(), data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(as.factor(), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Current.Employee.Status)

#explore relation ship between Job Terminated Status and years of service############
summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$))
summary(as.factor(pay3.all2$))
s1 <- summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$))
s2 <- summary(as.factor(pay3.all2$))
s1/s2

########################################################################################################################


#analysis  relationship with Current Employee Status############################################
qplot(as.factor(), data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(as.factor(), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Current.Employee.Status)

#explore relation ship between Job Terminated Status and years of service############
summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$))
summary(as.factor(pay3.all2$))
s1 <- summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$))
s2 <- summary(as.factor(pay3.all2$))
s1/s2

########################################################################################################################


#analysis  relationship with Current Employee Status############################################
qplot(as.factor(), data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(as.factor(), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Current.Employee.Status)

#explore relation ship between Job Terminated Status and years of service############
summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$))
summary(as.factor(pay3.all2$))
s1 <- summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$))
s2 <- summary(as.factor(pay3.all2$))
s1/s2

########################################################################################################################


#analysis  relationship with Current Employee Status############################################
qplot(as.factor(), data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(as.factor(), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Current.Employee.Status)

#explore relation ship between Job Terminated Status and years of service############
summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$))
summary(as.factor(pay3.all2$))
s1 <- summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$))
s2 <- summary(as.factor(pay3.all2$))
s1/s2

########################################################################################################################


#analysis  relationship with Current Employee Status############################################
qplot(as.factor(), data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(as.factor(), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Current.Employee.Status)

#explore relation ship between Job Terminated Status and years of service############
summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$))
summary(as.factor(pay3.all2$))
s1 <- summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$))
s2 <- summary(as.factor(pay3.all2$))
s1/s2

########################################################################################################################


#analysis  relationship with Current Employee Status############################################
qplot(as.factor(), data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(as.factor(), data=pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),], geom="histogram", fill=Current.Employee.Status)

#explore relation ship between Job Terminated Status and years of service############
summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$))
summary(as.factor(pay3.all2$))
s1 <- summary(as.factor(pay3.all2[(pay3.all2$Current.Employee.Status == "Job Terminated"),]$))
s2 <- summary(as.factor(pay3.all2$))
s1/s2

########################################################################################################################




qplot(Employee.Exempt.Non.Exempt.Indicator, data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(Employee.Type, data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(Employee.Regular.Fixed.Term.Temp.Indicator, data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(Citizenship.Indicator, data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(Employee.Full.Time.Part.Time.Indicator, data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(Gender, data=pay3.all2, geom="histogram", fill=Current.Employee.Status)

qplot(Ethnicity, data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(as.factor(Hours.Per.Pay.Period), data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(as.factor(Pays.Per.Year), data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(Annual.Increase.Rate, data=pay3.all2[(pay3.all2$Hired != 0),], geom="histogram", 
      fill=Current.Employee.Status, xlim = c(-0, 0.1))
qplot(Annual.Pay, data=pay3.all2, geom="histogram", fill=Current.Employee.Status, xlim = c(0, 300000))
qplot(, data=pay3.all2, geom="histogram", fill=Current.Employee.Status)

qplot(, data=pay3.all2, geom="histogram", fill=Current.Employee.Status)
qplot(, data=pay3.all2, geom="histogram", fill=Current.Employee.Status)


########################################################################################################################

















require(ggplot2)
##analysis the year of service relationship with Current Employee Status###########################################
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Current.Employee.Status)
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Current.Employee.Status)
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Employee.Regular.Fixed.Term.Temp.Indicator)




##analysis the year of service relationship with Employee.Faculty.Staff.Student.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)

##analysis the year of service relationship with Employee.Eeo.Contract.Group.Description###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)

##analysis the year of service relationship with Employee.Exempt.Non.Exempt.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)

##analysis the year of service relationship with Employee.Regular.Fixed.Term.Temp.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Employee.Regular.Fixed.Term.Temp.Indicator)
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Employee.Regular.Fixed.Term.Temp.Indicator)

##analysis the year of service relationship with Citizenship.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Citizenship.Indicator)
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Citizenship.Indicator)


##analysis the year of service relationship with Employee.Full.Time.Part.Time.Indicator###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)

##analysis the year of service relationship with Gender###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Gender)
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Gender)

##analysis the year of service relationship with Ethnicity###########################################
qplot(as.factor(Hired), data=pay3.leave.regular, geom="histogram", fill=Ethnicity)
qplot(as.factor(Hired), data=pay3.regular, geom="histogram", fill=Ethnicity)









summary(pay3.leave.regular$Ethnicity)
summary(pay3.regular$Ethnicity)


s1 <- summary(pay3.leave.regular$Ethnicity)
s2 <- summary(pay3.regular$Ethnicity)

s1/s2
#qplot(as.factor(Hired), s1/s2, data=pay3.leave.regular, geom="line")




#ggplot(pay3.leave.regular, aes(x=as.factor(Hired), y=Start.Annual.Pay, fill=Gender)) +
 # geom_bar(stat="identity", width=0.5, position="dodge")

#ggplot(pay3.leave.regular, aes(x=as.factor(Hired), y=Start.Annual.Pay, fill=Gender)) +
 # geom_bar(stat="identity", width=0.5, position=position_dodge(0.7)) + 
  #geom_text(aes(label=Start.Annual.Pay), vjust=1.5, colour="white")

#ggplot(pay3.leave.regular, aes(x=Hired, y=Start.Annual.Pay, fill=Gender)) + geom_area()


ggplot(pay3.leave.regular, aes(x=Hired)) + geom_density() + facet_grid(Gender~ .)
ggplot(pay3.leave.regular, aes(x=Hired)) + geom_density() + facet_grid( Employee.Full.Time.Part.Time.Indicator~ .)
# Map smoke to colour
ggplot(pay3.leave.regular, aes(x=Hired, colour=Gender)) + geom_density()
# Map smoke to fill and make the fill semitransparent by setting alpha
ggplot(pay3.leave.regular, aes(x=Hired, fill=)) + geom_density(alpha=.3)
ggplot(pay3.leave.regular, aes(x=Hired, fill=)) + geom_density(alpha=.3)
ggplot(pay3.leave.regular, aes(x=Hired, fill=Citizenship.Indicator)) + geom_density(alpha=.3)
ggplot(pay3.leave.regular, aes(x=Hired, fill=Employee.Full.Time.Part.Time.Indicator)) + geom_density(alpha=.3)

ggplot(pay3.regular, aes(x=Hired, fill=Citizenship.Indicator)) + geom_density(alpha=.3)



ggplot(pay3.regular, aes(x=Hired, y=..density..)) +
  geom_histogram(binwidth=1, fill="cornsilk", colour="grey", size=.1) +
  geom_density() +
  facet_grid(Gender ~ .)


p <- ggplot(pay3.leave.regular, aes(x=Gender, y=Start.Annual.Pay))
p <- ggplot(pay3.leave.regular, aes(x=Gender, y=Hired))
p <- ggplot(pay3.leave.regular, aes(x=Employee.Full.Time.Part.Time.Indicator, y=Start.Annual.Pay))
p + geom_violin()
p + geom_violin(adjust=2) # Less smoothing
p + geom_violin(adjust=.5)




#+ theme(text = element_text(size = 18, family="Impact"))
















######Graph Cookbook########
cabbage_exp

ggplot(cabbage_exp, aes(x=Date, y=Weight, fill=Cultivar)) +
  geom_bar(stat="identity", width=0.5, position="dodge")


# Below the top
ggplot(cabbage_exp, aes(x=interaction(Date, Cultivar), y=Weight)) +
  geom_bar(stat="identity") +
  geom_text(aes(label=Weight), vjust=1.5, colour="white")


# Above the top
ggplot(cabbage_exp, aes(x=interaction(Date, Cultivar), y=Weight)) +
  geom_bar(stat="identity") +
  geom_text(aes(label=Weight), vjust=-0.2)


library(gcookbook) # For the data set
tophit <- tophitters2001[1:25, ] # Take the top 25 from the tophitters data set
ggplot(tophit, aes(x=avg, y=name)) + geom_point()
ggplot(tophit, aes(x=avg, y=reorder(name, avg))) + geom_point(size=3) + # Use a larger dot theme_bw() +
  theme(panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.major.y = element_line(colour="grey60", linetype="dashed"))

# Get the names, sorted first by lg, then by avg
nameorder <- tophit$name[order(tophit$lg, tophit$avg)]
# Turn name into a factor, with levels in the order of nameorder
tophit$name <- factor(tophit$name, levels=nameorder)

ggplot(tophit, aes(x=avg, y=name)) +
  geom_segment(aes(yend=name), xend=0, colour="grey50") + geom_point(size=3, aes(colour=lg)) + scale_colour_brewer(palette="Set1", limits=c("NL","AL")) +
  theme_bw() +
  theme(panel.grid.major.y = element_blank(), # No horizontal grid lines
        legend.position=c(1, 0.55), # Put legend inside plot area 
        legend.justification=c(1, 0.5))
        
worldpop
ggplot(worldpop, aes(x=Year, y=Population)) + geom_line() + geom_point()


uspopage
ggplot(uspopage, aes(x=Year, y=Thousands, fill=AgeGroup)) + geom_area()


# Grab a subset of the climate data
clim <- subset(climate, Source == "Berkeley",
               select=c("Year", "Anomaly10y", "Unc10y"))
clim

ggplot(clim, aes(x=Year, y=Anomaly10y)) +
  geom_ribbon(aes(ymin=Anomaly10y-Unc10y, ymax=Anomaly10y+Unc10y),
              alpha=0.2) +
              geom_line()

heightweight[, c("sex", "ageYear", "heightIn")]
ggplot(heightweight, aes(x=ageYear, y=heightIn, colour=sex)) + geom_point()
ggplot(heightweight, aes(x=ageYear, y=heightIn, shape=sex)) + geom_point()


library(MASS) # For the data set
birthwt1 <- birthwt

# Convert smoke to a factor
birthwt1$smoke <- factor(birthwt1$smoke)
ggplot(birthwt1, aes(x=bwt)) + geom_density() + facet_grid(smoke ~ .)
# Map smoke to colour
ggplot(birthwt1, aes(x=bwt, colour=smoke)) + geom_density()
# Map smoke to fill and make the fill semitransparent by setting alpha
ggplot(birthwt1, aes(x=bwt, fill=smoke)) + geom_density(alpha=.3)

ggplot(birthwt1, aes(x=bwt, y=..density..)) +
  geom_histogram(binwidth=200, fill="cornsilk", colour="grey60", size=.2) +
  geom_density() +
  facet_grid(smoke ~ .)


heightweight
# Base plot
p <- ggplot(heightweight, aes(x=sex, y=heightIn))
p + geom_violin()

# More smoothing
p + geom_violin(adjust=2) # Less smoothing
p + geom_violin(adjust=.5)



wind
ggplot(wind, aes(x=DirCat, fill=SpeedCat)) + geom_histogram(binwidth=15, origin=-7.5, colour="black", size=.25) + guides(fill=guide_legend(reverse=TRUE)) +
  coord_polar() +
  scale_x_continuous(limits=c(0,360), breaks=seq(0, 360, by=45),
                     minor_breaks=seq(0, 360, by=15)) +
  scale_fill_brewer()

############################


plot(mtcars$wt, mtcars$mpg)
print(ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point())
dev.off()

ppi <- 300
# Calculate the height and width (in pixels) for a 4x4-inch image at 300 ppi 
png("myplot.png", width=4*ppi, height=4*ppi, res=ppi)
plot(mtcars$wt, mtcars$mpg)
dev.off()




######output for report ###########
install.packages("extrafont")
library(extrafont)


# Find and save information about fonts installed on your system
font_import()
# List the fonts
fonts()

library(extrafont)
# Register the fonts with R 
loadfonts()


library(ggplot2)
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point() +
  ggtitle("Title text goes here") +
  theme(text = element_text(size = 18, family="Impact"))
ggsave("myplot.pdf", width=4, height=4)
embed_fonts("myplot.pdf")



















########Final Presentation###########
qplot(as.factor(Hired), data=pay3.all2, geom="histogram", fill=Current.Employee.Status)


qplot(as.factor(Hired), data=pay3.all2, geom="histogram", fill=Current.Employee.Status, xlab = "Years of Service")+ 
  ggtitle("All Employee") +
  theme(text = element_text(size = 18, family="Impact"))  





qplot(Start.Annual.Pay, Delta.Annual.Increase.Rate, data = pay3.all4, colour = "red")





qplot(Start.Annual.Pay, data=pay3.all4, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))  









pay3_all4 <- pay3.all4
pay3_all4$Count <- 1

s1 <- summary(as.factor(pay3_all4[(pay3_all4$Start.Annual.Pay < 50000 & pay3_all4$Current.Employee.Status == "Job Terminated"),]$Count))
s2 <- summary(as.factor(pay3_all4[(pay3_all4$Start.Annual.Pay < 50000),] $Count))
summary(as.factor(pay3_all4[(pay3_all4$Start.Annual.Pay < 50000 & pay3_all4$Current.Employee.Status == "Job Terminated"),]$Count))
summary(as.factor(pay3_all4[(pay3_all4$Start.Annual.Pay < 50000),] $Count))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")


s1 <- summary(as.factor(pay3_all4[(pay3_all4$Start.Annual.Pay > 50000 & pay3_all4$Current.Employee.Status == "Job Terminated"),]$Count))
s2 <- summary(as.factor(pay3_all4[(pay3_all4$Start.Annual.Pay > 50000),] $Count))
summary(as.factor(pay3_all4[(pay3_all4$Start.Annual.Pay > 50000 & pay3_all4$Current.Employee.Status == "Job Terminated"),]$Count))
summary(as.factor(pay3_all4[(pay3_all4$Start.Annual.Pay > 50000),] $Count))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")







qplot(Employee.Regular.Fixed.Term.Temp.Indicator, data=pay3_all4, geom="histogram", fill=as.factor(Ethnicity))+ 
  ggtitle("All Employees") +
  theme(text = element_text(size = 18, family="Impact"))  



summary(pay3_all4$Annual.Increase.Rate)



n1 <- sum(pay3_all4[(pay3_all4$Start.Annual.Pay < 50000),]$Count)
n2 <- sum(pay3_all4[(pay3_all4$Start.Annual.Pay >= 50000),]$Count)



x1 <- sum(pay3_all4[(pay3_all4$Start.Annual.Pay < 50000 & pay3_all4$Current.Employee.Status == "Job Terminated"),]$Count)
x2 <- sum(pay3_all4[(pay3_all4$Start.Annual.Pay >= 50000 & pay3_all4$Current.Employee.Status == "Job Terminated"),]$Count)


prop.test(x = c(x1, x2), n = c(n1, n2), correct = FALSE)

