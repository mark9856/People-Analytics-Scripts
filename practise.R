help.search("data input")
example(lm)
demo(persp)
demo(graphics)
demo(Hershey)
demo(plotmath)
library(help=spatial)
library(MASS)
library(help=spatial)
install.packages("akima")
install.packages("tree")
library(tree)
objects()
search()
worms <- 5
rm(list=ls())
log(42/7.3)
2 + 3; 5 * 7; 3 - 7
log(9, 3)
pi
sin(2* pi/12)
cos(pi/2)
x <- 560813.472
factorial(x)
floor(x)
ceiling(x)
trunc(1.5)
trunc(-1.5)
signif(x,digits=6)
1.2e-2
119%/%13
119%%13
119/13

15421%%7 != 0
x <- 5.6
rounded <- function(x) floor(x + 0.5)
rounded(5.6)
rounded(5.4)
3/0
-12/0
exp(-Inf)
(0:3)^Inf
0/0
is.na(Inf/Inf)
is.infinite(-Inf)
x <- c(1:8, NA)
mean(x)
mean(x, na.rm=T)
is.na(x)
vmv <- c(1:6, NA, NA, 9:12)
vmv
seq(along=vmv)
seq(along=vmv)[!is.na(vmv)]
which(is.na(vmv))
vmv[is.na(vmv)] <- 0
vmv <-c(1:6, NA, NA, 9:12)
ifelse(is.na(vmv), 0, vmv)
x = 5
6 -> x
y <- 4.37383
z <- y[1:2]
length(z)
y <- 10:16
y <- c(10,11,12,13,14,15,16)
y <- scan()
A <- 1:10
B <- c(2,4,8)
c <- A*B
A
counts <- c(25, 12, 7, 4, 6, 2, 1, 0, 2)
names(counts) <- 0:8
names(counts)
counts
st<- table(rpois(2000,2.3))
st
as.vector(st)
max(y)
min(y)
range(y)
var(y)
sort(y)
rank(y)
order(y)
quantile(y)
names(B) <- c("i","j","k")
B
B <- as.vector(B)
quantile(B)
cumsum(B)
cumprod(B)
cummax(B)
cummin(B)
example(tapply)

#tapply
require(stats)
groups <- as.factor(rbinom(32, n = 5, prob = 0.4))
groups
tapply(groups,groups,length)
table(groups)
## contingency table from data.frame : array with named dimnames
tapply(warpbreaks$breaks, warpbreaks[,-1], sum)
warpbreaks$breaks
tapply(warpbreaks$breaks, warpbreaks[, 3, drop = FALSE], sum)
n <- 17; fac <- factor(rep(1:3, length = n), levels = 1:5)
table(fac)
tapply(1:n, fac, sum)
tapply(1:n, fac, sum, simplify = FALSE)
tapply(1:n, fac, range)
tapply(1:n, fac, quantile)
## example of ... argument: find quarterly means
tapply(presidents, cycle(presidents), mean, na.rm = TRUE)
ind <- list(c(1, 2, 2), c("A", "A", "B"))
table(ind)
tapply(1:3, ind) #-> the split vector
tapply(1:3, ind, sum)
with(OrchardSprays,boxplot(decrease~treatment))
library(MASS)
bacteria
with(bacteria,tapply((y=="y"),trt,sum))
with(bacteria,tapply((y=="n"),trt,sum))
with(mammals,plot(body,brain,log="xy"))
data()
data(package = .packages(all.available = T))
x<-0:10
sum(x)
sum(x < 5)
sum(x < 6)
1*(x<5)
x[x<5]
sum(x[x<5])
sum(x*(x<5))

y<-c(8,3,5,7,6,6,8,9,2,3,9,4,10,4,11)
sort(y)
rev(sort(y))
sum(rev(sort(y))[3])
y
which(y < 5)
length(sort(y[y > 5]))
xv <- rnorm(1000, 100, 10)
xv
xv[seq(25,length(xv), 25)]
which(abs(xv - 108) == min(abs(xv - 108)))
xv[59]
closest <- function(xv, sv){
  xv[which(abs(xv - sv)==min(abs(xv - sv)))]
}
closest(xv, 108)
x<- c(5,8,6,7,1,5,3)
x[4]
z <- x[-1]
x
z
trim.mean <- function(x) mean(sort(x)[-c(1,length(x))])
x[-c(1,length(x))]
sort(x)[-c(1,length(x))]
trim.mean(x)
vec <- 1:50
vec
multiples <- floor(50/7)
multiples
subscripts <- 7*(1:multiples)
subscripts
vec[-subscripts]
vec[-(1:50*(1:50%%7==0))]
x <- 0:6
x < 4
all(x > 0)
any(x > 0)
(x < 4) * runif(7)
runif(7)
treatment <- letters[1:6]
treatment
t2 <- factor(1+(treatment == "b") + 2*(treatment == "c") + 2*(treatment == "d"))
t2
t3 <- factor(1 + 2*(treatment == "c"))
t3

x = y
y
x
x <- y

x <- c(NA, F, T)
names(x) <- as.character(x)
x
outer(x, x, "&")
outer(x, x, "|")
rep(9,5)
rep(1:4, times = 2)
rep(1:4, each = 2)
rep(1:4, each = 2, times = 3)
rep(1:4, 1:4)
rep(1:4, c(4,1,4,2))

gl(4,3)
gl(4, 3, 12)
gl(3, 2, 24, labels = c("A", "B", "C"))

-0.5: 8.5
seq(0, 1.5, 0.2)
seq(1.5, 0, -0.2)
x.values <- seq(min(x), max(x), (max(x) - min(x))/100)
x.values
x <- rnorm(18, 10, 2)
x
seq(88, 50, along = x)
seq(88, 50, (50 - 88)/ 17)
sequence(5)
sequence(5:1)
sequence(c(5,4,6))
y
sample(y)
sample(y)
sample(y, 5)
sample(y, replace = T)
p <- c(1, 2, 3, 4, 5, 5, 4, 3, 2, 1)
x<-1:10
sapply(1:5,function(i) sample(x,4,prob=p))
X<-matrix(c(1,0,0,0,1,0,0,0,1),nrow=3)
X
class(X)
attributes(X)
vector <- c(1,2,3,4,4,3,2,1)
V <- matrix(vector, byrow = T, nrow = 2)
V
dim(vector) <- c(4, 2)
is.matrix(vector)
vector
t(vector)
X <- matrix(rpois(20, 1.5), nrow = 4)
X
rownames(X) <- rownames(X, do.NULL = F, prefix ="Trial.")
X
drug.names <- c("aspirin", "paracetamol", "nurofen", "hedex", "placebo")
colnames(X) <- drug.names
X
dimnames(X) <- list(NULL, paste("drug.", 1:5, seq = ""))
var(X[4,])
rowSums(X)
as.vector(colSums(X))
apply(X,2,mean)
colMeans(X)
apply(X,1, mean)
rowMeans(X)
group = c("A", "B", "B", "B")
rowsum(X, group)
tapply(X, list(group[row(X)], col(X)), sum)
row(X)
aggregate(X, list(group), sum)
apply(X, 2, mean)
apply(X, 1, mean)

X <- rbind(X, apply(X,2,mean))
X
X <- cbind(X, apply(X,1,mean))
X
colnames(X) <- c(1:5, "varience")
rownames(X) <- c(1:4, "mean")
X

rowmatrix <- mat[2,,drop = FALSE]

cols <- apply(X, 2, mean)
sweep(X, 2, cols)
col.means<-matrix(rep(cols,rep(5,6)),nrow=5)
col.means
as.vector(rep(cols, rep(5,6)))
as.vector(rep(cols, each = 5, times = 1))
col.means <- matrix(rep(cols, each = 5), nrow = 5)
col.means
apply(X,1, function(x)1:4)
t(apply(X, 1, function(x)1:4))
apply(X, 1, function(x)1:4)
sweep(X, 1, 1:10, function(a,b)b)
array <- 1:25
dim(array)
dim(array) <- c(5,5)
dim(array)
is.matrix(array)
array
A <- letters[1:24]
dim(A) <- c(4,2,3)
dim(A)
A
dim(A) <- c(4,6)
A
t(A)
A[,,1:3]
A[,, 1]
A[3,,]
A[3,,,drop = F]
cs <- c(2,1,2)
cs
ts <- c(1,2,3)
ts
a <- "abc"
b <- "123"
as.numeric(a)
as.numeric(b)
pets <- c("cat", "dog", "gerbil", "terrapin")
length(pets)
nchar(pets)
class(pets)
is.factor(pets)
df <- data.frame(pets)
df
is.factor(df$pets)
letters
LETTERS
which(letters == "n")
noquote(letters)
c(a,b)
paste(a,b,seq = "")
paste(a,b)
paste(a,b,"a longer phrase containing blinks", seq = "")
d <- c(a,b, "new")
d
e <- paste(d,"a longer phrase containing blanks")
e
phrase <- "the quick brown fox jumps over the lazy dog"
q <- character(20)
q
for(i in 1:20) q[i] <- substr(phrase, 1, i)
q
table(strsplit(phrase, split = character(0)))
phrase
words <- 1 + table(strsplit(phrase, split = character(0)))[2]
words
strsplit(phrase, "the")
strsplit(phrase, "lazy")
strsplit(phrase, "the")[[1]][2]
strsplit(phrase, "the")[2]
nchar(strsplit(phrase, "the")[[1]][2])
toupper(phrase)
tolower(toupper(phrase))
first <- c(5,8,3,5,6,4,4,2,8,8,8,4,4,6)
second <- c(8,6,4,2)
match(first,second)
drug <- c("A", "B")
drug
drug[1 + is.na(match(first,second))]
drug[is.na(match(first,second))]

y <- c(3,3,4,5,5)
arithmetic.mean <- function(x) sum(x)/length(x)
arithmetic.mean(y)
sort(y)[ceiling(length(y)/2)]
med <- function(x){
  odd.even <- length(x)%%2
  if(odd.even == 0) (sort(x)[length(x)/2] + sort(x)[1 + length(x)/2])/2
  else sort(x)[ceiling(length(x)/2)]
}
med(y)
med(y[-1])


insects <- c(1,10, 1000, 10, 1)
mean(insects)
log(insects)
mean(log(insects))
exp(mean(log(insects)))
exp(3)
geometric <- function(x) exp(mean(log(x)))
geometric(insects)
harmonic <- function(x) 1/mean(1/x)
harmonic(c(1,2,4,1))

y <- c(13,7,5,12,9,15,6,11,9,7,12)
variance <- function(x) sum((x - mean(x))^2/(length(x) - 1))
variance(y)
var(y)
variance.ratio <- function(x,y){
  v1 <- var(x)
  v2 <- var(y)
  if(var(x) > var(y)){
    vr <- var(x)/var(y)
    df1 <- length(x) - 1
    df2 <- length(y) - 1
  }
  else{
    vr <- var(y)/ var(x)
    df1 <- length(y) - 1
    df2 <- length(x) - 1
  }
  2*(1 - pf(vr, df1, df2))
}
a <- rnorm(10, 15, 2)
b <- rnorm(10, 15, 4)
variance.ratio(a,b)
var.test(a,b)
se <- function(x) sqrt(var(x)/length(x))
ci95 <- function(x){
  t.value <- qt(0.975, length(x) - 1)
  standard.error <- se(x)
  ci <- t.value * standard.error
  cat("95% Confidence Interval = ", mean(x) - ci, "to ", mean(x) + ci, "\n")
}

x <- rnorm(150, 25, 3)
ci95(x)
xv<- rnorm(30)
xv

sem <- numeric(30)
sem
se(xv[c(1,2)])
#sem[1] <- NA
for(i in 1 :30) sem[i] <- se(xv[1:i])
sem
plot(1:30, sem, ylim = c(0, 0.8),
     ylab = "standard error of mean", xlab = "sample size n", pch = 16)

lines(2:30, 1/sqrt(2:30))

error.bars<-function(yv,z,nn){
  xv<- barplot(yv,ylim=c(0,(max(yv)+max(z))),names=nn,ylab=deparse(substitute(yv) ))
  g=(max(xv)-min(xv))/50
  for (i in 1:length(xv)) {
    lines(c(xv[i],xv[i]),c(yv[i]+z[i],yv[i]-z[i]))
    lines(c(xv[i]-g,xv[i]+g),c(yv[i]+z[i], yv[i]+z[i]))
    lines(c(xv[i]-g,xv[i]+g),c(yv[i]-z[i], yv[i]-z[i]))
  }}

seq(0, 1, by = 0.1) == 0.3
unique(c(.3, .4 - .1, .5 - .2, .6 - .3, .7 - .4))

for (i in 1:5) print(i^2)

j <- k <- 0
for (i in 1:5) {
  j<-j+1;
  k<-k+i*j;
  print(i+j+k) }

fac1<- function(x){
  f <- 1
  if(x < 2) return (1)
  for(i in 2:x){
    f <- f * i
    f
  }
}
sapply(0:2, fac1)

fac2 <- function(x){
  f <- 1
  t <- x
  while(t > 1){
    f <- f * t
    t <- t - 1
  }
  return(f)
}
sapply (0:5, fac2)
cumprod(1:5)

fac4 <- function(x) max(cumprod(1:x))
fac4(5)
sapply (0:5, fac4)
gamma(6)
sapply(0:5, factorial)

fibonacci<-function(n) { 
  a<-1
  b<-0 
  while(n>0){
    swap<-a 
    a<-a+b 
    b<-swap 
    n<-n-1 }
  b
}

sapply(1:10, fibonacci)
for(i in 1:length(y)){
  if(y[i] < 0) y[i] <- 0
}
y[y < 0] <- 0
z <- ifelse(y < 0, -1, 1)
y <- log(rpois(20, 1.5))
y
ifelse(y < 0, NA, y)
x <- runif(1000000)
x
system.time(max(x))
pc <- proc.time()
pc
cmax <- x[1]
cmax

for(i in 2:100000){
  if(x[i] > cmax) cmax <- x[i]
}
proc.time() - pc

z <- NULL
z
for(i in 1:10){
  z <- c(z, i)
}
z <- 1:1000000
z
central <- function(y, measure){
  switch(measure,
         Mean = mean(y),
         Geometric = exp(mean(log(y))),
         Harmonic = 1/mean(1/y),
         Median = median(y),
  Stop("Measure not included"))
}
central(rnorm(100, 10, 2), "Harmonic")
central(rnorm(100, 10, 2), 3)
charplot <- function(x,y,pc = 16, co = "red"){
  plot(y ~ x, pch = pc, col = co)
}
charplot(1:10, 1:10)
charplot(1:10, 1:10, 10, "navy")
charplot(1:10, 1:10, co = "green", pc = 15)

many.means <- function(...){
  data <- list(...)
  n <- length(data)
  means <- numeric(n)
  vars <- numeric(n)
  for(i in 1:n){
    means[i] <- mean(data[[i]])
    vars[i] <- var(data[[i]])
  }
  print(means)
  print(vars)
  invisible(NULL)
}
x <- rnorm(100)
y <- rnorm(200)
z <- rnorm(300)
many.means(x,y,z)
#length(list(x,y,z))
parmax <- function(a,b){
  c <- pmax(a,b)
  median(c)
}
x <- c(1,9,2,8,3,7)
y <- c(9,2,8,3,7,2)
parmax(x,y)
pmax(x,y)

parboth <- function(a,b){
  c <- pmax(a,b)
  d <- pmin(a,b)
  answer <- list(median(c), median(d))
  names(answer)[[1]] <- "median of the parallel maxima"
  names(answer)[[2]] <- "median of the parallel minima"
  #return(median(c), median(d))
  return(answer)
}
parboth(x,y)

(function(x,y){
  z <- 2*x^2 + y^2;
  x + y + z
})(0:7, 1)

plotx2 <- function(x, y = z^4){
  z <- 1:x
  plot(z,y, type = "l")
}
#par(mfrow = c(1,1))
plotx2(12)
plotx2(12,1:12)

(X<-matrix(1:24,nrow=4))
X
apply(X, 1, sum)
apply(X, 2, sum)
t(apply(X, 1, sqrt))
apply(X, 2, sqrt)
apply(X, 1, sample)
apply(X, 2, function(x) x ^ 2 + x)
sapply(3:7, seq)
#a <- seq(0.01, 0.2, .005)
#xv <- seq(0, 50, 0.1)
#lines(xv, exp(-0.055* xv))


a <- c("a", "b", "c", "d")
b <- c(1,2,3,4,4,3,2,1)
c <- c(T,T,F)
list.object <- list(a,b,c)
class(list.object)
list.object
lapply(list.object,length)
lapply(list.object,class)
lapply(list.object, mean)


poisson <- rpois(150, 0.7)
poisson
rle(poisson)

name <- "Carmen"; n1 <- 10; n2 <- 100; m <- 0.5
ls()
ls(pat = "m")
ls(pat = "^m")
ls.str()

x <- 1
mode(x)
class(x)

x <- "\""
x
cat(x)
qnorm(0.025)
qnorm(0.975)
1 - pchisq(3.84, 1)
factor(1:3)
factor(1:3, labels = c("A", "B", "C"))
factor(1:5, exclude = 4)
ff <- factor(c(2,4), levels = 2:5)
ff
levels(ff)
matrix(data = 5, nr = 2, nc = 2)
matrix(1:6, 2, 3)
x <- 1:15
x
dim(x)
dim(x) <- c(5,3)
x <- 1:4; n <- 10; M <- c(10, 35); y <- 2:4
data.frame(x,M)

ts(1:10, start = 1959)
ts(1:47, frequency = 4, start = c(1959, 2))
ts(matrix(rpois(36,5), 12,3), start = c(1961, 1), frequency = 12)

fac <- factor(c(1,10))
fac
as.numeric(fac)

fac2 <- factor(c("Male", "Female"))
fac2
as.numeric(fac2)
as.numeric(as.character(fac))

x <- 1:3; y <- 1:3
x == y
identical(x,y)
all.equal(x,y)
c(1:5, seq(10, 11, 0.2))

pdf()
dev.list()
dev.set(3)
dev.off(2)

demo(graphics)
dev.cur()
dev.off()
split.screen(c(1,2))
erase.screen()
split.screen()
layout(matrix(1:4, 2, 2))
mat <- matrix(1:4, 2, 2)
mat
layout(mat)
layout.show(4)
layout.show(6)
m <- matrix(c(1:3, 3), 2, 2)
layout(m)
layout.show(3)
m <- matrix(c(1,1,2,1),2,2)
layout(m, widths = c(2, 1),
       heights = c(1, 2))
layout.show(2)

plot(x)
plot(x, y)
pie(x)
boxplot(x)
stripchart(x)
plot.ts(x)
hist(x)
qqplot(x, y)
qqnorm(x)
lines(x, y)
points(x, y)
x <- rnorm(500, 5)
y <- rpois(500, 5)
plot(x, y)
points(x, y)
box()

text(x, y, as.expression(substitute(R^2==r, list(r=Rsquared))))
text(x, y, expression(p == over(1, 1+e^-(beta*x+alpha))))
par(bg = "yellow")

x <- rnorm(10)
y <- rnorm(10)
plot(x,y)
xyplot( y ~ x)
n <- seq(5, 45, 5)
par(bg = "white")

n <- seq(5, 45, 5)
x <- rnorm(sum(n))
y <- factor(rep(n, n), labels = paste("n =", n))

densityplot( ~ x|y,
             panel = function(x, ...){
               panel.densityplot(x, col = "DarkOliveGreen", ...)
               panel.mathdensity(dmath = dnorm,
                                 args = list(mean = mean(x), sd = sd(x)),
                                 col = "darkblue")
             })

data(quakes)
mini <- min(quakes$depth)
maxi <- max(quakes$depth)
int <- ceiling((maxi - mini)/9)
inf <- seq(mini, maxi, int)
quakes$depth.cat <- factor(floor(((quakes$depth - mini) / int)),
                           labels=paste(inf, inf + int, sep="-"))
xyplot(lat ~ long | depth.cat, data = quakes)


data(iris)
xyplot(
  Petal.Length ~ Petal.Width, data = iris, groups=Species, panel = panel.superpose,
  type = c("p", "smooth"), span=.75,
  auto.key = list(x = 0.15, y = 0.85)
)
xyplot(
  Petal.Length ~ Petal.Width, data = iris, groups = Species)

splom(
  ~iris[1:4], groups = Species, data = iris, xlab = "",
  panel = panel.superpose,
  auto.key = list(colums = 3))

splom(
  ~iris[1:3] | Species, data = iris, pscales = 0,
  varnames = c("Sepal\nLength", "Sepal\nWidth", "Petal\nLength"))

parallelplot(~iris[, 1:4] | Species, data = iris, layout = c(3,1))

data(InsectSprays)
aov.spray <- aov(sqrt(count) ~ spray, data = InsectSprays)
aov.spray
summary(aov.spray)
plot(aov.spray)
termplot(aov.spray)
opar <- par()
par(mfcol = c(2,2))
plot(aov.spray)
par(opar)
termplot(aov.spray, se = T, partial.resid = T, rug = T)

mod <- lm(y ~ x)
df.residual(mod)

str(aov.spray, max.level = -1)
names(aov.spray)
aov.spray$coefficients
aov.spray
str(summary(aov.spray))
names(summary(aov.spray))
apropos("^summary")

x <- y <- rnorm(5)
lm.spray <- lm( y ~ x)
names(lm.spray)
names(summary(lm.spray))
search()
library(grid)
library(help = grid)

y <- numeric(length(x))
y
x
b
b <- 1
for(i in 1:length(x)) if (x[i] == b) y[i] <- 0 else y[i] <- 1

z <- numeric(length(x))
for(i in 1:length(z)) z[i] <- x[i] + y[i]
z

x <- rnorm(10, -5, 0.1)
y <- rnorm(10, 5, 2)
X <- cbind(x, y)
X
apply(X, 2, mean)
apply(X, 2, sd)

forms <- list(y ~ x, y ~ poly(x,2))
forms
lapply(forms, lm)

my.df <- data.frame(a = character(0), b = numeric(0))
for(i in 1: n)
{
  my.df <- rbind(my.df, data.frame(a = sample(letters, 1), 
                                   b = runif(1)))
}
my.df

my.df <- data.frame(a = character(0), b = numeric(0))
for(i in 1:n){
  this.N <- rpois(1, 10)
  my.df <- rbind(my.df, data.frame(a = sample(letters, this.N, replace = T), b = runif(this.N)))
}

?'Memory-limits'


attach(faithful)
summary(eruptions)
(eruptions)
stem(eruptions)
hist(eruptions)
hist(eruptions, seq(1.6, 5.2, 0.2), prob = T)
lines(density(eruptions, bw = 0.1))
density(eruptions)
rug(eruptions)
lines(density(eruptions, bw = "SJ"))
plot(ecdf(eruptions[eruptions > 3]), do.points = F, verticals = T)

long <- eruptions[eruptions > 3]
x <- seq(3, 5.4, 0.01)
lines(x, pnorm(x, mean = mean(long), sd = sqrt(var(long))), lty = 3)
par(pty = "s")
qqnorm(long);
qqline(long)

x <- rt(250, df = 5)
qqnorm(x)
qqline(x)
x
hist(x)

qqplot(qt(ppoints(250), df = 5), x, xlab = "QQ plot for t dsn")
qqline(x)
shapiro.test(long)
shapiro.test(x)
y <- rnorm(100)
y
qqnorm(y)
qqline(y)
shapiro.test(y)
ks.test(long, "pnorm", mean = mean(long), sd = sqrt(var(long)))

A <- scan()
B <- scan()
boxplot(A,B)
t.test(A,B)
var.test(A, B)
t.test(A,B, var.equal = T)
shapiro.test(A)
shapiro.test(B)
plot(ecdf(A), do.points = F, verticals = T, xlim = range(A,B))
plot(ecdf(B), do.points = F, verticals = T, add = T)
#plot(ecdf(A), do.points = F, verticals = T)
ks.test(A,B)

twosam <- function(y1, y2){
  n1 <- length(y1); n2 <- length(y2)
  yb1 <- mean(y1); yb2 <- mean(y2)
  s1 <- var(y1); s2 <- var(y2)
  s <- ((n1 - 1)* s1 + (n2 - 1)*s2)/ (n1 + n2 - 2)
  tst <- (yb1 - yb2)/sqrt(s*(1/n1 + 1/n2))
}

x <- c(0.02, 0.02, 0.06, 0.06, 0.11, 0.11, 0.22, 0.22, 0.56, 0.56,
       1.10, 1.10)
y <- c(76, 47, 97, 107, 123, 139, 159, 152, 191, 201, 207, 200)
fn <- function(p) sum((y - (p[1] * x)/(p[2] + x))^2)
plot(x,y)
xfit <- seq(.02, 1.1, .05)
yfit <- 200 * xfit/(0.1 + xfit)
lines(spline(xfit, yfit))
out <- nlm(fn, p = c(200, 0.1), hessian = T)
sqrt(diag(2 * out$minimum/length(y) - 2) * solve(out$hessian))

plot(x,y)
xfit <- seq(.02, 1.1, .05)
yfit <- 212.68384222 * xfit/(0.06412146 + xfit)
lines(spline(xfit, yfit))
df <- data.frame(x = x, y = y)
fit <- nls(y ~ SSmicmen(x, Vm, K), df)
fit
summary(fit)

kalythos <- data.frame(x = c(20,35,45,55,70), n = rep(50,5),
                       y = c(6,17,26,37,44))
kalythos$Ymat <- cbind(kalythos$y, kalythos$n - kalythos$y)
fmp <- glm(Ymat ~ x, family = binomial(link=probit), data = kalythos)
fml <- glm(Ymat ~ x, family = binomial, data = kalythos)
summary(fmp)
summary(fml)
ld50 <- function(b) -b[1]/b[2]
ldp <- ld50(coef(fmp)); ldl <- ld50(coef(fml)); c(ldp, ldl)
kalythos
fmod <- glm(y ~ A + B + x, family = poisson(link=sqrt),
            data = worm.counts)

nlfit <- glm(y ~ x1 + x2 - 1,
             family = quasi(link=inverse, variance=constant),
             data = biochem)

points(x,y)
lines(x,y)
abline(x,y)
polygon(x,y)
plot(x, y, pch = "+")

mai = c(1, 0.5, 0.5, 0)
mar = c(4, 2, 2, 1)
windows()
library()

rm(x,y)

(poisson<-rpois(150,0.7))
rle(poisson)
max(rle(poisson)[[1]])
which(rle(poisson)[[1]] == 1)
rle(poisson)
rle(poisson)[[2]][55]
run.and.value <- function(x){
  a <- max(rle(poisson)[[1]])
  b <- rle(poisson)[2][which(rle(poisson)[[1]] == a)]
  cat("length = ", a, "value = ", b, "\n")
}
run.and.value(poisson)
length(rle(poisson)[[2]])

n1 <- 25
n2 <- 30
y <- c(rep(1, n1), rep(0, n2))
len <- numeric(10000)
for(i in 1: 10000) len[i] <- length(rle(sample(y))[2])
len
quantile(len, c(0.025, 0.975))

nbnumbers <- rnbinom(1000, size = 1, mu = 1.2)
nbtable <- table(nbnumbers)
nbtable
qqnorm(nbtable)
qqplot(nbtable, seq(0, 20, 1))
qqplot(seq(0, 20, 1), nbnumbers)

setA <- c("a", "b", "c", "d", "e")
setB <- c("d", "e", "f", "g")
union(setA, setB)
intersect(setA, setB)
setdiff(setA, setB)
setdiff(setB, setA)
setA %in% setB
setB %in% setA
setA [setA %in% setB]
intersect(setA, setB)

text <- c("arm","leg","head", "foot","hand", "hindleg", "elbow")
gsub("h","H",text)
sub("o", "O", text)
gsub("o", "O", text)
gsub("^.", "O", text)
grep("o", text)
text[grep("o", text)]
charmatch("mo", c("mean", "median", "mode"))
stock <- c('car', 'van')
requests <- c('truck', 'suv', 'van', 'sport', 'car', 'waggon', 'car')
which(requests %in% stock)
grep("h{1}", text, value = T)
grep("o{2}", text, value = T)

as.numeric(factor(c("a", "b", "c")))
as.numeric(c("a", "4", "c"))

geometric <- function(x){
  if(!is.numeric(x)) stop("Input must be numeric")
  if(min(x) <= 0) stop("Input must be greater than zero")
  exp(mean(log(x)))
}

geometric(c("a", "b", "c"))
geometric(c(2, 3, 0, 4))
geometric(c(10, 1000, 10, 1, 1))

Sys.time()
substr(as.character(Sys.time()), 1, 10)
substr(as.character(Sys.time()), 12, 19)
class(Sys.time())
unclass(Sys.time())
date()
class(date())
date <- as.POSIXlt(Sys.time())
date
date$wday
date$yday
unlist(unclass(date))
unclass(date)
unlist(unclass(date))

y2 <- as.POSIXlt("2003-10-22")
y1 <- as.POSIXlt("2005-10-22")
y2
y1
y1 - y2
y2 - y1

y3 <- as.POSIXlt("2005-10-22 09:30:59")
y4 <- as.POSIXlt("2005-10-22 12:45:06")
y4 - y3
y3 - y4

as.numeric(difftime("2005-10-21", "2003-8-15"))

require(party)
str(iris)
iris_ctree <- ctree(Species ~ Sepal.Length 
                    + Sepal.Width + Petal.Length 
                    + Petal.Width, data = iris)
print(iris_ctree)
plot(iris_ctree)

cl <- kmeans(iris[, 1:4], 3)
table(cl$cluster, iris[, 5])
m <- naiveBayes(iris[,1:4], iris[, 5])
table(predict(m, iris[, 1:4]), iris[, 5])

data(Titanic)
mdl <- naiveBayes(Survived ~., data = Titanic)
mdl
Titanic

p <- predict(mdl, as.data.frame(Titanic)[, 1:3])
table(p, as.data.frame(Titanic)[, 4])

require(kknn)
data(iris)
m <- dim(iris)[1]
m
val <- sample(1:m, size = round(m/3), replace = F, prob = rep(1/m, m))
iris.learn <- iris[-val,]
iris.valid <- iris[val,]
iris.kknn <- kknn(Species~., iris.learn, 
                  iris.valid, distance = 1, 
                  kernel = "triangular")
summary(iris.kknn)
fit <- fitted(iris.kknn)
fit
table(iris.valid$Species, iris.kknn$fit)
pcol <- as.character(as.numeric(iris.valid$Species))
pairs(iris.valid[1:4], pch = pcol, col = 
        c("green3", "red"))[
          (iris.valid$Species != fit) + 1]

require(kknn)
data(ionosphere)
ionosphere.learn <- ionosphere[1:200,]
ionosphere.valid <- ionosphere[-c(1:200),]
fit.kknn <- kknn(class~., ionosphere.learn, ionosphere.valid)
table(ionosphere.valid$class, fit.kknn$fit)
fit.train1 <- 
  train.kknn(class~., ionosphere.learn, 
             kmax = 15, kernel = c("triangular",
     "rectangular", "epanechnikov", "optimal"), 
     distance = 1)
table(predict(fit.train1, ionosphere.valid), 
      ionosphere.valid$class)

fit.train2 <- 
  train.kknn(class~., ionosphere.learn, 
             kmax = 15, kernel = c("triangular",
                                   "rectangular", "epanechnikov", "optimal"), 
             distance = 2)
table(predict(fit.train2, ionosphere.valid), 
      ionosphere.valid$class)


source("http://www.r-statistics.com/wp-content/uploads/2012/01/source_https.r.txt") # source code from github

require(RCurl)
require(colorspace)
source_https("https://raw.github.com/talgalili/R-code-snippets/master/clustergram.r")

data(iris)
set.seed(250)
Data <- scale(iris[, -5])
clustergram(Data, k.range = 2:8, line.width = 0.004)



source("http://www.r-statistics.com/wp-content/uploads/2012/01/source_https.r.txt") # Making sure we can source code from github
source_https("https://raw.github.com/talgalili/R-code-snippets/master/clustergram.r")

set.seed(250)
Data <- rbind(
  cbind(rnorm(100,0, sd = 0.3),rnorm(100,0, sd = 0.3),rnorm(100,0, sd = 0.3)),
  cbind(rnorm(100,1, sd = 0.3),rnorm(100,1, sd = 0.3),rnorm(100,1, sd = 0.3)),
  cbind(rnorm(100,2, sd = 0.3),rnorm(100,2, sd = 0.3),rnorm(100,2, sd = 0.3))
)				
clustergram(Data, k.range = 2:5 , line.width = .004, add.center.points = T)

set.seed(500)
Data2 <- scale(iris[,-5])
par(cex.lab = 1.2, cex.main = .7)
par(mfrow = c(3,2))
for(i in 1:6) clustergram(Data2, k.range = 2:8 , line.width = .004, add.center.points = T) 

pairs(~ Fertility + Education + Catholic, data = swiss, subset = Education < 20, main = "Swiss data, Education < 20")
swiss


# Simple Scatterplot
attach(mtcars)
plot(wt, mpg, main="Scatterplot Example", 
     xlab="Car Weight ", ylab="Miles Per Gallon ", pch=19)
# Add fit lines
abline(lm(mpg~wt), col="red") # regression line (y~x) 
lines(lowess(wt,mpg), col="blue") # lowess line (x,y)
mtcars

# Enhanced Scatterplot of MPG vs. Weight 
# by Number of Car Cylinders 
library(car) 
scatterplot(mpg ~ wt | cyl, data=mtcars, 
            xlab="Weight of Car", ylab="Miles Per Gallon", 
            main="Enhanced Scatter Plot", 
            labels=row.names(mtcars))

# Basic Scatterplot Matrix
pairs(~mpg+disp+drat+wt,data=mtcars, 
      main="Simple Scatterplot Matrix")

# Scatterplot Matrices from the lattice Package 
library(lattice)
splom(mtcars[c(1,3,5,6)], groups=cyl, data=mtcars,
      panel=panel.superpose, 
      key=list(title="Three Cylinder Options",
               columns=3,
               points=list(pch=super.sym$pch[1:3],
                           col=super.sym$col[1:3]),
               text=list(c("4 Cylinder","6 Cylinder","8 Cylinder"))))

require(party)
swiss_ctree <- ctree(Fertility ~ Agriculture + Examination + Education + Catholic +Infant.Mortality, data = swiss)
plot(swiss_ctree)
swiss_ctree
swiss

dswiss <- dist(as.matrix(swiss))
dswiss
hs <- hclust(dswiss)
hs
plot(hs)
splom(swiss)

require(lattice)
require(ggplot2)
pairs(iris[1:4], pch = 21)
splom(iris[1:4])
plotmatrix(iris[1:4])

require(Deducer)
ggcorplot(
  data = iris[1:4],
  var_text_size = 5,
  cor_text_limits = c(5,10))

str(iris)

pairs(iris[1:4], main = "Anderson's Iris Data -- 3 species", pch = 21, bg = c("red", "green3", "blue")[unclass(iris$Species)]) 

scatterplotMatrix(iris)
require(lattice)
splom(iris)

require(lattice)
super.sym <- trellis.par.get("superpose.symbol")
splom(~iris[1:4], groups = Species, data = iris,
      panel = panel.superpose,
      key = list(title = "Three Varieties of Iris",
                 columns = 3, 
                 points = list(pch = super.sym$pch[1:3],
                               col = super.sym$col[1:3]),
                 text = list(c("Setosa", "Versicolor", "Virginica"))))
splom(~iris[1:3]|Species, data = iris, 
      layout=c(2,2), pscales = 0,
      varnames = c("Sepal\nLength", "Sepal\nWidth", "Petal\nLength"),
      page = function(...) {
        ltext(x = seq(.6, .8, length.out = 4), 
              y = seq(.9, .6, length.out = 4), 
              labels = c("Three", "Varieties", "of", "Iris"),
              cex = 2)
      })
parallelplot(~iris[1:4] | Species, iris) 
parallelplot(~iris[1:4], iris, groups = Species,
             horizontal.axis = FALSE, scales = list(x = list(rot = 90)))


require(e1071)
data(Titanic)
mdl <- naiveBayes(Survived ~., data = Titanic)
mdl

require(mlbench)
data(HouseVotes84)
model <- naiveBayes(Class ~ ., data = HouseVotes84)
predict(model, HouseVotes84[1:10, -1])
predict(model, HouseVotes84[1:10, -1], type = "raw")

pred <- predict(model, HouseVotes84[, -1])
table(pred, HouseVotes84$Class)
HouseVotes84

require(party)
ct <- ctree(Class ~., data = HouseVotes84)
predict2 <- predict(ct, HouseVotes84[, -1])
table(predict2, HouseVotes84$Class)


data(HairEyeColor)
mosaicplot(HairEyeColor)
margin.table(HairEyeColor, 3)
HairEyeColor

margin.table(HairEyeColor, c(1,3))

set.seed(500)
Data2 <- scale(iris[, -5])
par(cex.lab = 1.2, cex.main = .7)
par(mfrow = c(3,2))
for(i in 1:6) clustergram(Data2, k.range = 2:8, 
                          line.width = .004, 
                          add.center.points = T)

set.seed(250)
par(mfrow = c(2,3))
swiss.x <- scale(as.matrix(swiss[, -1]))
set.seed(1)
for(i in 1:6) clustergram(swiss.x, k.range = 2:6, 
                          line.width = 0.01)
dswiss <- dist(as.matrix(swiss))
hs <- hclust(dswiss)
plot(hs)

require(party)
swiss_ctree <- ctree(Fertility ~ Agriculture + Education + Catholic, data = swiss)
plot(swiss_ctree)

pairs(iris[1:4], main = "Anderson's Iris Data -- 3 species", pch = 21, bg = c("red", "green3", "blue")[unclass(iris$Species)]) 

require(lattice)
super.sym <- trellis.par.get("superpose.symbol")
splom(~iris[1:4], groups = Species, data = iris,
      panel = panel.superpose,
      key = list(title = "Three Varieties of Iris",
                 columns = 3, 
                 points = list(pch = super.sym$pch[1:3],
                               col = super.sym$col[1:3]),
                 text = list(c("Setosa", "Versicolor", "Virginica"))))
splom(~iris[1:3]|Species, data = iris, 
      layout=c(2,2), pscales = 0,
      varnames = c("Sepal\nLength", "Sepal\nWidth", "Petal\nLength"),
      page = function(...) {
        ltext(x = seq(.6, .8, length.out = 4), 
              y = seq(.9, .6, length.out = 4), 
              labels = c("Three", "Varieties", "of", "Iris"),
              cex = 2)
      })

parallelplot(~iris[1:4]|Species, iris)
parallelplot(~iris[1:4], iris, groups = Species,
             horizontal.axis = FALSE, scales = list(x = list(rot = 90)))

plot(iris_ctree)
iris_ctree <- ctree(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data=iris)
print(iris_ctree)
plot(iris_ctree, type = "simple")


require(rpart)
fitK <- rpart(Kyphosis ~ Age + Number + Start, method="class", data=kyphosis)
kyphosis
#pred1 <- predict(fitK, kyphosis[, -1])
#pred1
#pred1 <- cbind(pred1, kyphosis$Kyphosis)
#kyphosis$Kyphosis


printcp(fitK) # display the results
plotcp(fitK) # visualize cross-validation results
summary(fitK) # detailed summary of splits
# plot tree
plot(fitK, uniform=TRUE, main="Classification Tree for Kyphosis")
text(fitK, use.n=TRUE, all=TRUE, cex=.8)
# create attractive postscript plot of tree
post(fitK, file = "kyphosistree.ps", title = "Classification Tree for Kyphosis") # might need to convert to PDF (distill)
     
pfitK<- prune(fitK, cp=   fitK$cptable[which.min(fitK$cptable[,"xerror"]),"CP"])
plot(pfitK, uniform=TRUE, main="Pruned Classification Tree for Kyphosis")
text(pfitK, use.n=TRUE, all=TRUE, cex=.8)
post(pfitK, file = "ptree.ps", title = "Pruned Classification Tree for Kyphosis")

fitK <- ctree(Kyphosis ~ Age + Number + Start, data=kyphosis)
plot(fitK, main="Conditional Inference Tree for Kyphosis")

plot(fitK, main="Conditional Inference Tree for Kyphosis",type="simple")

require(randomForest)
fitKF <- randomForest(Kyphosis ~ Age + Number + Start,   data=kyphosis)
print(fitKF)   # view results
importance(fitKF)
library(rpart)
fitM <- rpart(Mileage ~ Price + Country 
              + Reliability + Type, method = "anova", 
              data = cu.summary)
printcp(fitM)

par(mfrow=c(1,2)) 
rsq.rpart(fitM) # visualize cross-validation results

# plot tree
plot(fitM, uniform=TRUE, main="Regression Tree for Mileage ")
text(fitM, use.n=TRUE, all=TRUE, cex=.8)
# prune the tree
pfitM<- prune(fitM, cp=0.01160389) # from cptable
# plot the pruned tree
plot(pfitM, uniform=TRUE, main="Pruned Regression Tree for Mileage")
text(pfitM, use.n=TRUE, all=TRUE, cex=.8)
post(pfitM, file = "ptree2.ps", title = "Pruned Regression Tree for Mileage")

require(party)
# Conditional Inference Tree for Mileage
fit2M <- ctree(Mileage~Price + Country + Reliability + Type, data=na.omit(cu.summary))

require(lattice)
splom(swiss)

install.packages("car")
require(car)
scatterplotMatrix(iris)


library(rpart)
fitM <- rpart(Mileage ~ Price + Country + Reliability + Type, 
              method = "anova", data = cu.summary)
printcp(fitM)
plotcp(fitM)
summary(fitM)
par(mfrow = c(1,2))
rsq.rpart(fitM)

fit2M <- ctree(Mileage ~ Price + Country + Reliability 
               + Type, data = na.omit(cu.summary))

library(e1071)
library(rpart)
data(Ozone, package="mlbench")
## split data into a train and test set
index <- 1:nrow(Ozone)
testindex <- sample(index, trunc(length(index)/3))
testset <- na.omit(Ozone[testindex,-3])
trainset <- na.omit(Ozone[-testindex,-3])
svm.model <- svm(V4 ~ ., data = trainset, cost = 1000, gamma = 0.0001)
svm.pred <- predict(svm.model, testset[,-3])
crossprod(svm.pred - testset[,3]) / length(testindex)

library(e1071)
library(rpart)
data(Glass, package="mlbench")
index <- 1:nrow(Glass)
testindex <- sample(index, trunc(length(index)/3))
testset <- Glass[testindex,]
trainset <- Glass[-testindex,]
svm.model <- svm(Type ~ ., data = trainset, cost = 100, gamma = 1)
svm.pred <- predict(svm.model, testset[,-10])
rpart.model <- rpart(Type ~ ., data = trainset)
rpart.pred <- predict(rpart.model, testset[,-10], type = "class")
                      
table(pred = svm.pred, true = testset[,10])




















install.packages("shiny")
library(shiny)
runExample("01_hello")

getwd()
setwd("/Users/huiyuma/Desktop")
library(shiny)
runApp("Hello Shiny", display.mode = "showcase")

system.file("examples", package = "shiny")

runExample("01_hello") # a histogram
runExample("02_text") # tables and data frames
runExample("03_reactivity") # a reactive expression
runExample("04_mpg") # global variables
runExample("05_sliders") # slider bars
runExample("06_tabsets") # tabbed panels
runExample("07_widgets") # help text and submit buttons
runExample("08_html") # shiny app built from HTML
runExample("09_upload") # file upload wizard
runExample("10_download") # file download wizard
runExample("11_timer") # an automated timer


pairs(~ Fertility + Education + Catholic, data = swiss, subset = Education < 20, main = "Swiss data, Education < 20")

n <- 150 # number of data points
p <- 2 # dimension
sigma <- 1 # variance of the distribution
meanpos <- 0 # centre of the distribution of positive examples
meanneg <- 3 # centre of the distribution of negative examples
npos <- round(n/2) # number of positive examples
nneg <- n-npos # number of negative examples
# Generate the positive and negative examples
xpos <- matrix(rnorm(npos*p,mean=meanpos,sd=sigma),npos,p)
xneg <- matrix(rnorm(nneg*p,mean=meanneg,sd=sigma),npos,p)
x <- rbind(xpos,xneg)
# Generate the labels
y <- matrix(c(rep(1,npos),rep(-1,nneg)))
y
# Visualize the data
plot(x,col=ifelse(y>0,1,2))
legend("bottomleft",c('Positive','Negative'),col=seq(2),pch=1,text.col=seq(2))

ntrain <- round(n*0.8) # number of training examples
tindex <- sample(n,ntrain) # indices of training samples
xtrain <- x[tindex,]
xtest <- x[-tindex,]
ytrain <- y[tindex]
ytest <- y[-tindex]
istrain=rep(0,n)
istrain[tindex]=1
# Visualize
plot(x,col=ifelse(y>0,1,2),pch=ifelse(istrain==1,1,2))
legend("topleft",c('Positive Train','Positive Test','Negative Train','Negative Test'),col=c(1,1,2,2), pch=c(1,2,1,2), text.col=c(1,1,2,2))

require(kernlab)
svp <- ksvm(xtrain,ytrain,type="C-svc", kernel='vanilladot', C=100,scaled=c())
# General summary
svp
# Attributes that you can access
attributes(svp) # did you look?
# For example, the support vectors
alpha(svp)
alphaindex(svp)
b(svp)  	# remember b?
# Use the built-in function to pretty-plot the classifier
plot(svp,data=xtrain)


set.seed(123)
sim.xy <- function(n, mean, sd) 
  cbind(rnorm(n, mean[1], sd[1]),rnorm(n, mean[2],sd[2]))
# generate three clouds of points, well separated in the 2D plane
xy <- rbind(sim.xy(100, c(0,0), c(.2,.2)),
            sim.xy(100, c(2.5,0), c(.4,.2)),
            sim.xy(100, c(1.25,.5), c(.3,.2)))
xy
xy[1,] <- c(0,2)     # convert 1st obs. to an outlying value
#
km3 <- kmeans(xy, 3) # ask for three clusters
km3
plot(xy, col=km3$cluster)
cex=2.0
points(km3$centers, pch=3)
#
km4 <- kmeans(xy, 4) # ask for four clusters
cex=1.0
plot(xy, col=km4$cluster)
cex=2.0
points(km4$centers, pch=3)


library(e1071)
library(rpart)
data(Ozone, package="mlbench") # beware of “()”
## split data into a train and test set
  index <- 1:nrow(Ozone)
testindex <- sample(index, trunc(length(index)/3))
testset <- na.omit(Ozone[testindex,-3])
trainset <- na.omit(Ozone[-testindex,-3])
svm.model <- svm(V4 ~ ., data = trainset, cost = 1000, gamma = 0.0001)
svm.pred <- predict(svm.model, testset[,-3])
crossprod(svm.pred - testset[,3]) / length(testindex)

library(kernlab)
data(promotergene)
## create test and training set
ind <- sample(1:dim(promotergene)[1],20)
genetrain <- promotergene[-ind, ]
genetest <- promotergene[ind, ]
## train a support vector machine
gene <-  ksvm(Class~.,data=genetrain,kernel="rbfdot",           
              kpar=list(sigma=0.015),C=70,cross=4,prob.model=TRUE)

## predict gene type probabilities on the test set
genetype <- predict(gene,genetest,type="probabilities")
genetype2 <- predict(gene, genetest)
genetype
genetype2

genetest$Class
genetest[,1]
table(pred = genetype2, true = genetest[,1])
table(pred = genetype2, true = genetest$Class)




library(e1071)
library(rpart)
data(Glass, package="mlbench")
index <- 1:nrow(Glass)
testindex <- sample(index, trunc(length(index)/3))
testset <- Glass[testindex,]
trainset <- Glass[-testindex,]
svm.model <- svm(Type ~ ., data = trainset, cost = 100, gamma = 1)
svm.pred <- predict(svm.model, testset[,-10])

table(pred = svm.pred, true = testset[,10])

rpart.model <- rpart(Type ~ ., data = trainset)
rpart.pred <- predict(rpart.model, testset[,-10], type = "class")
                        

printcp(rpart.model)
plotcp(rpart.model)
rsq.rpart(rpart.model)
print(rpart.model)

plot(rpart.model, compress = T)
text(rpart.model, use.n = T)

plot(object, uniform=FALSE, branch=1, compress=FALSE, nspace, margin=0, minbranch=.3, args)
summary(rpart.model)

names(Glass)
head(Glass)
rpart.pred
plot(rpart.pred)

dswiss <- dist(as.matrix(swiss))
hs <- hclust(dswiss)
plot(hs)
require(party)
swiss_ctree <- ctree(Fertility ~ Agriculture + Education 
                     + Catholic, data = swiss)
plot(swiss_ctree)
plot(iris_ctree)
iris_ctree <- ctree(Species ~ Sepal.Length + Sepal.Width 
                    + Petal.Length + Petal.Width, data = iris)
plot(iris_ctree, type = "simple")

fitK <- rpart(Kyphosis ~ Age + Number + Start, 
              method="class", data=kyphosis)
printcp(fitK) # display the results
plotcp(fitK) # visualize cross-validation results
summary(fitK) # detailed summary of splits
# plot tree
plot(fitK, uniform=TRUE, main="Classification Tree for Kyphosis")
text(fitK, use.n=TRUE, all=TRUE, cex=.8)
# create attractive postscript plot of tree
post(fitK, file = "kyphosistree.ps", 
     title = "Classification Tree for Kyphosis") # might need to convert to PDF (distill)

pfitK<- prune(fitK, 
              cp=  fitK$cptable[which.min(fitK$cptable[,"xerror"]),"CP"])
pfitK
plot(pfitK, uniform=TRUE, 
     main="Pruned Classification Tree for Kyphosis")
text(pfitK, use.n=TRUE, all=TRUE, cex=.8)
post(pfitK, file = "ptree.ps", 
     title = "Pruned Classification Tree for Kyphosis")

fitK <- ctree(Kyphosis ~ Age + Number + Start, data=kyphosis)
plot(fitK, main="Conditional Inference Tree for Kyphosis")
plot(fitK, main="Conditional Inference Tree for Kyphosis",type="simple")


require(randomForest)
fitKF <- randomForest(Kyphosis ~ Age + Number + Start,   data=kyphosis)
print(fitKF)   # view results

# Regression Tree Example
library(rpart)
# build the  tree
fitM <- rpart(Mileage~Price + Country + Reliability + Type, method="anova", data=cu.summary)
printcp(fitM) # display the results
plotcp(fitM) # visualize cross-validation results
summary(fitM) # detailed summary of splits

par(mfrow = c(1,2))
rsq.rpart(fitM)
par(mfrow = c(1,1))

# plot tree
plot(fitM, uniform=TRUE, main="Regression Tree for Mileage ")
text(fitM, use.n=TRUE, all=TRUE, cex=.8)
# prune the tree
pfitM<- prune(fitM, cp=0.01160389) # from cptable
# plot the pruned tree
plot(pfitM, uniform=TRUE, main="Pruned Regression Tree for Mileage")
text(pfitM, use.n=TRUE, all=TRUE, cex=.8)

# Conditional Inference Tree for Mileage
fit2M <- ctree(Mileage~Price + Country + Reliability + Type, data=na.omit(cu.summary))

n <- 150 # number of data points
p <- 2 # dimension
sigma <- 1 # variance of the distribution
meanpos <- 0 # centre of the distribution of positive examples
meanneg <- 3 # centre of the distribution of negative examples
npos <- round(n/2) # number of positive examples
nneg <- n-npos # number of negative examples
# Generate the positive and negative examples
xpos <- matrix(rnorm(npos*p,mean=meanpos,sd=sigma),npos,p)
xneg <- matrix(rnorm(nneg*p,mean=meanneg,sd=sigma),npos,p)
x <- rbind(xpos,xneg)
# Generate the labels
y <- matrix(c(rep(1,npos),rep(-1,nneg)))

ntrain <- round(n*0.8) # number of training examples
tindex <- sample(n,ntrain) # indices of training samples
xtrain <- x[tindex,]
xtest <- x[-tindex,]
ytrain <- y[tindex]
ytest <- y[-tindex]
istrain=rep(0,n)
istrain[tindex]=1

svp <- ksvm(xtrain,ytrain,type="C-svc", kernel='vanilladot', C=100,scaled=c())
alpha(svp)
svp
alphaindex(svp)
b(svp)
plot(svp,data=xtrain)

library(e1071)
library(rpart)
data(Ozone, package="mlbench") # beware of “()”
## split data into a train and test set
  index <- 1:nrow(Ozone)
testindex <- sample(index, trunc(length(index)/3))
testset <- na.omit(Ozone[testindex,-3])
trainset <- na.omit(Ozone[-testindex,-3])
svm.model <- svm(V4 ~ ., data = trainset, cost = 1000, gamma = 0.0001)
svm.pred <- predict(svm.model, testset[,-3])
crossprod(svm.pred - testset[,3]) / length(testindex)


head(coleman)


data("bodyfat")
## regular linear model using three variables
lm1 <- lm(DEXfat ~ hipcirc + kneebreadth + anthro3a, data = bodyfat)

## Estimate same model by glmboost
glm1 <- glmboost(DEXfat ~ hipcirc + kneebreadth + anthro3a, data = bodyfat)

# We consider all available variables as potential predictors.
glm2 <- glmboost(DEXfat ~ ., data = bodyfat)

# or one could essentially call:
preds <- names(bodyfat[, names(bodyfat) != "DEXfat"]) ## names of predictors
fm <- as.formula(paste("DEXfat ~", paste(preds, collapse = "+"))) ## build formula

try(data(package="spatstat"));Sys.sleep(3) 
try(data(package="spdep"));Sys.sleep(3) 
try(data(package="MASS"))

attach(OrchardSprays) 
decrease


ms<-sapply(2:51,function(i) strsplit(mo[i],"\t")) 
texts<-unlist(lapply(1:50,function(i) ms[[i]][c(1,4)])) 
sta<-texts[seq(1,99,2)]
reg<- texts[seq(2,100,2)]





y <- rpois(1500, 1.5)
table(y)
as.data.frame(table(y))
short.frame<-as.data.frame(table(y))
long<-as.data.frame(lapply(short.frame, function(x) rep(x, short.frame$Freq))) 
long[,1]













