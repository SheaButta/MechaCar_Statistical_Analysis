# MechaCar_Statistical_Analysis

## Overview
This project consists of assisting a new client (AutoRUs) with performing data analysis on their new prototype, MechaCar.  MechaCar is suffering from production troubles that are blocking manufacturing progress.  AutoRUs has asked me to assist their internal data analyst with reviewing their production data for insights that may help their manufacturing team.

### Deliverables:
- Deliverable 1: Linear Regression to Predict MPG
- Deliverable 2: Summary Statistics on Suspension Coils
- Deliverable 3: T-Test on Suspension Coils
- Deliverable 4: Design a Study Comparing the MechaCar to the Competition


## Resources
RStudio

Datasets:
- [MechaCar](https://github.com/SheaButta/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar_mpg.csv)
- [Suspension_Coil](https://github.com/SheaButta/MechaCar_Statistical_Analysis/blob/main/Resources/Suspension_Coil.csv)


## Linear Regression to Predict MPG
The formal definition of ***linear regression*** is a statistical model that is used to predict a continuous dependent variable based on one or more independent variables fitted to the equation of a line.  The job of a linear regression analysis is to calculate the slope and y intercept values (also known as coefficients) that minimize the overall distance between each data point from the linear model. There are two basic types of linear regression; 1) Simple linear regression builds a linear regression model with one independent variable and 2) Multiple linear regression builds a linear regression model with two or more independent variables.  In this statistical analysis, we want to figure out how to predict one variable given other variables. The variables related to this analysis are mpg (dependent variable) and the independent variables (vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, AWD).

The following questions need to be answered related to this analysis;

  - Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  
    According to the below output, it appears the **vehicle_length** and **ground_clearance** provide a non-random amount to the mpg.  Simply put, the vehicle_length and       ground_clearance havea a significant impact on the mpg with respect to the MechaCar prototypes.


  - Is the slope of the linear model considered to be zero? Why or why not?
    
    The slope of the linear model is **not** considered to be zero.  Since the p-value (5.35e-11) is above the assumed significance level of 0.05%, the slope is not considered     to be zero; moreover, this includes evidence to **reject our null hypothesis**.

  - Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?  
  
    To determine the answer, look at the highlighted data below.  The r-squared value is    "**0.7149**" and means that roughly 71% of mpg predictions is explained/determined    using this linear model.


    ![](https://github.com/SheaButta/MechaCar_Statistical_Analysis/blob/main/Images/LinearRegression.PNG)
  

## Summary Statistics on Suspension Coils

The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. 
Using my knowledge of R, I will create summary statistics tables to show the following;

	- The suspension coil’s PSI continuous variable across all manufacturing lots

	- The following PSI metrics for each lot: mean, median, variance, and standard deviation.


The first data visualization below focuses on the variance for all manufacturing lots.  The design specifications for the MechaCar suspension coils dictates that the variance of the suspension coils must not exceed 100 pounds per square inch.  The variance across all 
manufacturing lots meets the design specification as the **variance (62.29356)** is under 100 pounds per squar inch.  The second data visualization illustrates the mean, median, variance and standard deviation for PSI metric for individual lots.
The variances for Lot1 (0.9795918) and Lot2 indicate these lots meet the design specifications as their variance is under 100 pounds PSI.  Lot3 does not appear to meet the design specifications for the MechaCar suspension coils.

	
   ![](https://github.com/SheaButta/MechaCar_Statistical_Analysis/blob/main/Images/total_summary_df.PNG)


   ![](https://github.com/SheaButta/MechaCar_Statistical_Analysis/blob/main/Images/lot_summary_df.PNG)


## T-Tests on Suspension Coils

This analysis requires me to perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.
A one-sample t-test was performed below to determine where there is a statistical difference between the means of a sample dataset and a hypothesized, potential popluastion dataset.  The one-sample t-test will basically test for the below hypotheses;

- **Null Hypothesis**: There is **no statistical difference** between the observed sample mean and its presumed population mean.

- **Alternate Hypothesis**: There is **a statistical difference** between the observed sample mean and its presumed population mean.

The data visualizatoin for the "manufacturing lots" below indicates their is no statisical difference between the manufacturing lots mean and the population mean of 1500 PSI.
This conclusion is confirmed by the p-value (0.06) being above the assumed significance level of 0.05%; moreover, there is **not sufficient evidence to reject the null hypothesis**.


   ![](https://github.com/SheaButta/MechaCar_Statistical_Analysis/blob/main/Images/t_test_AllLots.PNG)


The data visualizatoin for the "individual lots" below indicates their is no statisical difference between the manufacturing lots mean and the population mean of 1500 PSI.
The data visualization below for **Lot1** indicates the p-value is "**1**" and the sample mean is 1500.  This data clearly shows the p-value is above the assumed significance level of 0.05.  There is **not sufficient evidence to reject the null hypothesis** of a statistical difference.


  ![](https://github.com/SheaButta/MechaCar_Statistical_Analysis/blob/main/Images/t_test_Lot1.PNG)


The data visualization below for **Lot2** indicates the p-value is "**0.6072**" and the sample mean is 1500.2.  This data clearly shows the p-value is above the assumed significance level of 0.05.  There is **not sufficient evidence to reject the null hypothesis** of a statistical difference.


   ![](https://github.com/SheaButta/MechaCar_Statistical_Analysis/blob/main/Images/t_test_Lot2.PNG)


The data visualization below for **Lot3** indicates the p-value is "**0.04**" and a sample mean 1496.14.  This data shows the p-value is **below** the assumed significance level of 0.05.  There is **sufficient evidence to reject the null hypothesis** of a statistical difference.  This may be something for MechaCar to look and this company is operating accordingly.


   ![](https://github.com/SheaButta/MechaCar_Statistical_Analysis/blob/main/Images/t_test_Lot3.PNG)


## Study Design: MechaCar vs Competition

The final analysis includes producing a study design to quantify MechaCar performance compared to their competition. This study design will focus on what influences a consumer to purchase a MechaCar.  There are three (3) variables I would influence a MechaCar consumer which are; mpg, horse power and safety.  To help quantify MechaCar's performance against the competition, the below items will help with the statistical analysis;

- **Metrics to test**: These metrics to test include; mpg, horse power and safety.
- **Null hypothesis**: MechaCar outperforms its' competitors.
- **Statistical Test**: A t_est will be used to help determine how MechaCar performs against its' competition with respect to the above metrics.
- **Data**: A dataset of numerical/continuous data.




