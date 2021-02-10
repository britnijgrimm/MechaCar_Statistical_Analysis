#Linear Regression to Predict MPG
library(dplyr) #import dplyr library.

mpg_table <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors =F) #read MechaCar_mpg.csv as a dataframe

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_table) #perform multiple linear regression

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_table)) #generate summary statistics

