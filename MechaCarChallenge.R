############################################################################
## DELIVERABLE 1
############################################################################

# 3. Use the library() function to load the dplyr package.
library(dplyr)

# 4. Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar_csv <- read.csv('./Resources/MechaCar_mpg.csv')

# 5. Perform linear regression using the lm() function. In the lm() function, 
#    pass in all six variables (i.e., columns), and add the dataframe you created 
#   in Step 4 as the data parameter.

# 6. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
#summary()function. In your R console, use the following statement:
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_csv))


############################################################################
## DELIVERABLE 2
############################################################################


#2 In your MechaCarChallenge.RScript, import and read in the Suspension_Coil.csv file as a table.
Suspens_csv <- read.csv('./Resources/Suspension_Coil.csv')

# 3. Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, 
#    and standard deviation of the suspension coil's PSI column.
total_summary <- Suspens_csv %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') 

# 4. Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing 
#    lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column.
lot_summary <- Suspens_csv  %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI),  SD=sd(PSI), .groups = 'keep')   


############################################################################
## DELIVERABLE 3
############################################################################

# 1. Write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the 
#    population mean of 1,500 pounds per square inch.
t.test(Suspens_csv$PSI,mu=1500)

# 2. Write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI 
#    for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
t.test(subset(Suspens_csv,Manufacturing_Lot=='Lot1')$PSI, mu=1500)

t.test(subset(Suspens_csv,Manufacturing_Lot=='Lot2')$PSI, mu=1500)

t.test(subset(Suspens_csv,Manufacturing_Lot=='Lot3')$PSI, mu=1500)




