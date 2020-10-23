# install libraries required

install.packages("tidyverse")
library(tidyverse)

install.packages("jsonlite")
library (jsonlite)

install.packages("pastecs")
library(pastecs)

# load data (check.names = T to fix naming in mpg set)
mpgs <- read.csv(file='MechaCar_mpg.csv', check.names=T, stringsAsFactors = F)
suspension <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)


# multiple regression on MPG dataset, independent variable of mpg based on other variables
reg <- lm( mpg~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance, data = mpgs)

# print coefficients and summary
summary(reg)

# summary of Suspension Coil dataset
summary(suspension$PSI)

# One-sample t-test
t.test(suspension$PSI, mu=1500)
