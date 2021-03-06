#Linear Regression to Predict MPG
library(dplyr) #import dplyr library.

mpg_table <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors =F) #read MechaCar_mpg.csv as a dataframe

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_table) #perform multiple linear regression

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_table)) #generate summary statistics


#Summary Statistics on Suspension Coils
coils_table <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors =F) #read Suspension_Coil.csv as a table

total_summary <- coils_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #create a dataframe of PSI summary statistics

lot_summary <- coils_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #create a dataframe of PSI summary statistics grouped by lot


#T-Tests on Suspension Coils
t.test(coils_table$PSI, mu=mean(total_summary$Mean)) #perform a t-test to determine if the PSI across all manufacturing lots is statistically different from the population mean

t.test(coils_table$PSI, mu=mean(lot_summary$Mean), subset=(lot_summary$Manufacturing_Lot=='Lot1')) #perform a t-test to determine if the PSI for Lot 1 is statistically different from the population mean
t.test(coils_table$PSI, mu=mean(lot_summary$Mean), subset=(lot_summary$Manufacturing_Lot=='Lot2')) #perform a t-test to determine if the PSI for Lot 2 is statistically different from the population mean
t.test(coils_table$PSI, mu=mean(lot_summary$Mean), subset=(lot_summary$Manufacturing_Lot=='Lot3')) #perform a t-test to determine if the PSI for Lot 3 is statistically different from the population mean
