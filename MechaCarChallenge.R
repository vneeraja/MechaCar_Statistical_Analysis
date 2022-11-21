#Use the library() function to load the dplyr package
library(dplyr)

#Import and read in the MechaCar_mpg.csv file as a dataframe.
mecar_table <- read.csv("C:/Users/neera/MechaCar_Statistical_Analysis/MechaCar_mpg.csv")

#Perform linear regression using the lm() function. 
result <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecar_table)

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(result)

#Import and read in the Suspension_Coil.csv file as a table.
Suspension_coil_table <- read.csv("C:/Users/neera/MechaCar_Statistical_Analysis/Suspension_Coil.csv")

#Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- Suspension_coil_table %>% summarize(Mean=mean(PSI),Median=median(PSI),
                                                     Variance=var(PSI),SD=sd(PSI),.groups = "keep")
print(total_summary)

#Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- Suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),
                                                                                   Variance=var(PSI),SD=sd(PSI),.groups = "keep")
print(lot_summary)

#Write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(Suspension_coil_table$PSI, mu=1500)

#Next, applying t.test() on all the individual lots
t.test(subset(Suspension_coil_table, Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(Suspension_coil_table, Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(Suspension_coil_table, Manufacturing_Lot=="Lot3")$PSI, mu=1500)
