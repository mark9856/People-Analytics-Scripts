attach(samplefy)
attach(test_fy3)
summary(Vac_Time)
summary(Sick_Time)
summary(Age)
summary(ACT_PAY)
summary(factor(ECLS))
summary(factor(CT))

head(samplefy)
#get a factor list
test_fy <- samplefy[, c('ZIP', 'Age', 'Hired', 'ACT_PAY', 'ECLS', 'MED_CV', 'MED_EMPL', 
                        'DENT_CV', 'DENT_EMPL', 'FLEX_H', 'FLEX_D', 'DCP', 'DCP_EMPL', 'DCP_SUPL', 'DCP_TIA', 'LTD_EMPL',
                        'LTD_BUP', 'LTD_EMPR', 'LVO_CV', 'LVO_EMPL', 'LVD_EMPL', 'LVS_CV', 'LVS_EMPL', 'ADD_EMPL',
                        'ADS_EMPL', 'ADP_EMPL', 'SS_EMPL', 'SSM_EMPL', 'HOL_PAID', 'VESTED', 'HEALTH.PLAN', 'GENDER',
                        'JOB.TITLE', 'TS_ORG', 'PTO_BAL', 'PTO_PAID', 'RTO_BAL', 'RTO_PAID', 'LCAT', 'VIS_CV', 'VIS_EMPL',
                        'ETHN', 'CITZ', 'NBRJOBS_ANN_SALARY', 'NBRJOBS_REG_RATE', 'NBRJOBS_FTE', 'Vac_Time', 'Sick_Time')]
str(test_fy)

test_fy2 <- samplefy[, c('Age', 'Hired', 'ACT_PAY',  'MED_EMPL', 'DENT_EMPL', 'FLEX_H', 'FLEX_D', 'DCP_EMPL', 'DCP_SUPL', 
                         'DCP_TIA', 'LTD_EMPL', 'LTD_BUP', 'LTD_EMPR', 'LVO_CV', 'LVO_EMPL', 'LVD_EMPL', 'LVS_CV', 'LVS_EMPL', 'ADD_EMPL',
                         'ADS_EMPL', 'ADP_EMPL', 'SS_EMPL', 'SSM_EMPL', 'HOL_PAID', 'TS_ORG', 'PTO_BAL', 'PTO_PAID', 'RTO_BAL',
                         'RTO_PAID', 'VIS_EMPL', 'NBRJOBS_ANN_SALARY', 'NBRJOBS_REG_RATE', 'NBRJOBS_FTE', 'Vac_Time', 'Sick_Time')]

test_fy3 <- samplefy[, c('Age', 'Hired', 'ACT_PAY', 'ECLS', 'MED_CV', 'SS_EMPL', 'SSM_EMPL', 'HEALTH.PLAN', 
                         'GENDER', 'Vac_Time', 'Sick_Time')]

test_fy3$ECLS <- as.factor(test_fy3$ECLS)
test_fy3$MED_CV <- as.factor(MED_CV)
test_fy3$HEALTH.PLAN <- as.factor(HEALTH.PLAN)
test_fy3$GENDER <- as.factor(GENDER)

str(test_fy3)


test_fy4 <- test_fy3[, c('ECLS' ,'Vac_Time', 'Sick_Time', 'ACT_PAY', 'Age', 'Hired', 'SS_EMPL', 'GENDER')]
test_fy5 <- test_fy3[, c('ECLS' ,'Vac_Time', 'Sick_Time')]

str(test_fy4)
str(test_fy5)

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


Sick_TimeEX <- Sick_Time[ECLS == "EX"]
hist(Sick_TimeEX)

Sick_TimeEZ <- Sick_Time[ECLS == "EZ"]
hist(Sick_TimeEZ)

Sick_TimeNX <- Sick_Time[ECLS == "NX"]
hist(Sick_TimeNX)

Sick_TimeNY <- Sick_Time[ECLS == "NY"]
hist(Sick_TimeNY)

Sick_TimeNZ <- Sick_Time[ECLS == "NZ"]
hist(Sick_TimeNZ)

hist(samplefy$Sick_Time)
hist(sample01$Sick_Time)
hist(sample02$Sick_Time)
hist(sample03$Sick_Time)
hist(sample04$Sick_Time)
hist(sample05$Sick_Time)
hist(sample06$Sick_Time)
hist(sample07$Sick_Time)
hist(sample08$Sick_Time)
hist(sample09$Sick_Time)
hist(sample10$Sick_Time)
hist(sample11$Sick_Time)
hist(sample12$Sick_Time)

hist(sample01$Vac_Time)
hist(sample02$Vac_Time)
hist(sample03$Vac_Time)
hist(sample04$Vac_Time)
hist(sample05$Vac_Time)
hist(sample06$Vac_Time)
hist(sample07$Vac_Time)
hist(sample08$Vac_Time)
hist(sample09$Vac_Time)
hist(sample10$Vac_Time)
hist(sample11$Vac_Time)
hist(sample12$Vac_Time)




rug(Vac_Time)
plot(ecdf(Vac_Time), do.points = FALSE, verticals = TRUE)
plot(ecdf(Sick_Time), do.points = FALSE, verticals = TRUE)
par(pty= "s")
qqnorm(Vac_Time)
qqnorm(Sick_Time)
qqline(Vac_Time)
qqline(Sick_Time)

boxplot(Vac_Time, Sick_Time)
t.test(Vac_Time, Sick_Time)
qqplot(Vac_Time, Sick_Time)
shapiro.test(Vac_Time)
shapiro.test(Sick_Time)
ks.test(Vac_Time, Sick_Time)
var.test(Vac_Time, Sick_Time)

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
mE <- lm(Sick_Time ~ 0 + (ECLS) + Vac_Time)
summary(mE)
plot(resid(mE))
mV <- lm(Sick_Time ~ 0 + Vac_Time)
summary(mV)
plot(resid(mV))
mA <- lm(Sick_Time ~ Age)
summary(mA)
plot(resid(mA))
mH <- lm(Sick_Time ~ Hired)
summary(mH)
plot(resid(mH))


mA <- lm(Sick_Time ~., data = test_fy4)
summary(mA)
predmA <- predict(mA, test_fy4[,-3])
plot(test_fy4[, 3], predmA, main = 'Sick VS. Predict', xlab = 'Sick_Time', ylab = 'Prediction')

plot(Sick_Time, col = "red")
points(mA$fitted.values, col = "blue")

#using ctree
require(party)
str(samplefy)
Sick_ctree <- ctree(Sick_Time ~., data = test_fy4)
predTree <- predict(Sick_ctree, test_fy4[, -3])
plot(test_fy4[, 3], predTree)
print(Sick_ctree)
plot(Sick_ctree)

plot(test_fy4[,3], col = "red")
points(predTree, col = "blue")

#using cluster plotting
source("http://www.r-statistics.com/wp-content/uploads/2012/01/source_https.r.txt") # source code from github
require(RCurl)
require(colorspace)
source_https("https://raw.github.com/talgalili/R-code-snippets/master/clustergram.r")


set.seed(250)
par(cex.lab = 1.5, cex.main = 1.2)

Data <- scale(test_fy5[, -1])
clustergram(Data, k.range = 2:15, line.width = 0.0004)


#using Swiss - pairs
pairs( ~ Hired + Age + Vac_Time + Sick_Time, data = samplefy)
pairs( ~ Hired + Age + Vac_Time + Sick_Time + ECLS, data = test_fy3)

#splom
require(lattice)
splom(test_fy3)

#using scatterplots
#install.packages("car")
require(car)
scatterplotMatrix(test_fy3)

#using rpart
require(rpart)
fitK <- rpart(Sick_Time ~., data = test_fy3)
predRP <- predict(fitK, test_fy3[, -3])
summary(predRP)
plot(test_fy4[,3], predRP)
plot(Sick_Time, col = "red")
points(predRP, col = "blue")
printcp(fitK) # display the results
plotcp(fitK) # visualize cross-validation results
summary(fitK) # detailed summary of splits
# plot tree
plot(fitK, uniform=TRUE, main="Classification Tree for Kyphosis")
text(fitK, use.n=TRUE, all=TRUE, cex=.8)
post(fitK, file = "kyphosistree.ps", title = "Classification Tree for Kyphosis") # might need to convert to PDF (distill)

#using randomForest
require(randomForest)
fitKF <- randomForest(Sick_Time ~ ., data = test_fy4)
#fitKF <- randomForest(ECLS ~ Vac_Time + Sick_Time + ACT_PAY + MED_CV + SS_EMPL + HEALTH.PLAN + GENDER)
#fitKF <- randomForest(ECLS ~ Vac_Time + Sick_Time, data = test_fy4)
predKF <- predict(fitKF, test_fy4[, -3])
plot(test_fy4[,3], predKF)


index <- 1:nrow(test_fy4)
testindex <- sample(index, trunc(length(index)/20))
testset <- test_fy4[testindex,]
trainset <- test_fy4[-testindex,]

KF.model <- randomForest(Sick_Time ~ ., data = trainset)
KF.pred <- predict(KF.model, testset[,-3])

summary(testset[,3])
summary(KF.pred)
plot(testset[, 3], KF.pred, main = 'Sick VS. Predict', xlab = 'Sick_Time', ylab = 'Prediction')



print(fitKF)   # view results
plot(fitKF)
importance(fitKF) # importance of each predictor


# Regression Tree Example
library(rpart)
# build the  tree
fitM <- rpart(Sick_Time~Vac_Time + ECLS + ACT_PAY + MED_CV + SS_EMPL + HEALTH.PLAN + GENDER, method="anova")
fitM <- rpart(Sick_Time ~., data = test_fy4)
#fitM <- rpart(ECLS~Vac_Time + Sick_Time + ACT_PAY + MED_CV + SS_EMPL + HEALTH.PLAN + GENDER, method="anova")
predM <- predict(fitM, test_fy4[, -3])
predM
plot(test_fy4[,3], predM)

print(fitM)
printcp(fitM) # display the results
plot(fitM)
plotcp(fitM)
summary(fitM) # detailed summary of splits


#using naiveBayes
require(e1071)
classifier<-naiveBayes(test_fy4[,-3], test_fy4[,3])
table(predict(classifier, test_fy4[,-3]), test_fy4[,3], dnn=list('predicted','actual'))
predict(classifier, test_fy4[,-3])


#using SVM
svm.model <- svm(ECLS ~ ., data = test_fy4, cost = 1000, gamma = 0.0001)
svm.pred <- predict(svm.model, test_fy4[,-1])


table(pred = svm.pred, true = test_fy4[,1])
plot(Sick_Time, col = "red")
points(svm.pred, col = "blue")


svm.model <- svm(Sick_Time ~ ., data = test_fy5, cost = 1000, gamma = 0.0001)
svm.pred <- predict(svm.model, test_fy5[,-3])

plot(test_fy5[, 3], svm.pred)


svm.model <- svm(Sick_Time ~ ., data = test_fy3, cost = 1000, gamma = 0.0001)
svm.pred <- predict(svm.model, test_fy3[,-11])

summary(test_fy3[,11])
summary(svm.pred)
plot(test_fy3[, 11], svm.pred, main = "Sick VS. Predict")



setwd("/Users/huiyuma/Dropbox/PeopleAnalytics")
write.csv(sample01, file = "sample01.csv")



#Best Try
svm.model <- svm(Sick_Time ~ ., data = test_fy4, cost = 10000, gamma = 0.1)
svm.pred <- predict(svm.model, test_fy4[,-3])

summary(test_fy4[,3])
summary(svm.pred)
plot(test_fy4[, 3], svm.pred, main = 'Sick VS. Predict', xlab = 'Sick_Time', ylab = 'Prediction')



#Best Try
svm.model <- svm(Sick_Time ~ ., data = test_fy4, cost = 10000, gamma = 100)
svm.pred <- predict(svm.model, test_fy4[,-3])

summary(test_fy4[,3])
summary(svm.pred)
plot(test_fy4[, 3], svm.pred, main = 'Sick VS. Predict', xlab = 'Sick_Time', ylab = 'Prediction')




#Best Try
svm.model <- svm(Sick_Time ~ ., data = test_fy4, cost = 10000, gamma = 1)
svm.pred <- predict(svm.model, test_fy4[,-3])

summary(test_fy4[,3])
summary(svm.pred)
plot(test_fy4[, 3], svm.pred, main = 'Sick VS. Predict', xlab = 'Sick_Time', ylab = 'Prediction')




index <- 1:nrow(test_fy4)
testindex <- sample(index, trunc(length(index)/8))
testset <- test_fy4[testindex,]
trainset <- test_fy4[-testindex,]

svm.model <- svm(Sick_Time ~ ., data = trainset, cost = 10000, gamma = 1)
svm.pred <- predict(svm.model, testset[,-3])

summary(testset[,3])
summary(svm.pred)
plot(testset[, 3], svm.pred, main = 'Sick VS. Predict', xlab = 'Sick_Time', ylab = 'Prediction')


