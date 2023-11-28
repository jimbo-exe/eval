#q1(a)
data = read.csv(file.choose())
#q1(b)
dim(data)
head(data,10)
#q1(c)
mean_thick = mean(data$Wall.Thickness)
hist(data$Wall.Thickness,col='red',main='Histogram for lab',xlab='wall thickness',ylab='frequency')
#q1(d)
abline(v=mean_thick,col='green')

#q2(a)
S10 = c()
n = 9000
for(i in 1:n) {
  S10[i] = mean(sample(data$Wall.Thickness,10,replace=TRUE))
}
hist(S10,col='blue',main='sample size 10',xlab='Wall Thickness')
abline(v=mean(S10),col='green')
#q2(b)
S50 = c()
S500 = c()
S9000 = c()
n=9000
for(i in 1:n) {
  S50[i] = mean(sample(data$Wall.Thickness,50,replace=TRUE))
  S500[i] = mean(sample(data$Wall.Thickness,500,replace=TRUE))
  S9000[i] = mean(sample(data$Wall.Thickness,9000,replace=TRUE))
}
par(mfrow=c(1,4))
hist(S10,col='blue',main='sample size 10',xlab='Wall Thickness')
abline(v=mean(S10),col='green')
hist(S50,col='pink',main='sample size 50',xlab='Wall Thickness')
abline(v=mean(S50),col='blue')
hist(S500,col='yellow',main='sample size 500',xlab='Wall Thickness')
abline(v=mean(S500),col='blue')
hist(S9000,col='violet',main='sample size 9000',xlab='Wall Thickness')
abline(v=mean(S9000),col='blue')

