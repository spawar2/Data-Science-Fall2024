# Author: Pawar, Date: 10/25/2024, Purpose: Calculate the Ttest.

# Create 2 dummy groups called x and y, using function rnorm()
x = rnorm(50)
y = rnorm(100)

# Create a sequence of 100 points between -4.5 and +4.5
pts = seq(-4.5,4.5,length=100)

# Create a density plot for 100 points between -4.5 and +4.5
plot(pts,dt(pts,df=9),col='red',type='l', xlab="Points", ylab="Density")

# X axis label "Points", and Y axis label "Density"

lines(density(x), col='green')
lines(density(y), col='blue')
ttest = t.test(x,y)
ttest


	Welch Two Sample t-test

data:  x and y
t = 1.0336, df = 102.51, p-value = 0.3037
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.1717994  0.5457389
sample estimates:
  mean of x   mean of y 
 0.14164879 -0.04532093 