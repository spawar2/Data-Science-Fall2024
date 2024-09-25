# Author: Pawar, Date: September 20, 2024, Purpose: To perform ANOVA test

# Hypothesis: Treatment A is most effective on poison type 1. Expecting significant differences in treatment and poison. This is my alternate hypothesis.
# Null hypothesis: There is not significant differences in treatment type A and other treatment types.

# Where can your input data be stored?
# Local drive (external drive/USB, hardrive, server, cluster); Cloud storage (amazon cloud, google cloud, Apple icloud); HTML page (GitHub public repository).

# Import the dummy data from GitHub public repository in our R program

library(dplyr)

PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"

# Reading the CSV file in R
df <- read.csv(PATH)

# Applying ANOVA test to columns time (dependent) and poison (independent)
anova_one_way <- aov(time~poison, data = df) summary(anova_one_way)


            Df Sum Sq Mean Sq F value   Pr(>F)
poison       1 0.9316  0.9316   20.67 3.96e-05
Residuals   46 2.0735  0.0451                 
               
poison      ***
Residuals      
---
Signif. codes:  
0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1




