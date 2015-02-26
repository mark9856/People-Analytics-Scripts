trainingAll10Year <- read.csv(file="/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Training_Data/tc_report_05-14.csv", header=TRUE, sep=",")

trainingAll10Years <- trainingAll10Year[, c('RIN', 'Course', 'Course.Category', 'Status', 'Completion.Date', 
                                    'Training.Method', 'Group', 'Division.Title', 'Class', 'User.Status')]

trainingAll10Years <- trainingAll10Years[!is.na(trainingAll10Years$Course),]
trainingAll10Years <- trainingAll10Years[!is.na(trainingAll10Years$RIN),]


merg <- function(x, y){
  z <- (merge(x, y, x.by = c("RIN"), y.by = c("Rensselaer.Id.Number"), all = T))
  z <- z[!is.na(z$Course),]
  z <- z[!is.na(z$RIN),]
  #z <- z[!is.na(z$Annual.Increase.Rate),]
  return(z)
}

#train_pay_10years_Regular <- merg(trainingAll10Years, pay3.regular.rate)
pay3.rate <- pay3.regular.rate[, c("Rensselaer.Id.Number", "Start.Year", "Start.Annual.Pay", "Hired", "Annual.Increase.Rate")]
summary(pay3.regular.rate)
train_pay_10years_Regular <- merge(trainingAll10Years, pay3.regular.rate, by.x = c("RIN"), by.y = c("Rensselaer.Id.Number"))

as.factor(train_pay_10years_Regular$RIN)


summary(train_pay_10years_Regular)
summary(train_pay_10years_Regular$Course)
summary(train_pay_10years_Regular$Course.Category)

summary(as.factor(train_pay_10years_Regular$Class))


head(train_per_CBS12)


require(ggplot2)        # or load package first
data(diamonds)
head(diamonds)          # look at the data!
#


ggplot(diamonds, aes(clarity, fill=cut)) + geom_bar()
ggplot(diamonds, aes(clarity)) + geom_bar() + facet_wrap(~ cut)
ggplot(diamonds) + geom_histogram(aes(x=price)) + geom_vline(xintercept=12000)
ggplot(diamonds, aes(clarity)) + geom_freqpoly(aes(group = cut, colour = cut))




ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate, fill=Course)) + geom_bar()
ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate, fill=Course.Category)) + geom_bar()
ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate, fill=Training.Method)) + geom_bar()
ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate, fill=Ethnicity)) + geom_bar()
ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate, fill=Gender)) + geom_bar()
ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate, fill=ECLS)) + geom_bar()
ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate, fill=Portfolio.Title)) + geom_bar()
ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate, fill=User.Status)) + geom_bar()
ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate, fill=Recommended.Increase)) + geom_bar()



ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate)) + geom_bar() + facet_wrap(~ Gender)
ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate)) + geom_bar() + facet_wrap(~ User.Status)
ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate)) + geom_bar() + facet_wrap(~ Training.Method)
ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate)) + geom_bar() + facet_wrap(~ Ethnicity)
ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate)) + geom_bar() + facet_wrap(~ ECLS)
ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate)) + geom_bar() + facet_wrap(~ Class)
ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate)) + geom_bar() + facet_wrap(~ Division.Title)
ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate)) + geom_bar() + facet_wrap(~ FTE)
ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate)) + geom_bar() + facet_wrap(~ Status)
ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate)) + geom_bar() + facet_wrap(~ Course.Category)

ggplot(train_pay_10years_Regular, aes(Recommended.Increase)) + geom_bar() + facet_wrap(~ Course.Category)
ggplot(train_pay_10years_Regular, aes(Course.Category)) + geom_bar() + facet_wrap(~ Recommended.Increase)

ggplot(train_pay_10years_Regular, aes(Course.Category)) + geom_bar() + facet_wrap(~ Annual.Increase.Rate)
ggplot(train_pay_10years_Regular, aes(Gender)) + geom_bar() + facet_wrap(~ Annual.Increase.Rate)
ggplot(train_pay_10years_Regular, aes(ECLS)) + geom_bar() + facet_wrap(~ Annual.Increase.Rate)
ggplot(train_pay_10years_Regular, aes(Course)) + geom_bar() + facet_wrap(~ Annual.Increase.Rate)



ggplot(train_pay_10years_Regular) + geom_histogram(aes(x=Annual.Increase.Rate))
ggplot(train_pay_10years_Regular) + geom_histogram(aes(x=Course))
ggplot(train_pay_10years_Regular) + geom_histogram(aes(x=RIN))
ggplot(train_pay_10years_Regular) + geom_histogram(aes(x=Class))
ggplot(train_pay_10years_Regular) + geom_histogram(aes(x=Gender))
ggplot(train_pay_10years_Regular) + geom_histogram(aes(x=Portfolio.Title))
ggplot(train_pay_10years_Regular) + geom_histogram(aes(x=Status))
ggplot(train_pay_10years_Regular) + geom_histogram(aes(x=Training.Method))
ggplot(train_pay_10years_Regular) + geom_histogram(aes(x=User.Status))
ggplot(train_pay_10years_Regular) + geom_histogram(aes(x=Recommended.Increase))
ggplot(train_pay_10years_Regular) + geom_histogram(aes(x=Course.Category))



ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate)) + geom_freqpoly(aes(group = Gender, colour = Gender))
ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate)) + geom_freqpoly(aes(group = User.Status, colour = User.Status))
ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate)) + geom_freqpoly(aes(group = Class, colour = Class))
ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate)) + geom_freqpoly(aes(group = Course.Category, colour = Course.Category))



qplot(Current.Annual, Recommended.Increase, data = train_pay_10years_Regular, colour = Annual.Increase.Rate)
qplot(Current.Annual, Annual.Increase.Rate, data = train_pay_10years_Regular, colour = ECLS)
qplot(Current.Annual, Training.Method, data = train_pay_10years_Regular, colour = Annual.Increase.Rate)
qplot(Current.Annual, Annual.Increase.Rate, data = train_pay_10years_Regular, colour = Course.Category)


qplot(Recommended.Increase, data=train_pay_10years_Regular, geom="histogram", fill=Annual.Increase.Rate)
qplot(Gender, data=train_pay_10years_Regular, geom="histogram", fill=Annual.Increase.Rate)
qplot(ECLS, data=train_pay_10years_Regular, geom="histogram", fill=Annual.Increase.Rate)
qplot(Course.Category, data=train_pay_10years_Regular, geom="histogram", fill=Annual.Increase.Rate)
qplot(Course, data=train_pay_10years_Regular, geom="histogram", fill=Annual.Increase.Rate)
qplot(Status, data=train_pay_10years_Regular, geom="histogram", fill=Annual.Increase.Rate)
qplot(User.Status, data=train_pay_10years_Regular, geom="histogram", fill=Annual.Increase.Rate)
qplot(Current.Annual, data=train_pay_10years_Regular, geom="histogram", fill=Annual.Increase.Rate)
qplot(FTE, data=train_pay_10years_Regular, geom="histogram", fill=Annual.Increase.Rate)
qplot(Training.Method, data=train_pay_10years_Regular, geom="histogram", fill=Annual.Increase.Rate)



ggplot(train_pay_10years_Regular, aes(x = ECLS, fill = Annual.Increase.Rate)) + geom_histogram(binwidth = 1, alpha = 0.5, position = "identity")
ggplot(train_pay_10years_Regular, aes(x = Gender, fill = Annual.Increase.Rate)) + geom_histogram(binwidth = 1, alpha = 0.5, position = "identity")






head(train_pay_10years_Regular)

asFactor <- function(x){
  x$Portfolio.Title <- as.factor(x$Portfolio.Title)
  x$Org.Title <- as.factor(x$Org.Title)
  x$Title <- as.factor(x$Title)
  x$ECLS <- as.factor(x$ECLS)
  x$Annual.Increase.Rate <- as.factor(x$Annual.Increase.Rate)
  x$Gender <- as.factor(x$Gender)
  x$Ethnicity <- as.factor(x$Ethnicity)
  return(x)
}


train_pay_10years_Regular <- asFactor(train_pay_10years_Regular)
str(train_pay_10years_Regular)

summary(train_pay_10years_Regular$Class)
summary(train_pay_10years_Regular$ECLS)

train_per_12s <- train_pay_10years_Regular[, c('Course', 'Status', 'Completion.Date', 'Training.Method', 'Creation.Date',
                                  'Group', 'Division.Title', 'User.Status', 'Portfolio.Title', 'Org.Title',
                                  'Title', 'FTE',  'ECLS','Annual.Increase.Rate', 'Recommended.Increase',
                                  'Approved.New.Salary', 'Current.Annual','Gender', 'Ethnicity')]

train_per_12m <- train_pay_10years_Regular[, c('Course', 'Status', 'Group', 'User.Status', 'FTE', 'ECLS', 'Annual.Increase.Rate',
                                  'Recommended.Increase', 'Current.Annual', 'Gender', 'Ethnicity')]

require(car)
#scatterplotMatrix(train_per_12m)



#sample#####################

qplot(carat, price, data = diamonds)
qplot(carat, price, data = diamonds, colour = clarity)
qplot(log(carat), log(price), data = diamonds, colour = clarity)


cat("\nheight weight health\n1  0.6008 0.3355  1.280\n2  0.9440 0.6890  1.208\n3  0.6150 0.6980  1.036\n4  1.2340 0.7617  1.395\n5  0.7870 0.8910  0.912\n6  0.9150 0.9330  1.175\n7  1.0490 0.9430  1.237\n8  1.1840 1.0060  1.048\n9  0.7370 1.0200  1.003\n10 1.0770 1.2150  0.943\n11 1.1280 1.2230  0.912\n12 1.5000 1.2360  1.311\n13 1.5310 1.3530  1.411\n14 1.1500 1.3770  0.603\n15 1.9340 2.0734  1.073 ", 
    file = "height_weight.dat")

hw <- read.table("height_weight.dat", header = T)
head(hw)
qplot(x = weight, y = health, data = hw, size = height, colour = I("steelblue"))
qplot(x = weight, y = health, data = hw) + geom_smooth(method = lm)
fit <- lm(health ~ weight, data = hw)
hii <- hatvalues(fit)  #leverages
res <- fit$res  #residuals

qplot(x = weight, y = health, data = hw, size = hii, colour = abs(res)) + geom_abline(intercept = fit$coeff[1], 
                                                                                      slope = fit$coeff[2])  #regression line

library(effects)
head(Arrests)

ggplot(Arrests, aes(x = checks, fill = released)) + geom_histogram(binwidth = 1, alpha = 0.5, position = "identity")

d <- ggplot(diamonds,
            aes(x=carat, y=price))
d + geom_point()
d + geom_point(aes(colour = carat))
d + geom_point(aes(colour = carat)) + scale_colour_brewer()


p <- ggplot(diamonds, aes(x=carat,y=price))
# What will this do?
p + geom_point(aes(colour = "green"))
p + geom_point(colour = "green")
p + geom_point(colour = colour)


qplot(carat, data=diamonds, geom="histogram", fill=clarity)
qplot(carat, cut, data=diamonds, geom="jitter", colour=price)


qplot(length, data=movies,geom="histogram", binwidth=10) + coord_trans(x="log10")

#################












options(java.parameters = "-Xmx4g" )
library(XLConnect)

CBSfy14 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/CBS/CBS FY14.xlsx"),sheet=1)
CBSfy13 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/CBS/CBS FY13.xlsx"),sheet=1)
CBSfy12 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/CBS/CBS FY12.xlsx"),sheet=1)
CBSfy11 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/CBS/CBS FY11.xlsx"),sheet=1)
CBSfy10 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/CBS/CBS FY10.xlsx"),sheet=1)
CBSfy09 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/CBS/CBS FY09.xlsx"),sheet=1)
CBSfy08 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/CBS/CBS FY08.xlsx"),sheet=1)


getTime <- function(x){  
  #Set up age
  x$DOB <- as.numeric(format(as.Date(Sys.time()),format="%Y"))-as.numeric(format(as.Date(x$DOB,format="%m/%d/%Y"),format="%Y")) 
  colnames(x)[names(x) == "DOB"] <- "Age"
  #Set up Hired years
  x$DOH <- as.numeric(format(as.Date(Sys.time()),format="%Y"))-as.numeric(format(as.Date(x$DOH,format="%m/%d/%Y"),format="%Y")) 
  colnames(x)[names(x) == "DOH"] <- "Hired"
  #Select need rows such ECLS equals to EW, EY and so on
  #x <- x[(x$ECLS == "EX") ||(x$ECLS == "EZ")||(x$ECLS == "NX")||(x$ECLS == "NY")||(x$ECLS == "NZ")]
  #x <- x[!(x$ECLS == "EW"),]
  #x <- x[!(x$ECLS == "EY"),]
  #x <- x[!(x$ECLS == "FW"),]
  #x <- x[!(x$ECLS == "FX"),]
  #x <- x[!(x$ECLS == "FY"),]
  #x <- x[!(x$ECLS == "FZ"),]
  #x <- x[!(x$ECLS == "EY"),]
  #x <- x[!(x$ECLS == "NT"),]
  #x <- x[!(x$ECLS == "NW"),]
  
  #x <- x[!(x$BCAT == "SB"),]
  
  #x <- x[!is.na(x$ECLS),]
  return(x)
}


CBS14 <- getTime(CBSfy14)
CBS13 <- getTime(CBSfy13)
CBS12 <- getTime(CBSfy12)
CBS11 <- getTime(CBSfy11)
CBS10 <- getTime(CBSfy10)
CBS09 <- getTime(CBSfy09)
CBS08 <- getTime(CBSfy08)
###
selectFactor <- function(x){
  x <- x[, c('RIN', 'ADDR_1', 'CITY', 'ST', 'ZIP', 'CT', 'Age', 'Hired', 'ACT_PAY', 'ECLS', 'MED_CV', 'JOB.TITLE',
             'TS_ORG', 'TS_ORG_TITLE')]
  return(x)
}

CBSFY12 <- selectFactor(CBS12)


merg2 <- function(x, y){
  z <- (merge(x, y, by = c("RIN")))
  #z <- z[!is.na(z$Course),]
  z <- z[!is.na(z$RIN),]
  #z <- z[!is.na(z$Annual.Increase.Rate),]
  return(z)
}


train_per_CBS12 <- merg2(train_pay_10years_Regular, CBSFY12)


asFactor2 <- function(x){
  x$ECLS <- x$ECLS.x
  x$ECLS.x <- NULL
  x$ADDR_1 <- as.factor(x$ADDR_1)
  x$CITY <- as.factor(x$CITY)
  x$ST <- as.factor(x$ST)
  x$ZIP <- as.factor(x$ZIP)
  x$CT <- as.factor(x$CT)
  x$ECLS.y <- NULL
  x$MED_CV <- as.factor(x$MED_CV)
  x$JOB.TITLE <- as.factor(x$JOB.TITLE)
  x$TS_ORG <- as.factor(x$TS_ORG)
  x$TS_ORG_TITLE <- as.factor(x$TS_ORG_TITLE) 
  
  x$Rating = 'Good'
  x$Rating = ifelse(x$Annual.Increase.Rate == "Developing Performance", 'Bad', x$Rating)
  x$Rating = ifelse(x$Annual.Increase.Rate == "Improvement Essential", 'Bad', x$Rating)
  x$Rating = ifelse(x$Annual.Increase.Rate == "No Evaluation", 'Bad', x$Rating) 
  x$Rating <- as.factor(x$Rating)
  return(x)
}

train_per_CBS12 <- asFactor2(train_per_CBS12)

str(train_per_CBS12)

#Count how many staff or faculty and how many courses for them
require(plyr)
count(as.factor(train_per_CBS12$RIN))

ggplot(train_per_CBS12, aes(Rating, fill=ST)) + geom_bar()
ggplot(train_per_CBS12, aes(Rating, fill=Course.Category)) + geom_bar() + 
  scale_y_continuous(formatter = "percent") 
ggplot(train_per_CBS12, aes(Course.Category, fill=Rating)) + geom_bar()


p = ggplot(mydataf, aes(x = foo)) + 
  geom_bar(aes(y = (..count..)/sum(..count..))) + 
  scale_y_continuous(formatter = 'percent')

ggplot(train_per_CBS12, aes(x = Rating)) + 
  geom_bar(aes(y = (..count..))) + 
  scale_y_continuous(formatter = 'percent')



require(scales)

p = ggplot(train_per_CBS12, aes(Rating)) + 
  geom_bar(aes(y = (Rating)/sum(Rating))) + 
  scale_y_continuous(formatter = 'percent')

perbar=function(xx){
  q=ggplot(data=data.frame(xx),aes(x=xx))+
    geom_bar(aes(y = (..count..)),fill="orange")+
    geom_text(aes(y = (..count..),label =   ifelse((..count..)==0,"",scales::percent((..count..)/sum(..count..)))), stat="bin",colour="darkgreen") 
    
  q
}



perbar(train_per_CBS12$Gender)

perbar(train_per_CBS12$Course.Category)
perbar(train_per_CBS12$TS_ORG)


ggplot(train_per_CBS12, aes(x=reorder(Gender, MED_CV), y=Rating)) +
  geom_bar(stat='identity') +
  coord_flip()

ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate)) + geom_bar() + facet_wrap(~ Gender)

summary(train_per_CBS12$Annual.Increase.Rate)


ggplot(train_pay_10years_Regular) + geom_histogram(aes(x=Annual.Increase.Rate))



ggplot(train_per_CBS12, aes(Annual.Increase.Rate)) + geom_freqpoly(aes(group = Gender, colour = Gender))
ggplot(train_per_CBS12, aes(Rating)) + geom_freqpoly(aes(group = Gender, colour = Gender))
ggplot(train_per_CBS12, aes(Gender)) + geom_freqpoly(aes(group = Rating, colour = Rating))

ggplot(train_per_CBS12, aes(Age)) + geom_freqpoly(aes(group = Course.Category, colour = Course.Category))


qplot(Current.Annual, Age, data = train_per_CBS12, colour = Rating)
qplot(Current.Annual, Hired, data = train_per_CBS12, colour = Rating)

qplot(jitter(Age), jitter(as.numeric(Course.Category)), data = train_per_CBS12, colour = Course.Category)
qplot(jitter(Hired), jitter(as.numeric(Course.Category)), data = train_per_CBS12, colour = Course.Category)

qplot(Course.Category, jitter(Hired), data = train_per_CBS12, colour = Rating)
qplot(jitter(as.numeric(Course.Category)), jitter(Hired), data = train_per_CBS12, colour = Rating)
qplot(jitter(as.numeric(Course)), jitter(Hired), data = train_per_CBS12, colour = Rating)
qplot(Course, jitter(Hired), data = train_per_CBS12, colour = Rating)

tabulate(train_per_CBS12$Course)

qplot(Course.Category, Hired, data = train_per_CBS12, colour = Rating)

###
qplot(jitter(as.numeric(Course.Category)), jitter(as.numeric(Division.Title)), data = train_per_CBS12, colour = Rating)
qplot(Course.Category, Division.Title, data = train_per_CBS12, colour = Rating)


qplot(jitter(as.numeric(Division.Title)), jitter(as.numeric(Course.Category)), data = train_per_CBS12, colour = Rating)
qplot(Division.Title, Course.Category, data = train_per_CBS12, colour = Rating)

qplot(jitter(as.numeric(Division.Title)), jitter(as.numeric(Course.Category)), data = train_per_CBS12, colour = Rating)
qplot(jitter(as.numeric(Division.Title)), Course.Category, data = train_per_CBS12, colour = Rating)
qplot(jitter(as.numeric(Title)), jitter(as.numeric(Course.Category)), data = train_per_CBS12, colour = Rating)
qplot(jitter(as.numeric(Title)), Course.Category, data = train_per_CBS12, colour = Rating)

qplot(jitter(as.numeric(Course.Category)), jitter(as.numeric(Org.Title)), data = train_per_CBS12, colour = Rating)
qplot(jitter(as.numeric(Course.Category)), jitter(as.numeric(Portfolio.Title)), data = train_per_CBS12, colour = Rating)
qplot(jitter(as.numeric(Course.Category)), jitter(as.numeric(Class)), data = train_per_CBS12, colour = Rating)
qplot(jitter(as.numeric(Course.Category)), jitter(as.numeric(Title)), data = train_per_CBS12, colour = Rating)
qplot(jitter(as.numeric(Course.Category)), Age, data = train_per_CBS12, colour = Rating)


as.numeric(train_per_CBS12$Course.Category)


qplot(Age, data=train_per_CBS12, geom="histogram", fill=Rating)
qplot(Hired, data=train_per_CBS12, geom="histogram", fill=Rating)
qplot(Portfolio.Title, data=train_per_CBS12, geom="histogram", fill=Rating)
###
qplot(MED_CV, data=train_per_CBS12, geom="histogram", fill=Rating)
qplot(Course.Category, data=train_per_CBS12, geom="histogram", fill=Rating)
###
qplot(TS_ORG, data=train_per_CBS12, geom="histogram", fill=Rating)
qplot(ACT_PAY, data=train_per_CBS12, geom="histogram", fill=Rating)
qplot(RIN, data=train_per_CBS12, geom="histogram", fill=Rating)
qplot(Training.Method, data=train_per_CBS12, geom="histogram", fill=Rating)





ggplot(train_pay_10years_Regular, aes(x = ECLS, fill = Annual.Increase.Rate)) + geom_histogram(binwidth = 1, alpha = 0.5, position = "identity")




df$percent<- prop.table(df$TotalCount)

prop.table(train_per_CBS12$Recommended.Increase)





























##############Course Taken by each employee#####


require(plyr)
a <- count(as.factor(train_pay_10years_Regular$RIN))
a

courseTaken10years <- data.frame(RIN=a$x, CoursesTaken=a$freq)
courseTaken10years

merg3 <- function(x, y){
  z <- (merge(x, y, by = c("RIN")))
  #z <- z[!is.na(z$Course),]
  z <- z[!is.na(z$RIN),]
  #z <- z[!is.na(z$Annual.Increase.Rate),]
  
  return(z)
}

#courseTaken10years_pay_Regular <- merg2(courseTaken10years, pay3.regular.rate)
courseTaken10years_pay_Regular <- merge(courseTaken10years, pay3.regular.rate, by.x = c("RIN"), by.y = c("Rensselaer.Id.Number"))
#courseTaken10years_pay_Regular <- merg2(courseTaken10years_pay_Regular, CBSFY12)

courseTaken10years_pay_Regular$AnnualCourseTaken <- courseTaken10years_pay_Regular$CoursesTaken/courseTaken10years_pay_Regular$Hired
ceiling(courseTaken10years_pay_Regular$AnnualCourseTaken)
courseTaken10years_pay_Regular$AnnualCourseTaken <- ifelse(courseTaken10years_pay_Regular$Hired == 0, courseTaken10years_pay_Regular$CoursesTaken, ceiling(courseTaken10years_pay_Regular$AnnualCourseTaken))
summary(courseTaken10years_pay_Regular$AnnualCourseTaken)

str(courseTaken10years_pay_Regular)

courseTaken10years_pay_Regular <- asFactor2(courseTaken10years_pay_Regular)
courseTaken10years_pay_Regular <- asFactor(courseTaken10years_pay_Regular)

courseTest <- merge(courseTaken10years_pay_Regular, trainingAll12, by = c("RIN"), all = T)

lowerAge <- function(x){
  x$Age <- x$Age - 2
  x$Hired <- x$Hired -2
  return(x)
}

#courseTaken10years_pay_Regular <- lowerAge(courseTaken10years_pay_Regular)

head(courseTaken10years_pay_Regular)


require(ggplot2)
ggplot(courseTaken10years_pay_Regular, aes(Rating, fill=ST)) + geom_bar()
ggplot(train_per_CBS12, aes(Rating, fill=Course.Category)) + geom_bar()



ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate)) + geom_bar() + facet_wrap(~ Gender)




ggplot(train_pay_10years_Regular) + geom_histogram(aes(x=Annual.Increase.Rate))



ggplot(train_pay_10years_Regular, aes(Annual.Increase.Rate)) + geom_freqpoly(aes(group = Gender, colour = Gender))


qplot(Current.Annual, Age, data = courseTaken10years_pay_Regular, colour = Rating)
###
qplot(Current.Annual, Hired, data = courseTaken10years_pay_Regular, colour = Rating, xlim = c(0, 120000))
qplot(ACT_PAY, Hired, data = courseTaken10years_pay_Regular, colour = Rating, xlim = c(0, 120000))
qplot(jitter(ACT_PAY), jitter(Hired), data = courseTaken10years_pay_Regular, colour = Rating, xlim = c(0, 120000))
###
qplot(Hired, CoursesTaken, data = courseTaken10years_pay_Regular, colour = Rating)
qplot(MED_CV, jitter(ACT_PAY), data = courseTaken10years_pay_Regular, colour = Rating)

qplot(Age, jitter(ACT_PAY), data = courseTaken10years_pay_Regular, colour = MED_CV)

qplot(Hired, Status, data = courseTaken10years_pay_Regular, colour = Rating)

str(courseTaken10years_pay_Regular)



qplot(Age, data=courseTaken10years_pay_Regular, geom="histogram", fill=Rating)
qplot(CoursesTaken, data=courseTaken10years_pay_Regular, geom="histogram", fill=Rating)

qplot(Portfolio.Title, data=courseTaken10years_pay_Regular, geom="histogram", fill=Rating)
###
qplot(Hired, data=courseTaken10years_pay_Regular, geom="histogram", fill=Rating)
qplot(Hired, data=test2, geom="histogram", fill=Rating)
qplot(Approved.New.Salary, data=courseTaken10years_pay_Regular, geom="histogram", fill=Rating, xlim = c(0,120000))
qplot(Current.Annual, data=courseTaken10years_pay_Regular, geom="histogram", fill=Rating, xlim = c(0,120000))
qplot(MED_CV, data=courseTaken10years_pay_Regular, geom="histogram", fill=Rating)
###

qplot(CITY, data=courseTaken10years_pay_Regular, geom="histogram", fill=Rating)

summary(MED_CV)

qplot(TS_ORG, data=courseTaken10years_pay_Regular, geom="histogram", fill=Rating)
qplot(ACT_PAY, data=courseTaken10years_pay_Regular, geom="histogram", fill=Rating)
qplot(RIN, data=courseTaken10years_pay_Regular, geom="histogram", fill=Rating)
qplot(CoursesTaken, data=courseTaken10years_pay_Regular, geom="histogram", fill=Rating)
qplot(ECLS, data=courseTaken10years_pay_Regular, geom="histogram", fill=Rating)
summary(ECLS)
qplot(ACT_PAY, data=courseTaken10years_pay_Regular, geom="histogram", fill=Rating)
qplot(FTE, data=courseTaken10years_pay_Regular, geom="histogram", fill=Rating)
qplot(ST, data=courseTaken10years_pay_Regular, geom="histogram", fill=Rating)
qplot(Gender, data=courseTaken10years_pay_Regular, geom="histogram", fill=Rating)
qplot(Title, data=courseTaken10years_pay_Regular, geom="histogram", fill=Rating)
qplot(Org.Title, data=courseTaken10years_pay_Regular, geom="histogram", fill=Rating)
qplot(Portfolio.Title, data=courseTaken10years_pay_Regular, geom="histogram", fill=Rating)
qplot(Current.Annual, data=courseTaken10years_pay_Regular, geom="histogram", fill=Rating)

###
qplot(Age, data=courseTaken10years_pay_Regular, geom="histogram", fill=MED_CV)
qplot(ACT_PAY, data=courseTaken10years_pay_Regular, geom="histogram", fill=MED_CV)
###

summary(Approved.New.Salary)

qplot(Recommended.Increase, data=courseTaken10years_pay_Regular, geom="histogram", fill=Rating)


qplot(Rating, data=courseTaken10years_pay_Regular, geom="histogram", fill=as.factor(Hired))
summary(Rating)

ggplot(diamonds, aes(clarity, fill=cut)) + geom_bar()
ggplot(diamonds, aes(clarity)) + geom_bar() + facet_wrap(~ cut)
ggplot(diamonds) + geom_histogram(aes(x=price)) + geom_vline(xintercept=12000)
ggplot(diamonds, aes(clarity)) + geom_freqpoly(aes(group = cut, colour = cut))



ggplot(courseTaken10years_pay_Regular, aes(Hired)) + geom_freqpoly(aes(group = Rating, colour = Rating))
ggplot(courseTaken10years_pay_Regular, aes(Age)) + geom_freqpoly(aes(group = Rating, colour = Rating))
ggplot(courseTaken10years_pay_Regular, aes(ACT_PAY)) + geom_freqpoly(aes(group = Rating, colour = Rating))
ggplot(courseTaken10years_pay_Regular, aes(MED_CV)) + geom_freqpoly(aes(group = Rating, colour = Rating))
ggplot(courseTaken10years_pay_Regular, aes(ACT_PAY)) + geom_freqpoly(aes(group = MED_CV, colour = MED_CV))

ggplot(courseTaken10years_pay_Regular, aes(x = ECLS, fill = Rating)) + geom_histogram(binwidth = 1, alpha = 0.5, position = "identity")




plot(courseTaken10years_pay_Regular$Age, courseTaken10years_pay_Regular$Hired,
     xlim = c(30, 70),
     ylim = c(10, 30))

install.packages("maps")
require(maps)
map()
map('world', fill = TRUE,col=heat.colors(10))

map("state", interior = FALSE)
map("state", boundary = FALSE, col="red", add = TRUE)


str(courseTaken10years_pay_Regular)
plot(jitter(courseTaken10years_pay_Regular$Age), jitter(courseTaken10years_pay_Regular$CoursesTaken))



attach(courseTaken10years_pay_Regular)
#install.packages("scatterplot3d")
library(scatterplot3d)

scatterplot3d(Age, CoursesTaken, ECLS,
              pch=16, highlight.3d=TRUE, angle=20,
              xlab="Weight",ylab="Displacement",zlab="Fuel Economy (mpg)",
              type="h",
              main="Relationships between car specifications")


smoothScatter(Hired,ECLS)











































courseTaken10years_pay_Regular_small <- courseTaken10years_pay_Regular[courseTaken10years_pay_Regular$AnnualCourseTaken < 12,]
courseTaken10years_pay_Regular_small_active <- courseTaken10years_pay_Regular_small[courseTaken10years_pay_Regular_small$Current.Employee.Status == "Active",]
courseTaken10years_pay_Regular_small_terminated <- courseTaken10years_pay_Regular_small[courseTaken10years_pay_Regular_small$Current.Employee.Status == "Job Terminated",]

#####Analysis of all regular#######
qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small, geom="histogram", fill=Citizenship.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small, geom="histogram", fill=Gender)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small, geom="histogram", fill=Ethnicity)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small, geom="histogram", fill=as.factor(Hired))+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small, geom="histogram", fill=as.factor(Start.Year))+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small, geom="histogram", fill=as.factor(End.Year))+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Annual.Increase.Rate, data=courseTaken10years_pay_Regular_small, geom="histogram", fill= as.factor(AnnualCourseTaken))+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  









#####Analysis of active regular#######
qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_active, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_active, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_active, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_active, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_active, geom="histogram", fill=Citizenship.Indicator)+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_active, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_active, geom="histogram", fill=Gender)+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_active, geom="histogram", fill=Ethnicity)+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_active, geom="histogram", fill=as.factor(Hired))+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_active, geom="histogram", fill=as.factor(Start.Year))+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_active, geom="histogram", fill=as.factor(End.Year))+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Annual.Increase.Rate, data=courseTaken10years_pay_Regular_small_active, geom="histogram", fill= as.factor(AnnualCourseTaken))+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  









#####Analysis of terminated regular#######
qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_terminated, geom="histogram", fill=Current.Employee.Status)+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_terminated, geom="histogram", fill=Employee.Faculty.Staff.Student.Indicator)+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_terminated, geom="histogram", fill=Employee.Eeo.Contract.Group.Description)+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_terminated, geom="histogram", fill=Employee.Exempt.Non.Exempt.Indicator)+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_terminated, geom="histogram", fill=Citizenship.Indicator)+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_terminated, geom="histogram", fill=Employee.Full.Time.Part.Time.Indicator)+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_terminated, geom="histogram", fill=Gender)+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_terminated, geom="histogram", fill=Ethnicity)+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_terminated, geom="histogram", fill=as.factor(Hired))+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_terminated, geom="histogram", fill=as.factor(Start.Year))+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(AnnualCourseTaken), data=courseTaken10years_pay_Regular_small_terminated, geom="histogram", fill=as.factor(End.Year))+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(Annual.Increase.Rate, data=courseTaken10years_pay_Regular_small_terminated, geom="histogram", fill= as.factor(AnnualCourseTaken))+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))  

  














######################density#########################
#####Analysis of all Regular Employee
ggplot(courseTaken10years_pay_Regular_small, aes(x=AnnualCourseTaken, fill=Employee.Faculty.Staff.Student.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small, aes(x=AnnualCourseTaken, fill=Current.Employee.Status)) + geom_density(alpha=.3)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small, aes(x=AnnualCourseTaken, fill=Employee.Eeo.Contract.Group.Description)) + geom_density(alpha=.3)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small, aes(x=AnnualCourseTaken, fill=Employee.Exempt.Non.Exempt.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small, aes(x=AnnualCourseTaken, fill=Employee.Type)) + geom_density(alpha=.3)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small, aes(x=AnnualCourseTaken, fill=Employee.Regular.Fixed.Term.Temp.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small, aes(x=AnnualCourseTaken, fill=Citizenship.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small, aes(x=AnnualCourseTaken, fill=Employee.Full.Time.Part.Time.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small, aes(x=AnnualCourseTaken, fill=Gender)) + geom_density(alpha=.3)+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


ggplot(courseTaken10years_pay_Regular_small, aes(x=AnnualCourseTaken, colour=Ethnicity)) + geom_density()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small, aes(x=AnnualCourseTaken, colour=as.factor(Start.Year))) + geom_density()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small, aes(x=AnnualCourseTaken, colour=as.factor(End.Year))) + geom_density()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small, aes(x=AnnualCourseTaken, colour=as.factor(Hired))) + geom_density()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


ggplot(courseTaken10years_pay_Regular_small, aes(x=Annual.Increase.Rate, colour=as.factor(AnnualCourseTaken))) + geom_density()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))









######################density#########################
#####Analysis of Active Regular Employee
ggplot(courseTaken10years_pay_Regular_small_active, aes(x=AnnualCourseTaken, fill=Employee.Faculty.Staff.Student.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_active, aes(x=AnnualCourseTaken, fill=Current.Employee.Status)) + geom_density(alpha=.3)+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_active, aes(x=AnnualCourseTaken, fill=Employee.Eeo.Contract.Group.Description)) + geom_density(alpha=.3)+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_active, aes(x=AnnualCourseTaken, fill=Employee.Exempt.Non.Exempt.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_active, aes(x=AnnualCourseTaken, fill=Employee.Type)) + geom_density(alpha=.3)+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_active, aes(x=AnnualCourseTaken, fill=Employee.Regular.Fixed.Term.Temp.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_active, aes(x=AnnualCourseTaken, fill=Citizenship.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_active, aes(x=AnnualCourseTaken, fill=Employee.Full.Time.Part.Time.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_active, aes(x=AnnualCourseTaken, fill=Gender)) + geom_density(alpha=.3)+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


ggplot(courseTaken10years_pay_Regular_small_active, aes(x=AnnualCourseTaken, colour=Ethnicity)) + geom_density()+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_active, aes(x=AnnualCourseTaken, colour=as.factor(Start.Year))) + geom_density()+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_active, aes(x=AnnualCourseTaken, colour=as.factor(End.Year))) + geom_density()+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_active, aes(x=AnnualCourseTaken, colour=as.factor(Hired))) + geom_density()+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_active, aes(x=Annual.Increase.Rate, colour=as.factor(AnnualCourseTaken))) + geom_density()+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))












######################density#########################
#####Analysis of Terminated Regular Employee
ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=AnnualCourseTaken, fill=Employee.Faculty.Staff.Student.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=AnnualCourseTaken, fill=Current.Employee.Status)) + geom_density(alpha=.3)+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=AnnualCourseTaken, fill=Employee.Eeo.Contract.Group.Description)) + geom_density(alpha=.3)+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=AnnualCourseTaken, fill=Employee.Exempt.Non.Exempt.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=AnnualCourseTaken, fill=Employee.Type)) + geom_density(alpha=.3)+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=AnnualCourseTaken, fill=Employee.Regular.Fixed.Term.Temp.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=AnnualCourseTaken, fill=Citizenship.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=AnnualCourseTaken, fill=Employee.Full.Time.Part.Time.Indicator)) + geom_density(alpha=.3)+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=AnnualCourseTaken, fill=Gender)) + geom_density(alpha=.3)+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=AnnualCourseTaken, colour=Ethnicity)) + geom_density()+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=AnnualCourseTaken, colour=as.factor(Start.Year))) + geom_density()+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=AnnualCourseTaken, colour=as.factor(End.Year))) + geom_density()+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=AnnualCourseTaken, colour=as.factor(Hired))) + geom_density()+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=AnnualCourseTaken, colour=as.factor(Hired))) + geom_density()+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))





ggplot(courseTaken10years_pay_Regular_small_terminated[courseTaken10years_pay_Regular_small_terminated$Hired == 9,], aes(x=AnnualCourseTaken, colour=as.factor(Hired))) + geom_density()+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))


ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=Annual.Increase.Rate, colour=as.factor(AnnualCourseTaken))) + geom_density()+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))











ggplot(courseTaken10years_pay_Regular_small, aes(x=AnnualCourseTaken, colour=Employee.Faculty.Staff.Student.Indicator)) + geom_density()+ 
  ggtitle("Regular Terminated Employee") +
  theme(text = element_text(size = 18, family="Impact"))






#######################violin#######################
######Analysis of all regular employee###########
p <- ggplot(courseTaken10years_pay_Regular, aes(x=Employee.Faculty.Staff.Student.Indicator, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular, aes(x=Current.Employee.Status, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular, aes(x=Employee.Eeo.Contract.Group.Description, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular, aes(x=Employee.Type, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular, aes(x=Citizenship.Indicator, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular, aes(x=Employee.Full.Time.Part.Time.Indicator, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular, aes(x=Gender, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular, aes(x=Ethnicity, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular, aes(x=as.factor(Start.Year), y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular, aes(x=as.factor(End.Year), y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular, aes(x=as.factor(Hired), y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("All Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))









#######################violin#######################
######Analysis of Active regular employee###########
p <- ggplot(courseTaken10years_pay_Regular_small_active, aes(x=Employee.Faculty.Staff.Student.Indicator, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_small_active, aes(x=Current.Employee.Status, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_small_active, aes(x=Employee.Eeo.Contract.Group.Description, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_small_active, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_small_active, aes(x=Employee.Type, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_small_active, aes(x=Citizenship.Indicator, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_small_active, aes(x=Employee.Full.Time.Part.Time.Indicator, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_small_active, aes(x=Gender, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_small_active, aes(x=Ethnicity, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_small_active, aes(x=as.factor(Start.Year), y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_small_active, aes(x=as.factor(End.Year), y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_small_active, aes(x=as.factor(Hired), y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Active Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))










require(ggplot2)
#######################violin#######################
######Analysis of Terminated regular employee###########
p <- ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=Employee.Faculty.Staff.Student.Indicator, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=Current.Employee.Status, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=Employee.Eeo.Contract.Group.Description, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=Employee.Exempt.Non.Exempt.Indicator, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=Employee.Type, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=Citizenship.Indicator, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=Employee.Full.Time.Part.Time.Indicator, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=Gender, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=Ethnicity, y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=as.factor(Start.Year), y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=as.factor(End.Year), y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))

p <- ggplot(courseTaken10years_pay_Regular_small_terminated, aes(x=as.factor(Hired), y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))



p <- ggplot(courseTaken10years_pay_Regular_small_terminated[courseTaken10years_pay_Regular_small_terminated$Hired == 9,], aes(x=as.factor(Hired), y=AnnualCourseTaken))
p + geom_violin()+ 
  ggtitle("Terminated Regular Employee") +
  theme(text = element_text(size = 18, family="Impact"))







#####plot and polynomial regression######
plot(courseTaken10years_pay_Regular_small_active$Hired, courseTaken10years_pay_Regular_small_active$AnnualCourseTaken)

fit1 <- lm(courseTaken10years_pay_Regular_small_active$AnnualCourseTaken ~ courseTaken10years_pay_Regular_small_active$Hired)
summary(fit1)
fit1b <- lm(courseTaken10years_pay_Regular_small_active$AnnualCourseTaken ~ courseTaken10years_pay_Regular_small_active$Hired + 0)
summary(fit1b)
fit2 <- lm(courseTaken10years_pay_Regular_small_active$AnnualCourseTaken ~ courseTaken10years_pay_Regular_small_active$Hired + I(courseTaken10years_pay_Regular_small_active$Hired^2))
summary(fit2)
fit3 <- lm(courseTaken10years_pay_Regular_small_active$AnnualCourseTaken ~ courseTaken10years_pay_Regular_small_active$Hired + I(courseTaken10years_pay_Regular_small_active$Hired^2) + I(courseTaken10years_pay_Regular_small_active$Hired^3))
summary(fit3)


points(courseTaken10years_pay_Regular_small_active$Hired, predict(fit1), type = "l", col = "red")
points(courseTaken10years_pay_Regular_small_active$Hired, predict(fit1b), type = "l", col = "red")

