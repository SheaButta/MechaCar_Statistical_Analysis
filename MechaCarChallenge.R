# 3. Use the library() function to load the dplyr package.
library(dplyr)

# 4. Import and read in the MechaCar_mpg.csv file as a dataframe.
MechaCar_csv <- read.csv('./Resources/MechaCar_mpg.csv')

# 5. Perform linear regression using the lm() function. In the lm() function, 
#    pass in all six variables (i.e., columns), and add the dataframe you created 
#   in Step 4 as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_csv)

# 6. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
#summary()function. In your R console, use the following statement:
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_csv))

# 7. Save your MechaCarChallenge.RScript file to your GitHub repository.  
# Pushed MechaCarChallenge.RScript to GitHub repository using GitBash
