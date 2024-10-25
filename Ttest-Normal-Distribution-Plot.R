# Author: Pawar, Date: 10/25/2024, Purpose: Calculate the Ttest.

# Create 2 dummy groups called x and y, using function rnorm()
x = rnorm(50)
y = rnorm(100)

# Create a sequence of 100 points between -4.5 and +4.5
pts = seq(-4.5,4.5,length=100)

# Create a density plot for 100 points between -4.5 and +4.5
plot(pts,dt(pts,df=9),col='red',type='l')

# X axis label "Points", and Y axis label "Density"


lines(density(x), col='green')
lines(density(y), col='blue')
ttest = t.test(x,y)
ttest
