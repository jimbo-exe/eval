#exp 5

#q1(a)
punif(45,0,60,lower.tail = FALSE)
#q1(b)
punif(30,0,60,lower.tail=TRUE) - punif(20,0,60,lower.tail=TRUE)

#q2(a)
dexp(3,1/2)
#q2(b)
x <- seq(0,5,0.03)
px <- dexp(x,1/2)
plot(x,px,xlab='x',ylab='y')
#q2(c)
pexp(3,1/2)
#q2(d)
x <- seq(0,5,0.03)
px <- pexp(x,1/2)
plot(x,px,xlab='x',ylab='y')
#q2(e)
m <- 1000
y <- rexp(m,rate=1/2)
plot(density(y),xlab='x',ylab='y')

#q3(a)
alpha <- 2
beta <- 1/3
pgamma(1,shape=alpha,scale=beta,lower.tail=FALSE)
#q3(b)
qgamma(0.7,shape=alpha,scale=beta,lower.tail=FALSE)