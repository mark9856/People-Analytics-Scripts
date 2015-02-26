trainingAll12 <- read.csv(file="/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Training_Data/tc_report_08-12.csv", header=TRUE, sep=",")

trainingAll10Year <- read.csv(file="/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Training_Data/tc_report_05-14 copy.csv", header=TRUE, sep=",")

trainingAll12s <- trainingAll12[, c('RIN', 'Course', 'Course.Category', 'Status', 'Completion.Date', 
                                    'Training.Method', 'Creation.Date', 'Group', 'Division.Title', 'Class', 'User.Status')]



merg <- function(x, y){
  z <- (merge(x, y, by = c("RIN"), all = T))
  z <- z[!is.na(z$Course),]
  z <- z[!is.na(z$RIN),]
  z <- z[!is.na(z$Performance.Rating),]
  return(z)
}

train_per_12 <- merg(trainingAll12s, perf12)

as.factor(train_per_12$RIN)


summary(train_per_12)
summary(train_per_12$Course)
summary(train_per_12$Course.Category)



head(train_per_CBS12)


require(ggplot2)        # or load package first
data(diamonds)
head(diamonds)          # look at the data!
#


ggplot(diamonds, aes(clarity, fill=cut)) + geom_bar()
ggplot(diamonds, aes(clarity)) + geom_bar() + facet_wrap(~ cut)
ggplot(diamonds) + geom_histogram(aes(x=price)) + geom_vline(xintercept=12000)
ggplot(diamonds, aes(clarity)) + geom_freqpoly(aes(group = cut, colour = cut))




ggplot(train_per_12, aes(Performance.Rating, fill=Course)) + geom_bar()
ggplot(train_per_12, aes(Performance.Rating, fill=Course.Category)) + geom_bar()
ggplot(train_per_12, aes(Performance.Rating, fill=Training.Method)) + geom_bar()
ggplot(train_per_12, aes(Performance.Rating, fill=Ethnicity)) + geom_bar()
ggplot(train_per_12, aes(Performance.Rating, fill=Gender)) + geom_bar()
ggplot(train_per_12, aes(Performance.Rating, fill=ECLS)) + geom_bar()
ggplot(train_per_12, aes(Performance.Rating, fill=Portfolio.Title)) + geom_bar()
ggplot(train_per_12, aes(Performance.Rating, fill=User.Status)) + geom_bar()
ggplot(train_per_12, aes(Performance.Rating, fill=Recommended.Increase)) + geom_bar()



ggplot(train_per_12, aes(Performance.Rating)) + geom_bar() + facet_wrap(~ Gender)
ggplot(train_per_12, aes(Performance.Rating)) + geom_bar() + facet_wrap(~ User.Status)
ggplot(train_per_12, aes(Performance.Rating)) + geom_bar() + facet_wrap(~ Training.Method)
ggplot(train_per_12, aes(Performance.Rating)) + geom_bar() + facet_wrap(~ Ethnicity)
ggplot(train_per_12, aes(Performance.Rating)) + geom_bar() + facet_wrap(~ ECLS)
ggplot(train_per_12, aes(Performance.Rating)) + geom_bar() + facet_wrap(~ Class)
ggplot(train_per_12, aes(Performance.Rating)) + geom_bar() + facet_wrap(~ Division.Title)
ggplot(train_per_12, aes(Performance.Rating)) + geom_bar() + facet_wrap(~ FTE)
ggplot(train_per_12, aes(Performance.Rating)) + geom_bar() + facet_wrap(~ Status)
ggplot(train_per_12, aes(Performance.Rating)) + geom_bar() + facet_wrap(~ Course.Category)

ggplot(train_per_12, aes(Recommended.Increase)) + geom_bar() + facet_wrap(~ Course.Category)
ggplot(train_per_12, aes(Course.Category)) + geom_bar() + facet_wrap(~ Recommended.Increase)

ggplot(train_per_12, aes(Course.Category)) + geom_bar() + facet_wrap(~ Performance.Rating)
ggplot(train_per_12, aes(Gender)) + geom_bar() + facet_wrap(~ Performance.Rating)
ggplot(train_per_12, aes(ECLS)) + geom_bar() + facet_wrap(~ Performance.Rating)
ggplot(train_per_12, aes(Course)) + geom_bar() + facet_wrap(~ Performance.Rating)



ggplot(train_per_12) + geom_histogram(aes(x=Performance.Rating))
ggplot(train_per_12) + geom_histogram(aes(x=Course))
ggplot(train_per_12) + geom_histogram(aes(x=RIN))
ggplot(train_per_12) + geom_histogram(aes(x=Class))
ggplot(train_per_12) + geom_histogram(aes(x=Gender))
ggplot(train_per_12) + geom_histogram(aes(x=Portfolio.Title))
ggplot(train_per_12) + geom_histogram(aes(x=Status))
ggplot(train_per_12) + geom_histogram(aes(x=Training.Method))
ggplot(train_per_12) + geom_histogram(aes(x=User.Status))
ggplot(train_per_12) + geom_histogram(aes(x=Recommended.Increase))
ggplot(train_per_12) + geom_histogram(aes(x=Course.Category))



ggplot(train_per_12, aes(Performance.Rating)) + geom_freqpoly(aes(group = Gender, colour = Gender))
ggplot(train_per_12, aes(Performance.Rating)) + geom_freqpoly(aes(group = User.Status, colour = User.Status))
ggplot(train_per_12, aes(Performance.Rating)) + geom_freqpoly(aes(group = Class, colour = Class))
ggplot(train_per_12, aes(Performance.Rating)) + geom_freqpoly(aes(group = Course.Category, colour = Course.Category))



qplot(Current.Annual, Recommended.Increase, data = train_per_12, colour = Performance.Rating)
qplot(Current.Annual, Performance.Rating, data = train_per_12, colour = ECLS)
qplot(Current.Annual, Training.Method, data = train_per_12, colour = Performance.Rating)
qplot(Current.Annual, Performance.Rating, data = train_per_12, colour = Course.Category)


qplot(Recommended.Increase, data=train_per_12, geom="histogram", fill=Performance.Rating)
qplot(Gender, data=train_per_12, geom="histogram", fill=Performance.Rating)
qplot(ECLS, data=train_per_12, geom="histogram", fill=Performance.Rating)
qplot(Course.Category, data=train_per_12, geom="histogram", fill=Performance.Rating)
qplot(Course, data=train_per_12, geom="histogram", fill=Performance.Rating)
qplot(Status, data=train_per_12, geom="histogram", fill=Performance.Rating)
qplot(User.Status, data=train_per_12, geom="histogram", fill=Performance.Rating)
qplot(Current.Annual, data=train_per_12, geom="histogram", fill=Performance.Rating)
qplot(FTE, data=train_per_12, geom="histogram", fill=Performance.Rating)
qplot(Training.Method, data=train_per_12, geom="histogram", fill=Performance.Rating)



ggplot(train_per_12, aes(x = ECLS, fill = Performance.Rating)) + geom_histogram(binwidth = 1, alpha = 0.5, position = "identity")
ggplot(train_per_12, aes(x = Gender, fill = Performance.Rating)) + geom_histogram(binwidth = 1, alpha = 0.5, position = "identity")






head(train_per_12)

asFactor <- function(x){
  x$Portfolio.Title <- as.factor(x$Portfolio.Title)
  x$Org.Title <- as.factor(x$Org.Title)
  x$Title <- as.factor(x$Title)
  x$ECLS <- as.factor(x$ECLS)
  x$Performance.Rating <- as.factor(x$Performance.Rating)
  x$Gender <- as.factor(x$Gender)
  x$Ethnicity <- as.factor(x$Ethnicity)
  return(x)
}


train_per_12 <- asFactor(train_per_12)
str(train_per_12)

summary(train_per_12$Class)
summary(train_per_12$ECLS)

train_per_12s <- train_per_12[, c('Course', 'Status', 'Completion.Date', 'Training.Method', 'Creation.Date',
                                  'Group', 'Division.Title', 'User.Status', 'Portfolio.Title', 'Org.Title',
                                  'Title', 'FTE',  'ECLS','Performance.Rating', 'Recommended.Increase',
                                  'Approved.New.Salary', 'Current.Annual','Gender', 'Ethnicity')]

train_per_12m <- train_per_12[, c('Course', 'Status', 'Group', 'User.Status', 'FTE', 'ECLS', 'Performance.Rating',
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
  #z <- z[!is.na(z$Performance.Rating),]
  return(z)
}


train_per_CBS12 <- merg2(train_per_12, CBSFY12)


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
  x$Rating = ifelse(x$Performance.Rating == "Developing Performance", 'Bad', x$Rating)
  x$Rating = ifelse(x$Performance.Rating == "Improvement Essential", 'Bad', x$Rating)
  x$Rating = ifelse(x$Performance.Rating == "No Evaluation", 'Bad', x$Rating) 
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

ggplot(train_per_12, aes(Performance.Rating)) + geom_bar() + facet_wrap(~ Gender)

summary(train_per_CBS12$Performance.Rating)


ggplot(train_per_12) + geom_histogram(aes(x=Performance.Rating))



ggplot(train_per_CBS12, aes(Performance.Rating)) + geom_freqpoly(aes(group = Gender, colour = Gender))
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





ggplot(train_per_12, aes(x = ECLS, fill = Performance.Rating)) + geom_histogram(binwidth = 1, alpha = 0.5, position = "identity")




df$percent<- prop.table(df$TotalCount)

prop.table(train_per_CBS12$Recommended.Increase)








require(plyr)
a <- count(as.factor(train_per_CBS12$RIN))
a

courseTaken12 <- data.frame(RIN=a$x, CoursesTaken=a$freq)
courseTaken12

merg3 <- function(x, y){
  z <- (merge(x, y, by = c("RIN")))
  #z <- z[!is.na(z$Course),]
  z <- z[!is.na(z$RIN),]
  #z <- z[!is.na(z$Performance.Rating),]
  
  return(z)
}

courseTaken12s <- merg2(courseTaken12, perf12)
courseTaken12s <- merg2(courseTaken12s, CBSFY12)

str(courseTaken12s)

courseTaken12s <- asFactor2(courseTaken12s)
courseTaken12s <- asFactor(courseTaken12s)

courseTest <- merge(courseTaken12s, trainingAll12, by = c("RIN"), all = T)

lowerAge <- function(x){
  x$Age <- x$Age - 2
  x$Hired <- x$Hired -2
  return(x)
}

#courseTaken12s <- lowerAge(courseTaken12s)

head(courseTaken12s)


require(ggplot2)
ggplot(courseTaken12s, aes(Rating, fill=ST)) + geom_bar()
ggplot(train_per_CBS12, aes(Rating, fill=Course.Category)) + geom_bar()



ggplot(train_per_12, aes(Performance.Rating)) + geom_bar() + facet_wrap(~ Gender)




ggplot(train_per_12) + geom_histogram(aes(x=Performance.Rating))



ggplot(train_per_12, aes(Performance.Rating)) + geom_freqpoly(aes(group = Gender, colour = Gender))


qplot(Current.Annual, Age, data = courseTaken12s, colour = Rating)
###
qplot(Current.Annual, Hired, data = courseTaken12s, colour = Rating, xlim = c(0, 120000))
qplot(ACT_PAY, Hired, data = courseTaken12s, colour = Rating, xlim = c(0, 120000))
qplot(jitter(ACT_PAY), jitter(Hired), data = courseTaken12s, colour = Rating, xlim = c(0, 120000))
###
qplot(Hired, CoursesTaken, data = courseTaken12s, colour = Rating)
qplot(MED_CV, jitter(ACT_PAY), data = courseTaken12s, colour = Rating)

qplot(Age, jitter(ACT_PAY), data = courseTaken12s, colour = MED_CV)

qplot(Hired, Status, data = courseTaken12s, colour = Rating)

str(courseTaken12s)



qplot(Age, data=courseTaken12s, geom="histogram", fill=Rating)
qplot(CoursesTaken, data=courseTaken12s, geom="histogram", fill=Rating)

qplot(Portfolio.Title, data=courseTaken12s, geom="histogram", fill=Rating)
###
qplot(Hired, data=courseTaken12s, geom="histogram", fill=Rating)
qplot(Hired, data=test2, geom="histogram", fill=Rating)
qplot(Approved.New.Salary, data=courseTaken12s, geom="histogram", fill=Rating, xlim = c(0,120000))
qplot(Current.Annual, data=courseTaken12s, geom="histogram", fill=Rating, xlim = c(0,120000))
qplot(MED_CV, data=courseTaken12s, geom="histogram", fill=Rating)
###

qplot(CITY, data=courseTaken12s, geom="histogram", fill=Rating)

summary(MED_CV)

qplot(TS_ORG, data=courseTaken12s, geom="histogram", fill=Rating)
qplot(ACT_PAY, data=courseTaken12s, geom="histogram", fill=Rating)
qplot(RIN, data=courseTaken12s, geom="histogram", fill=Rating)
qplot(CoursesTaken, data=courseTaken12s, geom="histogram", fill=Rating)
qplot(ECLS, data=courseTaken12s, geom="histogram", fill=Rating)
summary(ECLS)
qplot(ACT_PAY, data=courseTaken12s, geom="histogram", fill=Rating)
qplot(FTE, data=courseTaken12s, geom="histogram", fill=Rating)
qplot(ST, data=courseTaken12s, geom="histogram", fill=Rating)
qplot(Gender, data=courseTaken12s, geom="histogram", fill=Rating)
qplot(Title, data=courseTaken12s, geom="histogram", fill=Rating)
qplot(Org.Title, data=courseTaken12s, geom="histogram", fill=Rating)
qplot(Portfolio.Title, data=courseTaken12s, geom="histogram", fill=Rating)
qplot(Current.Annual, data=courseTaken12s, geom="histogram", fill=Rating)

###
qplot(Age, data=courseTaken12s, geom="histogram", fill=MED_CV)
qplot(ACT_PAY, data=courseTaken12s, geom="histogram", fill=MED_CV)
###

summary(Approved.New.Salary)

qplot(Recommended.Increase, data=courseTaken12s, geom="histogram", fill=Rating)


qplot(Rating, data=courseTaken12s, geom="histogram", fill=as.factor(Hired))
summary(Rating)

ggplot(diamonds, aes(clarity, fill=cut)) + geom_bar()
ggplot(diamonds, aes(clarity)) + geom_bar() + facet_wrap(~ cut)
ggplot(diamonds) + geom_histogram(aes(x=price)) + geom_vline(xintercept=12000)
ggplot(diamonds, aes(clarity)) + geom_freqpoly(aes(group = cut, colour = cut))



ggplot(courseTaken12s, aes(Hired)) + geom_freqpoly(aes(group = Rating, colour = Rating))
ggplot(courseTaken12s, aes(Age)) + geom_freqpoly(aes(group = Rating, colour = Rating))
ggplot(courseTaken12s, aes(ACT_PAY)) + geom_freqpoly(aes(group = Rating, colour = Rating))
ggplot(courseTaken12s, aes(MED_CV)) + geom_freqpoly(aes(group = Rating, colour = Rating))
ggplot(courseTaken12s, aes(ACT_PAY)) + geom_freqpoly(aes(group = MED_CV, colour = MED_CV))

ggplot(courseTaken12s, aes(x = ECLS, fill = Rating)) + geom_histogram(binwidth = 1, alpha = 0.5, position = "identity")




plot(courseTaken12s$Age, courseTaken12s$Hired,
     xlim = c(30, 70),
     ylim = c(10, 30))

install.packages("maps")
require(maps)
map()
map('world', fill = TRUE,col=heat.colors(10))

map("state", interior = FALSE)
map("state", boundary = FALSE, col="red", add = TRUE)


str(courseTaken12s)
plot(jitter(courseTaken12s$Age), jitter(courseTaken12s$CoursesTaken))



attach(courseTaken12s)
#install.packages("scatterplot3d")
library(scatterplot3d)

scatterplot3d(Age, CoursesTaken, ECLS,
              pch=16, highlight.3d=TRUE, angle=20,
              xlab="Weight",ylab="Displacement",zlab="Fuel Economy (mpg)",
              type="h",
              main="Relationships between car specifications")


smoothScatter(Hired,ECLS)




















#######Final Presentation############
qplot(jitter(as.numeric(Course.Category)), jitter(as.numeric(Division.Title)), data = train_per_CBS12, colour = Rating)




train_per_CBS12_test <- train_per_CBS12
train_per_CBS12_test$Count <- 1
train_per_CBS12_test$Leader <- ifelse(train_per_CBS12_test$Course.Category == "HR-Professional Development- Leadership Skills Series", 1, 0)
train_per_CBS12_test$CT <- ifelse(train_per_CBS12_test$Course.Category == "Computer Technology", 1, 0)
train_per_CBS12_test$Essen <- ifelse(train_per_CBS12_test$Course.Category == "HR-Professional Development- Essential Work skills", 1, 0)

summary(train_per_CBS12_test$Course.Category)



#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category == "HR-Professional Development- Leadership Skills Series" & train_per_CBS12_test$Rating == "Bad"),]$Count))
s2 <- summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category == "HR-Professional Development- Leadership Skills Series"),] $Count))
summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category == "HR-Professional Development- Leadership Skills Series" & train_per_CBS12_test$Rating == "Bad"),]$Count))
summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category == "HR-Professional Development- Leadership Skills Series"),] $Count))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")

#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category == "Computer Technology" & train_per_CBS12_test$Rating == "Bad"),]$Count))
s2 <- summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category == "Computer Technology"),] $Count))
summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category == "Computer Technology" & train_per_CBS12_test$Rating == "Bad"),]$Count))
summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category == "Computer Technology"),] $Count))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")

s1 <- summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category != "Computer Technology" & train_per_CBS12_test$Rating == "Bad"),]$Count))
s2 <- summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category != "Computer Technology"),] $Count))
summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category != "Computer Technology" & train_per_CBS12_test$Rating == "Bad"),]$Count))
summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category != "Computer Technology"),] $Count))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")




#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category == "Purchasing and Procurement" & train_per_CBS12_test$Rating == "Bad"),]$Count))
s2 <- summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category == "Purchasing and Procurement"),] $Count))
summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category == "Purchasing and Procurement" & train_per_CBS12_test$Rating == "Bad"),]$Count))
summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category == "Purchasing and Procurement"),] $Count))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")


HR-Professional Development- Essential Work skills

#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category == "HR-Professional Development- Essential Work skills" & train_per_CBS12_test$Rating == "Bad"),]$Count))
s2 <- summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category == "HR-Professional Development- Essential Work skills"),] $Count))
summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category == "HR-Professional Development- Essential Work skills" & train_per_CBS12_test$Rating == "Bad"),]$Count))
summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category == "HR-Professional Development- Essential Work skills"),] $Count))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")


#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category != "HR-Professional Development- Essential Work skills" & train_per_CBS12_test$Rating == "Bad"),]$Count))
s2 <- summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category != "HR-Professional Development- Essential Work skills"),] $Count))
summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category != "HR-Professional Development- Essential Work skills" & train_per_CBS12_test$Rating == "Bad"),]$Count))
summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category != "HR-Professional Development- Essential Work skills"),] $Count))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")


#explore relation ship between Annual Course Taken and Leave rate############
s1 <- summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category != "HR-Professional Development- Leadership Skills Series" & train_per_CBS12_test$Rating == "Bad"),]$Count))
s2 <- summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category != "HR-Professional Development- Leadership Skills Series"),] $Count))
summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category != "HR-Professional Development- Leadership Skills Series" & train_per_CBS12_test$Rating == "Bad"),]$Count))
summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Course.Category != "HR-Professional Development- Leadership Skills Series"),] $Count))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")


s1 <- summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Rating == "Bad"),]$Count))
s2 <- summary(as.factor(train_per_CBS12_test$Count))
summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Rating == "Bad"),]$Count))
summary(as.factor(train_per_CBS12_test$Count))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")



s1 <- summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Rating == "Bad" & train_per_CBS12$MED_CV == "FM"),]$Count))
s2 <- summary(as.factor(train_per_CBS12_test[(train_per_CBS12$MED_CV == "FM"),] $Count))
summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Rating == "Bad" & train_per_CBS12$MED_CV == "FM"),]$Count))
summary(as.factor(train_per_CBS12_test[(train_per_CBS12$MED_CV == "FM"),] $Count))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")

s1 <- summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Rating == "Bad" & train_per_CBS12$MED_CV == "SI"),]$Count))
s2 <- summary(as.factor(train_per_CBS12_test[(train_per_CBS12$MED_CV == "SI"),] $Count))
summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Rating == "Bad" & train_per_CBS12$MED_CV == "SI"),]$Count))
summary(as.factor(train_per_CBS12_test[(train_per_CBS12$MED_CV == "SI"),] $Count))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")


s1 <- summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Rating == "Bad" & train_per_CBS12$MED_CV == "TP"),]$Count))
s2 <- summary(as.factor(train_per_CBS12_test[(train_per_CBS12$MED_CV == "TP"),] $Count))
summary(as.factor(train_per_CBS12_test[(train_per_CBS12_test$Rating == "Bad" & train_per_CBS12$MED_CV == "TP"),]$Count))
summary(as.factor(train_per_CBS12_test[(train_per_CBS12$MED_CV == "TP"),] $Count))
s1/s2
plot(s1/s2, type = "p", col = "red", xlab = "Taken", ylab = "Percentage of Active Employee", main = "Employee taking Leadership Course")



summary(train_per_CBS12$MED_CV)










qplot(as.factor(Leader), data=train_per_CBS12_test, geom="histogram", fill=as.factor(Rating), xlab = 'Leadership - Skills Courses')+ 
  ggtitle("All Employees") +
  theme(text = element_text(size = 18, family="Impact"))  


qplot(as.factor(CT), data=train_per_CBS12_test, geom="histogram", fill=as.factor(Rating), xlab = 'Computer Technology Courses')+ 
  ggtitle("All Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(Essen), data=train_per_CBS12_test, geom="histogram", fill=as.factor(Rating), xlab = 'HR-Professional Development- Essential Work skills Courses')+ 
  ggtitle("All Employees") +
  theme(text = element_text(size = 18, family="Impact"))  

qplot(as.factor(MED_CV), data=train_per_CBS12_test, geom="histogram", fill=as.factor(Rating), xlab = 'Medical Coverage')+ 
  ggtitle("All Employees") +
  theme(text = element_text(size = 18, family="Impact"))  





