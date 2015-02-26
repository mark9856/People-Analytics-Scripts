attach(adjusted)
attach(test_fy)
summary(Vac_Timefy)
summary(Sick_Timefy)
summary(Age)
summary(ACT_PAY)
summary(factor(ECLS))
summary(factor(CT))

head(adjusted)

AddEth <- function(x){
  x$Ethnicity = 'W'
  x$Ethnicity = ifelse(x$AMER_INDIAN_OR_ALASK_NATIVE == "Y", 'AI', x$Ethnicity)
  x$Ethnicity = ifelse(x$ASIAN == "Y", 'A', x$Ethnicity)
  x$Ethnicity = ifelse(x$BLACK_OR_AFRICAN_AMERICAN == "Y", 'B', x$Ethnicity)
  x$Ethnicity = ifelse(x$NATIVE_HAWAIIAN_PACIF_ISLAND == "Y", 'NH', x$Ethnicity)
  x$Ethnicity = ifelse(x$WHITE == "Y", 'W', x$Ethnicity)
  
  x$CLS = 'N'
  x$CLS = ifelse(x$ECLS == "EX", 'E', x$CLS)
  x$CLS = ifelse(x$ECLS == "EZ", 'E', x$CLS)
  return(x)
}

adjusted <- AddEth(adjusted)

head(adjusted)

#get a factor list
test_fy <- adjusted[, c('Vac_Timefy', 'Sick_Timefy','Vac_Time12', 'Sick_Time12', 'Vac_Time11', 'Sick_Time11','Vac_Time10', 'Sick_Time10', 'Vac_Time09', 'Sick_Time09',
                        'Vac_Time08', 'Sick_Time08','Vac_Time07', 'Sick_Time07','Vac_Time06', 'Sick_Time06','Vac_Time05', 'Sick_Time05',
                        'Vac_Time04', 'Sick_Time04','Vac_Time03', 'Sick_Time03','Vac_Time02', 'Sick_Time02','Vac_Time01', 'Sick_Time01',
                        'ZIP', 'Age', 'Hired', 'ACT_PAY', 'ECLS', 'MED_CV', 'MED_EMPL', 
                        'DENT_CV', 'DENT_EMPL', 'FLEX_H', 'FLEX_D', 'DCP', 'DCP_EMPL', 'DCP_SUPL', 'DCP_TIA', 'LTD_EMPL',
                        'LTD_BUP', 'LTD_EMPR', 'LVO_CV', 'LVO_EMPL', 'LVD_EMPL', 'LVS_CV', 'LVS_EMPL', 'ADD_EMPL',
                        'ADS_EMPL', 'ADP_EMPL', 'SS_EMPL', 'SSM_EMPL', 'HOL_PAID', 'VESTED', 'HEALTH.PLAN', 'GENDER',
                        'JOB.TITLE', 'TS_ORG', 'PTO_BAL', 'PTO_PAID', 'RTO_BAL', 'RTO_PAID', 'LCAT', 'VIS_CV', 'VIS_EMPL',
                        'ETHN', 'CITZ', 'NBRJOBS_ANN_SALARY', 'NBRJOBS_REG_RATE', 'NBRJOBS_FTE', 'Ethnicity', 'CLS')]
str(test_fy)



test_fy2 <- samplefy[, c('Age', 'Hired', 'ACT_PAY',  'MED_EMPL', 'DENT_EMPL', 'FLEX_H', 'FLEX_D', 'DCP_EMPL', 'DCP_SUPL', 
                         'DCP_TIA', 'LTD_EMPL', 'LTD_BUP', 'LTD_EMPR', 'LVO_CV', 'LVO_EMPL', 'LVD_EMPL', 'LVS_CV', 'LVS_EMPL', 'ADD_EMPL',
                        'ADS_EMPL', 'ADP_EMPL', 'SS_EMPL', 'SSM_EMPL', 'HOL_PAID', 'TS_ORG', 'PTO_BAL', 'PTO_PAID', 'RTO_BAL',
                        'RTO_PAID', 'VIS_EMPL', 'NBRJOBS_ANN_SALARY', 'NBRJOBS_REG_RATE', 'NBRJOBS_FTE', 'Vac_Time', 'Sick_Time')]

test_fy3 <- samplefy[, c('Age', 'Hired', 'ACT_PAY', 'ECLS', 'MED_CV', 'SS_EMPL', 'SSM_EMPL', 'HEALTH.PLAN', 
                         'GENDER', 'Vac_Time', 'Sick_Time')]

test_fy$ECLS <- as.factor(test_fy$ECLS)
test_fy$MED_CV <- as.factor(MED_CV)
test_fy$HEALTH.PLAN <- as.factor(HEALTH.PLAN)
test_fy$GENDER <- as.factor(GENDER)
test_fy$ZIP <- as.factor(ZIP)
test_fy$Ethnicity <- as.factor(test_fy$Ethnicity)
test_fy$CLS <- as.factor(test_fy$CLS)

summary(test_fy$Ethnicity)
summary(test_fy$CLS)

str(test_fy)


test_fy4 <- test_fy[, c('Sick_Timefy','Vac_Timefy', 'Vac_Time01', 'Vac_Time02', 'Vac_Time03',  'Vac_Time04', 'Vac_Time05', 'Vac_Time06', 
                        'Vac_Time07', 'Vac_Time08', 'Vac_Time09', 'Vac_Time10', 'Vac_Time11', 'Vac_Time12', 
                       'ACT_PAY', 'Age', 'Hired', 'GENDER', 'Ethnicity', 'CLS')]
test_fy5 <- test_fy3[, c('ECLS' ,'Vac_Time', 'Sick_Time')]

str(test_fy4)
str(test_fy5)

hist(Vac_Timefy)
hist(Sick_Timefy)

hist(test_fy4$Vac_Time01)
hist(test_fy4$Vac_Time02)
hist(test_fy4$Vac_Time03)
hist(test_fy4$Vac_Time04)
hist(test_fy4$Vac_Time05)
hist(test_fy4$Vac_Time06)
hist(test_fy4$Vac_Time07)
hist(test_fy4$Vac_Time08)
hist(test_fy4$Vac_Time09)
hist(test_fy4$Vac_Time10)
hist(test_fy4$Vac_Time11)
hist(test_fy4$Vac_Time12)


hist(test_fy4$Sick_Timefy)
hist(test_fy4$Sick_Time01)
hist(test_fy4$Sick_Time02)
hist(test_fy4$Sick_Time03)
hist(test_fy4$Sick_Time04)
hist(test_fy4$Sick_Time05)
hist(test_fy4$Sick_Time06)
hist(test_fy4$Sick_Time07)
hist(test_fy4$Sick_Time08)
hist(test_fy4$Sick_Time09)
hist(test_fy4$Sick_Time10)
hist(test_fy4$Sick_Time11)
hist(test_fy4$Sick_Time12)

summary(test_fy$Sick_Time01)
str(test_fy$Sick_Time01)


hist(as.numeric(test_fy$ZIP))
hist(Age)
hist(ACT_PAY)
summary(ACT_PAY)
hist(Hired)
hist(Vac_Time)
hist(Sick_Time)

hist(Sick_Time, seq(0., 650., 1.0), prob = TRUE)
hist(Vac_Time, seq(0., 400., 1.0), prob = TRUE)
hist(Age, seq(20, 80, 1.0), prob = TRUE)
lines (density(Age,na.rm=TRUE,bw="SJ"))


Sick_TimeE <- test_fy$Sick_Timefy[test_fy$CLS == "E"]
hist(Sick_TimeE)


Sick_TimeN <- test_fy$Sick_Timefy[test_fy$CLS == "N"]
summary(Sick_TimeE)
summary(Sick_TimeN)
hist(Sick_TimeN)






rug(test_fy4$Vac_Timefy)
plot(ecdf(test_fy4$Vac_Timefy), do.points = FALSE, verticals = TRUE)
plot(ecdf(test_fy4$Sick_Timefy), do.points = FALSE, verticals = TRUE)
par(pty= "s")
qqnorm(Vac_Timefy)
qqline(Vac_Timefy)
qqnorm(Sick_Timefy)
qqline(Sick_Timefy)

boxplot(Vac_Time01, Sick_Time01)
t.test(test_fy4$Vac_Time07, test_fy4$Sick_Timefy)
qqplot(Vac_Time07, Sick_Timefy)
shapiro.test(Vac_Timefy)
shapiro.test(test_fy4$Sick_Time12)
ks.test(test_fy4$Vac_Time12, test_fy4$Sick_Timefy)
var.test(test_fy4$Vac_Time12, test_fy4$Sick_Timefy)


plot(test_fy$Vac_Timefy, test_fy$Sick_Timefy)
plot(test_fy$Age, test_fy$Sick_Timefy)
plot(test_fy$Hired, test_fy$Sick_Timefy)

test_Sick <- function(x){
  boxplot(x, Sick_Time)
  print(t.test(x, Sick_Time))
  qqplot(x, Sick_Time)
  print(shapiro.test(x))
  print(ks.test(x, Sick_Time))
  print(var.test(x, Sick_Time))
  plot(x, Sick_Time)
}

test_Vac <- function(x){
  boxplot(x, Vac_Time)
  print(t.test(x, Vac_Time))
  qqplot(x, Vac_Time)
  print(shapiro.test(x))
  print(ks.test(x, Vac_Time))
  print(var.test(x, Vac_Time))
  plot(x, Vac_Time)
}


test_Sick(ACT_PAY)
test_Sick(MED_EMPL)
test_Sick(DENT_EMPL)
test_Sick(Hired)
test_Sick(Age)
test_Sick(SS_EMPL)
hist(SS_EMPL)
test_Sick(HOL_PAID)
hist(HOL_PAID)
test_Sick(as.numeric(GENDER))
hist(as.numeric(GENDER))
test_Sick(PTO_BAL)
hist(PTO_BAL)
test_Sick(as.factor(PORTFOLIO_TITLE))
summary(as.factor(SPBPERS_MRTL_CODE))
test_Sick(NBRJOBS_REG_RATE)
summary(as.factor(SPBPERS_ETHN_CODE))
test_Sick(SPBPERS_ETHN_CODE)
summary(as.factor(HEALTH.PLAN))


test_Vac(ACT_PAY)
hist(ACT_PAY)
test_Vac(Age)
hist(Age)
test_Vac(Hired)
hist(Hired)
test_Vac(MED_EMPL)
hist(MED_EMPL)
test_Vac(SS_EMPL)
hist(SS_EMPL)
test_Vac(HOL_PAID)
hist(HOL_PAID)
test_Vac(as.factor(ECLS))
summary(as.factor(ECLS))
plot((ECLS), Sick_Time)

#using lm
mE <- lm(Sick_Timefy ~ CLS + Age + Hired + Ethnicity + Vac_Timefy + ACT_PAY, data = test_fy4)
summary(mE)
plot(resid(mE))

mA <- lm(Sick_Timefy ~., data = test_fy4)
summary(mA)
predmA <- predict(mA, test_fy4[,-1])
plot(test_fy4[, 1], predmA)


plot(test_fy4$Sick_Timefy, col = "red")
points(mA$fitted.values, col = "blue")


mA <- glm(Sick_Timefy ~., family = quasi, data = test_fy4)
summary(mA)
predmA <- predict(mA, test_fy4[,-1])
plot(test_fy4[, 1], predmA)

fml <- glm( ~ x, family = binomial, data = kalythos)



mV <- lm(Sick_Timefy ~ 0 + Vac_Timefy, data = test_fy4)
summary(mV)
plot(resid(mV))
mA <- lm(Sick_Time ~ Age)
summary(mA)
plot(resid(mA))
mH <- lm(Sick_Time ~ Hired)
summary(mH)
plot(resid(mH))

#lm fully

index <- 1:nrow(test_fy4)
testindex <- sample(index, trunc(length(index)/8))
testset <- test_fy4[testindex,]
trainset <- test_fy4[-testindex,]


mA <- lm(Sick_Timefy ~., data = trainset)



predmA <- predict(mA, testset[,-1])
mA
plot(testset[, 1], predmA)

plot(test_fy4$Sick_Timefy, col = "red")
points(mA$fitted.values, col = "blue")

#using ctree
require(party)
str(samplefy)
Sick_ctree <- ctree(test_fy4$Sick_Timefy ~., data = test_fy4)
predTree <- predict(Sick_ctree, test_fy4[, -3])
plot(test_fy4[, 3], predTree)
print(Sick_ctree)
plot(Sick_ctree)


plot(test_fy4$Sick_Timefy, col = "red")
points(predTree, col = "blue")

#using cluster plotting
source("http://www.r-statistics.com/wp-content/uploads/2012/01/source_https.r.txt") # source code from github
require(RCurl)
require(colorspace)
source_https("https://raw.github.com/talgalili/R-code-snippets/master/clustergram.r")


set.seed(250)
par(cex.lab = 1.5, cex.main = 1.2)

Data <- scale(test_fy4[, -1])
clustergram(Data, k.range = 2:15, line.width = 0.0004)


#using Swiss - pairs
pairs( ~ ., data = test_fy4)


#splom
require(lattice)
splom(test_fy4[, -c(15:20)])

#using scatterplots
#install.packages("car")
require(car)
scatterplotMatrix(test_fy4[, -c(2:14)])
scatterplotMatrix(test_fy4[, -c(15:20)])

#using rpart
require(rpart)
fitK <- rpart(Sick_Timefy ~., data = test_fy4)
predRP <- predict(fitK, test_fy4[, -1])
summary(predRP)
plot(test_fy4[,1], predRP)
printcp(fitK) # display the results
plotcp(fitK) # visualize cross-validation results
summary(fitK) # detailed summary of splits
# plot tree
plot(fitK, uniform=TRUE, main="Classification Tree for Kyphosis")
text(fitK, use.n=TRUE, all=TRUE, cex=.8)
post(fitK, file = "kyphosistree.ps", title = "Classification Tree for Kyphosis") # might need to convert to PDF (distill)

#using randomForest
require(randomForest)
fitKF <- randomForest(Sick_Timefy ~ ., data = test_fy4)
#fitKF <- randomForest(ECLS ~ Vac_Time + Sick_Time + ACT_PAY + MED_CV + SS_EMPL + HEALTH.PLAN + GENDER)
#fitKF <- randomForest(ECLS ~ Vac_Time + Sick_Time, data = test_fy4)
predKF <- predict(fitKF, test_fy4[, -1])
plot(test_fy4[,1], predKF)





index <- 1:nrow(test_fy4)
testindex <- sample(index, trunc(length(index)/10))
testset <- test_fy4[testindex,]
trainset <- test_fy4[-testindex,]

KF.model <- randomForest(Sick_Timefy ~ ., data = trainset)
KF.pred <- predict(KF.model, testset[,-1])

summary(testset[,1])
summary(KF.pred)
plot(testset[, 1], KF.pred, main = 'Sick VS. Predict', xlab = 'Sick_Time', ylab = 'Prediction')


plot(testset$Sick_Timefy, col = "red")
points(KF.pred, col = "blue")


print(fitKF)   # view results
plot(fitKF)
importance(fitKF) # importance of each predictor


# Regression Tree Example
library(rpart)
# build the  tree
fitM <- rpart(Sick_Timefy~., method="anova")
fitM <- rpart(Sick_Timefy ~., data = test_fy4)
#fitM <- rpart(ECLS~Vac_Time + Sick_Time + ACT_PAY + MED_CV + SS_EMPL + HEALTH.PLAN + GENDER, method="anova")
predM <- predict(fitM, test_fy4[, -1])
predM
plot(test_fy4[,1], predM)

plot(test_fy4$Sick_Timefy, col = "red")
points(predM, col = "blue")


print(fitM)
printcp(fitM) # display the results
plot(fitM)
plotcp(fitM)
summary(fitM) # detailed summary of splits


#using naiveBayes
require(e1071)
classifier<-naiveBayes(test_fy4[,-1], test_fy4[,1])
table(predict(classifier, test_fy4[,-1]), test_fy4[,1], dnn=list('predicted','actual'))
predict(classifier, test_fy4[,-1])


#using SVM
svm.model <- svm(ECLS ~ ., data = test_fy4, cost = 1000, gamma = 0.0001)
svm.pred <- predict(svm.model, test_fy4[,-1])


table(pred = svm.pred, true = test_fy4[,1])

svm.model <- svm(Sick_Timefy ~ ., data = test_fy4, cost = 1000, gamma = 0.0001)
svm.pred <- predict(svm.model, test_fy4[,-1])

plot(test_fy4[, 1], svm.pred)


svm.model <- svm(Sick_Timefy ~ ., data = test_fy4, cost = 1000, gamma = 0.0001)
svm.pred <- predict(svm.model, test_fy4[,-1])

summary(test_fy3[,1])
summary(svm.pred)
plot(test_fy4[, 1], svm.pred, main = "Sick VS. Predict")



setwd("/Users/huiyuma/Dropbox/PeopleAnalytics")
write.csv(sample01, file = "sample01.csv")



#Best Try
svm.model <- svm(Sick_Timefy ~ ., data = test_fy4, cost = 10000, gamma = 0.1)
svm.pred <- predict(svm.model, test_fy4[,-1])

summary(test_fy4[,1])
summary(svm.pred)
plot(test_fy4[, 1], svm.pred, main = 'Sick VS. Predict', xlab = 'Sick_Time', ylab = 'Prediction')



#Best Try
svm.model <- svm(Sick_Timefy ~ ., data = test_fy4, cost = 10000, gamma = 100)
svm.pred <- predict(svm.model, test_fy4[,-1])

summary(test_fy4[,1])
summary(svm.pred)
plot(test_fy4[, 1], svm.pred, main = 'Sick VS. Predict', xlab = 'Sick_Time', ylab = 'Prediction')




#Best Try
svm.model <- svm(Sick_Time ~ ., data = test_fy4, cost = 10000, gamma = 1)
svm.pred <- predict(svm.model, test_fy4[,-3])

summary(test_fy4[,3])
summary(svm.pred)
plot(test_fy4[, 3], svm.pred, main = 'Sick VS. Predict', xlab = 'Sick_Time', ylab = 'Prediction')




index <- 1:nrow(test_fy4)
testindex <- sample(index, trunc(length(index)/10))
testset <- test_fy4[testindex,]
trainset <- test_fy4[-testindex,]

svm.model <- svm(Sick_Timefy ~ ., data = trainset, cost = 1000, gamma = 0.1)
svm.pred <- predict(svm.model, testset[,-1])

summary(testset[,1])
summary(svm.pred)
plot(testset[, 1], svm.pred, main = 'Sick VS. Predict', xlab = 'Sick_Time', ylab = 'Prediction')


plot(testset$Sick_Timefy, col = "red")
points(svm.pred, col = "blue")








require(ggplot2)        # or load package first
data(diamonds)
head(diamonds)          # look at the data!
#


ggplot(diamonds, aes(clarity, fill=cut)) + geom_bar()
ggplot(diamonds, aes(clarity)) + geom_bar() + facet_wrap(~ cut)
ggplot(diamonds) + geom_histogram(aes(x=price)) + geom_vline(xintercept=12000)
ggplot(diamonds, aes(clarity)) + geom_freqpoly(aes(group = cut, colour = cut))


head(test_fy4)
ggplot(test_fy4, aes(Sick_Timefy, fill = Ethnicity)) + geom_bar()
ggplot(test_fy4, aes(Sick_Timefy, fill = GENDER)) + geom_bar()
ggplot(test_fy4, aes(Sick_Timefy, fill = CLS)) + geom_bar()




ggplot(test_fy4, aes(Sick_Timefy)) + geom_bar() + facet_wrap(~ Ethnicity)
ggplot(test_fy4, aes(Sick_Timefy)) + geom_bar() + facet_wrap(~ CLS)
ggplot(test_fy4, aes(Sick_Timefy)) + geom_bar() + facet_wrap(~ GENDER)

ggplot(test_fy4, aes(Vac_Timefy)) + geom_bar() + facet_wrap(~ Ethnicity)
ggplot(test_fy4, aes(Vac_Timefy)) + geom_bar() + facet_wrap(~ CLS)
ggplot(test_fy4, aes(Vac_Timefy)) + geom_bar() + facet_wrap(~ GENDER)




ggplot(test_fy4) + geom_histogram(aes(x=Age)) + geom_vline(xintercept=1)
ggplot(test_fy4) + geom_histogram(aes(x=CLS)) + geom_vline(xintercept=1)
ggplot(test_fy4) + geom_histogram(aes(x=ACT_PAY)) + geom_vline(xintercept=1)



ggplot(test_fy4, aes(Sick_Timefy)) + geom_freqpoly(aes(group = CLS, colour = CLS))
ggplot(test_fy4, aes(Sick_Timefy)) + geom_freqpoly(aes(group = Age, colour = Age))
ggplot(test_fy4, aes(Sick_Timefy)) + geom_freqpoly(aes(group = Hired, colour = Hired))
ggplot(test_fy4, aes(Sick_Timefy)) + geom_freqpoly(aes(group = Vac_Timefy, colour = Vac_Timefy))
ggplot(test_fy4, aes(Sick_Timefy)) + geom_freqpoly(aes(group = ACT_PAY, colour = ACT_PAY))
ggplot(test_fy4, aes(Sick_Timefy)) + geom_freqpoly(aes(group = Ethnicity, colour = Ethnicity))
ggplot(test_fy4, aes(Sick_Timefy)) + geom_freqpoly(aes(group = GENDER, colour = GENDER))






require(mboost)
glm2 <- glmboost(Sick_Timefy ~ ., data = test_fy4)
summary(glm2)
plot(glm2)


require(graphics)
## the variances of the variables in the
## USArrests data vary by orders of magnitude, so scaling is appropriate
head(USArrests)
USArrests
prcomp(USArrests)  # inappropriate
prcomp(USArrests, scale = TRUE)
prcomp(~ Murder + Assault + Rape, data = USArrests, scale = TRUE)
plot(prcomp(USArrests))
summary(prcomp(USArrests, scale = TRUE))
biplot(prcomp(USArrests, scale = TRUE))


str(test_fy4)
test_fy5 <- test_fy4
test_fy5$GENDER <- as.numeric(test_fy5$GENDER)
test_fy5$Ethnicity <- as.numeric(test_fy5$Ethnicity)
test_fy5$CLS <- as.numeric(test_fy5$CLS)
prcomp(test_fy5)
plot(prcomp(test_fy5))
summary(prcomp(test_fy5, scale = TRUE))




plot(test_fy4$Vac_Time03, test_fy4$Sick_Timefy)
