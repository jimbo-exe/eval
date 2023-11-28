#q1
n <- 100
df <- n - 1
t_samples <- rt(n, df)
hist(t_samples, main="Histogram of t-distribution", xlab="Value")

#q2
n <- 100
df_values <- c(2, 10, 25)
rchisq(n, df_values[1])
rchisq(n, df_values[2])
rchisq(n, df_values[3])

#q3
x <- seq(-6, 6, length.out = 100)

df_values <- c(1, 4, 10, 30)
colors <- c("red", "blue", "green", "purple")

plot(x, dt(x, df_values[4]), type = "l", col = colors[4], 
     main = "Density Function of t-distribution", xlab = "x", ylab = "Density")

for (i in 1:3) {
  lines(x, dt(x, df_values[i]), col = colors[i])
}

legend("topright", legend = paste("df =", df_values), col = colors, lty = 1)


#q4(i)
qf(0.95,df1=10,df2=20)
#q4(ii)
x=1.5
v1=10
v2=20
s1 <- pf(x,df1=v1,df2=v2)
s2 <- pf(x,df1=v1,df2=v2,lower.tail=FALSE)
area <- s1+s2
print(area)
#q4(iii)
v1=10
v2=20
q_range <- c(0.25,0.5,0.75,0.999)
for(i in 1:4) {
  print(qf(q_range[i],df1=10,df2=20))
}
#q4(iv)
v1=10
v2=20
random_values <- rf(1000, df1 = v1, df2 = v2)
hist(random_values, main = "Histogram of Random F-distribution Values", xlab = "Value", ylab = "Frequency", col = "purple")
