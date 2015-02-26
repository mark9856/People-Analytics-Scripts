options(java.parameters = "-Xmx4g" )
library(XLConnect)


#loading all the performance data of each year
performance13 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_Performance/Performance Results FY13.xlsx"),sheet=1)
performance12 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_Performance/Performance Results FY12.xlsx"),sheet=1)
performance11 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_Performance/Performance Results FY11.xlsx"),sheet=1)
performance10 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_Performance/Performance Results FY10.xlsx"),sheet=1)
performance09 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_Performance/Performance Results FY09.xlsx"),sheet=1)
performance08 <- readWorksheet(loadWorkbook("/Users/huiyuma/Dropbox/PeopleAnalytics/Data/Adjusted_Performance/Performance Results FY08.xlsx"),sheet=1)

summary(performance13)
head(performance13)

perf13 <- performance13[, c('RIN', 'Portfolio.Title','Org.Title', 'Title','FTE', 'Current.Hourly.Rate..Non.Exempt.................', 'Current.Salary..Exempt.',
                            'ECLS', 'Performance.Rating..Select.from.Drop.Down.', 'Recommended...Increase', 'Approved.New.Salary..Pool.Calc.',
                            'Current.Annual..Pool.Calc.', 'Gender','American.Indian.or.Alaskan.Native', 'Asian', 'Black.or.African.American', 
                            'Native.Hawaiian.and.Other.Pacific.Islander','White')]

perf12 <- performance12[, c('RIN', 'Portfolio.Title','Org.Title', 'Title', 'FTE', 'Current.Hourly.Rate..Non.Exempt.................', 'Current.Salary..Exempt.',
                            'ECLS', 'Performance.Rating..Select.from.Drop.Down.', 'Recommended...Increase', 'Approved.New.Salary..Pool.Calc.',
                            'Current.Annual..Pool.Calc.', 'Gender', 'Ethnicity')]

perf11 <- performance11[, c('RIN', 'Portfolio.Title','Org.Title', 'Title', 'FTE', 'Current.Hourly.Rate..Non.Exempt.................', 'Current.Salary..Exempt.',
                            'ECLS', 'Performance.Rating..Select.from.Drop.Down.', 'Recommended...Increase', 'Approved.New.Salary..Pool.Calc.',
                            'Current.Annual..Pool.Calc.', 'Gender', 'Ethnicity')]

perf10 <- performance10[, c('RIN', 'Portfolio.Title','Org.Title', 'Title', 'FTE', 'Current.Hourly.Rate..Non.Exempt.................', 'Current.Salary..Exempt.',
                            'ECLS', 'Rating', 'Total.Payment.Amount', 'Comments.')]


perf09 <- performance09[, c('RIN', 'Portfolio.Title','Org.Title', 'Title', 'FTE', 'Current.Hourly.Rate..Non.Exempt.................', 'Current.Salary..Exempt.',
                            'ECLS', 'Performance.Rating..Select.from.Drop.Down.', 'Recommended...Increase', 'Approved.New.Salary..Pool.Calc.',
                            'Current.Annual..Pool.Calc.', 'Gender', 'Ethnicity')]

perf08 <- performance08[, c('RIN', 'Portfolio.Title','Org.Title', 'Title', 'FTE', 'Current.Hourly.Rate..Non.Exempt.................', 'Current.Salary..Exempt.',
                            'ECLS', 'Performance.Rating..Select.from.Drop.Down.', 'Recommended...Increase', 'Approved.New.Salary..Pool.Calc.',
                            'Current.Annual..Pool.Calc.', 'Gender', 'Ethnicity')]
#change the columns' names
changeName <- function(x){
  colnames(x)[names(x) == "Current.Hourly.Rate..Non.Exempt................."] <- "Current.Hourly.Rate.Non.Exempt"
  colnames(x)[names(x) == "Rating"] <- "Performance.Rating"
  colnames(x)[names(x) == "Performance.Rating..Select.from.Drop.Down."] <- "Performance.Rating"
  colnames(x)[names(x) == "Recommended...Increase"] <- "Recommended.Increase"
  colnames(x)[names(x) == "Approved.New.Salary..Pool.Calc."] <- "Approved.New.Salary"
  colnames(x)[names(x) == "Current.Annual..Pool.Calc."] <- "Current.Annual"
  return(x)
}

perf13 <- changeName(perf13)
perf12 <- changeName(perf12)
perf11 <- changeName(perf11)
perf10 <- changeName(perf10)
perf09 <- changeName(perf09)
perf08 <- changeName(perf08)

summary(as.factor(perf12$Ethnicity))

#transfer into Ethnicity
AddEth <- function(x){
  x$Ethnicity = 'W'
  x$Ethnicity = ifelse(x$American.Indian.or.Alaskan.Native == "X", 'AI', x$Ethnicity)
  x$Ethnicity = ifelse(x$Asian == "X", 'A', x$Ethnicity)
  x$Ethnicity = ifelse(x$Black.or.African.American == "X", 'B', x$Ethnicity)
  x$Ethnicity = ifelse(x$Native.Hawaiian.and.Other.Pacific.Islander == "X", 'NH', x$Ethnicity)
  x$Ethnicity = ifelse(x$White == "X", 'W', x$Ethnicity)
  return(x)
}

perf13 <- AddEth(perf13)
perf13 <- perf13[, c('RIN', 'Portfolio.Title','Org.Title', 'Title','FTE', 'Current.Hourly.Rate.Non.Exempt', 'Current.Salary..Exempt.',
                      'ECLS', 'Performance.Rating', 'Recommended.Increase', 'Approved.New.Salary',
                      'Current.Annual', 'Gender','Ethnicity')]

head(perf13)

merg <- function(x){
  return(merge(x, CBSfy, by = c("RIN")))
}

per13 <- merg(perf13)
per12 <- merg(perf12)
per11 <- merg(perf11)
per10 <- merg(perf10)
per09 <- merg(perf09)
per08 <- merg(perf08)

changeRate <- function(x){
  x$Recommended.Increase = ifelse(is.na(x$Recommended.Increase), 0, x$Recommended.Increase)
  x$Recommended.Increase = ifelse(grepl("%",x$Recommended.Increase), as.numeric(sub("%", "",  x[,c('Recommended.Increase')]))/100,
                                      x$Recommended.Increase)
  return(x)
}


p13 <- changeRate(per13)
p12 <- changeRate(per12)
p11 <- changeRate(per11)
p10 <- changeRate(per10)
p09 <- changeRate(per09)
p08 <- changeRate(per08)



