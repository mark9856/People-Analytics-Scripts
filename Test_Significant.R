library(MASS)         # load the MASS package 
head(quine) 

table(quine$Eth, quine$Sex) 


prop.test(table(quine$Eth, quine$Sex), correct=FALSE) 



prop.test(x = c(30, 65), n = c(74, 103), correct = FALSE)
