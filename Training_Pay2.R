courseTaken10years_pay_Regular_small <- courseTaken10years_pay_Regular[courseTaken10years_pay_Regular$AnnualCourseTaken < 12,]
courseTaken10years_pay_Regular_small_active <- courseTaken10years_pay_Regular_small[courseTaken10years_pay_Regular_small$Current.Employee.Status == "Active",]
courseTaken10years_pay_Regular_small_terminated <- courseTaken10years_pay_Regular_small[courseTaken10years_pay_Regular_small$Current.Employee.Status == "Job Terminated",]


courseTaken10years_pay_Regular_exempt <- courseTaken10years_pay_Regular[courseTaken10years_pay_Regular$Employee.Exempt.Non.Exempt.Indicator == "Exempt",]
courseTaken10years_pay_Regular_noexempt <- courseTaken10years_pay_Regular[courseTaken10years_pay_Regular$Employee.Exempt.Non.Exempt.Indicator == "Non-Exempt",]

courseTaken10years_pay_Regular_small_exempt <- courseTaken10years_pay_Regular_small[courseTaken10years_pay_Regular_small$Employee.Exempt.Non.Exempt.Indicator == "Exempt",]
courseTaken10years_pay_Regular_small_noexempt <- courseTaken10years_pay_Regular_small[courseTaken10years_pay_Regular_small$Employee.Exempt.Non.Exempt.Indicator == "Non-Exempt",]


#####Analysis of all regular#######
qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_exempt, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt, geom="histogram", fill=Citizenship.Indicator)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt, geom="histogram", fill=Gender)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt, geom="histogram", fill=Ethnicity)+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt, geom="histogram", fill=as.factor(Hired))+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt, geom="histogram", fill=as.factor(Start.Year))+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt, geom="histogram", fill=as.factor(End.Year))+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Annual.Increase.Rate, data=courseTaken10years_pay_Regular_small_exempt, geom="histogram", fill= as.factor(AnnualCourseTaken))+ 
  ggtitle("All Exempt Employee") +
  theme(text = element_text(size = 18, family="Impact"))  
















courseTaken10years_pay_Regular_Faculty <- courseTaken10years_pay_Regular[courseTaken10years_pay_Regular$Employee.Faculty.Staff.Student.Indicator == "Faculty",]
courseTaken10years_pay_Regular_Staff <- courseTaken10years_pay_Regular[courseTaken10years_pay_Regular$Employee.Faculty.Staff.Student.Indicator == "Staff",]

courseTaken10years_pay_Regular_small_Faculty <- courseTaken10years_pay_Regular_small[courseTaken10years_pay_Regular_small$Employee.Faculty.Staff.Student.Indicator == "Faculty",]
courseTaken10years_pay_Regular_small_Staff <- courseTaken10years_pay_Regular_small[courseTaken10years_pay_Regular_small$Employee.Faculty.Staff.Student.Indicator == "Staff",]




#####Analysis of all regular#######
qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_Faculty, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Faculty Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_Staff, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Staff Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_Staff, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_Staff, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_Staff, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_Staff, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_Staff, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_Staff, geom="histogram", fill=Citizenship.Indicator)+ 
  ggtitle("All Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_Staff, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
  ggtitle("All Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_Staff, geom="histogram", fill=Gender)+ 
  ggtitle("All Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_Staff, geom="histogram", fill=Ethnicity)+ 
  ggtitle("All Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_Staff, geom="histogram", fill=as.factor(Hired))+ 
  ggtitle("All Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_Staff, geom="histogram", fill=as.factor(Start.Year))+ 
  ggtitle("All Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_Staff, geom="histogram", fill=as.factor(End.Year))+ 
  ggtitle("All Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Annual.Increase.Rate, data=courseTaken10years_pay_Regular_small_Staff, geom="histogram", fill= as.factor(AnnualCourseTaken))+ 
  ggtitle("All Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))  


#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(courseTaken10years_pay_Regular_Faculty[(courseTaken10years_pay_Regular_Faculty$Current.Employee.Status == "Active"),]$AnnualCourseTaken))
s2 <- summary(as.factor(courseTaken10years_pay_Regular_Faculty$AnnualCourseTaken))
summary(as.factor(courseTaken10years_pay_Regular_Faculty[(courseTaken10years_pay_Regular_Faculty$Current.Employee.Status == "Active"),]$AnnualCourseTaken))
summary(as.factor(courseTaken10years_pay_Regular_Faculty$AnnualCourseTaken))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Annual Courses Taken", ylab = "Percentage of Active Faculty Employee", main = "All Faculty Employee")



#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(courseTaken10years_pay_Regular_small_Staff[(courseTaken10years_pay_Regular_small_Staff$Current.Employee.Status == "Active"),]$AnnualCourseTaken))
s2 <- summary(as.factor(courseTaken10years_pay_Regular_small_Staff$AnnualCourseTaken))
summary(as.factor(courseTaken10years_pay_Regular_small_Staff[(courseTaken10years_pay_Regular_small_Staff$Current.Employee.Status == "Active"),]$AnnualCourseTaken))
summary(as.factor(courseTaken10years_pay_Regular_small_Staff$AnnualCourseTaken))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Annual Courses Taken", ylab = "Percentage of Active Staff Employee", main = "Staff Employee taking less than 12 courses")












courseTaken10years_pay_Regular_small_exempt_Staff <- courseTaken10years_pay_Regular_small_Staff[(courseTaken10years_pay_Regular_small_Staff$Employee.Exempt.Non.Exempt.Indicator == "Exempt"),]
courseTaken10years_pay_Regular_small_nonexempt_Staff <- courseTaken10years_pay_Regular_small_Staff[(courseTaken10years_pay_Regular_small_Staff$Employee.Exempt.Non.Exempt.Indicator == "Non-Exempt"),]


require(ggplot2)
#####Analysis of all regular#######
qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_Faculty, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Faculty Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_Staff, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Staff Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt_Staff, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Exempt Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt_Staff, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Exempt Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_nonexempt_Staff, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Non-Exempt Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))


qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt_Staff, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Exempt Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt_Staff, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Exempt Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt_Staff, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Exempt Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt_Staff, geom="histogram", fill=Citizenship.Indicator)+ 
  ggtitle("All Exempt Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt_Staff, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
  ggtitle("All Exempt Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt_Staff, geom="histogram", fill=Gender)+ 
  ggtitle("All Exempt Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt_Staff, geom="histogram", fill=Ethnicity)+ 
  ggtitle("All Exempt Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt_Staff, geom="histogram", fill=as.factor(Hired))+ 
  ggtitle("All Exempt Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt_Staff, geom="histogram", fill=as.factor(Start.Year))+ 
  ggtitle("All Exempt Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_exempt_Staff, geom="histogram", fill=as.factor(End.Year))+ 
  ggtitle("All Exempt Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Annual.Increase.Rate, data=courseTaken10years_pay_Regular_small_exempt_Staff, geom="histogram", fill= as.factor(AnnualCourseTaken))+ 
  ggtitle("All Exempt Staff Employee taking less than 12 courses") +
  theme(text = element_text(size = 18, family="Impact"))  






#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(courseTaken10years_pay_Regular_small_exempt_Staff[(courseTaken10years_pay_Regular_small_exempt_Staff$Current.Employee.Status == "Active"),]$AnnualCourseTaken))
s2 <- summary(as.factor(courseTaken10years_pay_Regular_small_exempt_Staff$AnnualCourseTaken))
summary(as.factor(courseTaken10years_pay_Regular_small_exempt_Staff[(courseTaken10years_pay_Regular_small_exempt_Staff$Current.Employee.Status == "Active"),]$AnnualCourseTaken))
summary(as.factor(courseTaken10years_pay_Regular_small_exempt_Staff$AnnualCourseTaken))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Annual Courses Taken", ylab = "Percentage of Active Staff Employee", main = "Exempt Staff Employee taking less than 12 courses")



#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(courseTaken10years_pay_Regular_small_nonexempt_Staff[(courseTaken10years_pay_Regular_small_nonexempt_Staff$Current.Employee.Status == "Active"),]$AnnualCourseTaken))
s2 <- summary(as.factor(courseTaken10years_pay_Regular_small_nonexempt_Staff$AnnualCourseTaken))
summary(as.factor(courseTaken10years_pay_Regular_small_nonexempt_Staff[(courseTaken10years_pay_Regular_small_nonexempt_Staff$Current.Employee.Status == "Active"),]$AnnualCourseTaken))
summary(as.factor(courseTaken10years_pay_Regular_small_nonexempt_Staff$AnnualCourseTaken))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Annual Courses Taken", ylab = "Percentage of Active Staff Employee", main = "Non-xempt Staff Employee taking less than 12 courses")



#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(courseTaken10years_pay_Regular_small_Faculty[(courseTaken10years_pay_Regular_small_Faculty$Hired == 9),]$AnnualCourseTaken))
s2 <- summary(as.factor(courseTaken10years_pay_Regular_small_Faculty[(courseTaken10years_pay_Regular_small_Faculty$AnnualCourseTaken < 4),]$AnnualCourseTaken))
summary(as.factor(courseTaken10years_pay_Regular_small_Faculty[(courseTaken10years_pay_Regular_small_Faculty$Hired == 9),]$AnnualCourseTaken))
summary(as.factor(courseTaken10years_pay_Regular_small_Faculty $AnnualCourseTaken))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Annual Courses Taken", ylab = "Percentage of Staff Employee with 9 or 9+ years of service", main = "Exempt Staff Employee taking less than 12 courses")


#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(courseTaken10years_pay_Regular_small_exempt_Staff[(courseTaken10years_pay_Regular_small_exempt_Staff$Hired == 9),]$AnnualCourseTaken))
s2 <- summary(as.factor(courseTaken10years_pay_Regular_small_exempt_Staff[(courseTaken10years_pay_Regular_small_exempt_Staff$AnnualCourseTaken < 11),]$AnnualCourseTaken))
summary(as.factor(courseTaken10years_pay_Regular_small_exempt_Staff[(courseTaken10years_pay_Regular_small_exempt_Staff$Hired == 9),]$AnnualCourseTaken))
summary(as.factor(courseTaken10years_pay_Regular_small_exempt_Staff $AnnualCourseTaken))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Annual Courses Taken", ylab = "Percentage of Staff Employee with 9 or 9+ years of service", main = "Exempt Staff Employee taking less than 12 courses")



#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(courseTaken10years_pay_Regular_small_nonexempt_Staff[(courseTaken10years_pay_Regular_small_nonexempt_Staff$Hired == 9),]$AnnualCourseTaken))
s2 <- summary(as.factor(courseTaken10years_pay_Regular_small_nonexempt_Staff[(courseTaken10years_pay_Regular_small_nonexempt_Staff$AnnualCourseTaken < 10),]$AnnualCourseTaken))
summary(as.factor(courseTaken10years_pay_Regular_small_nonexempt_Staff[(courseTaken10years_pay_Regular_small_nonexempt_Staff$Hired == 9),]$AnnualCourseTaken))
summary(as.factor(courseTaken10years_pay_Regular_small_nonexempt_Staff$AnnualCourseTaken))
s1/s2
plot(s1/s2, type = "l", col = "red", xlab = "Annual Courses Taken", ylab = "Percentage of Staff Employee with 9 or 9+ years of service", main = "Non-xempt Staff Employee taking less than 12 courses")




















