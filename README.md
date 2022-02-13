# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
The formal definition of ***linear regression*** is a statistical model that is used to predict a continuous dependent variable based on one or more independent variables fitted to the equation of a line.  The job of a linear regression analysis is to calculate the slope and y intercept values (also known as coefficients) that minimize the overall distance between each data point from the linear model. There are two basic types of linear regression; 1) Simple linear regression builds a linear regression model with one independent variable and 2) Multiple linear regression builds a linear regression model with two or more independent variables.  In this statistical analysis, we want to figure out how to predict one variable given other variables. The variables related to this analysis are mpg (dependent variable) and the independent variables (vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, AWD).

The following questions need to be answered related to this analysis;

  - Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  
    According to the below output, it appears the **vehicle_length** and **ground_clearance** provide a non-random amount to the mpg.  Simply put, the vehicle_length and       ground_clearance havea a significant impact on the mpg with respect to the MechaCar prototypes.


  - Is the slope of the linear model considered to be zero? Why or why not?
    
    The slope of the linear model is **not** considered to be zero.  Since the p-value (5.35e-11) is less that the assumed significance level of 0.05% the slope is not considered     to be zero; moreover, this includes evidence to **reject our null hypothesis**.

  - Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?  
  
    To determine the answer, look at the highlighted data below.  The r-squared value is    "**0.7149**" and means that roughly 71% of mpg predictions is explained/determined    using this linear model.


    ![](https://github.com/SheaButta/MechaCar_Statistical_Analysis/blob/main/Images/LinearRegression.PNG)
  
