# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

*Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?*

In our summary seen below, three variables provided a non-random amount of variance to the MPG values: vehicle length, vehicle weight, and ground clearance. Both vehicle length and ground clearance have a near-zero p-value, meaning they each have a statistically significant impact on MPG. Vehicle weight has a p-value pf .05, equal to our assumed significance level.

![Figure 1](Resources/pvals.png)

*Is the slope of the linear model considered to be zero? Why or why not?*

Linear regression testing tests the null hypothesis that the slope of the linear model is equal to zero. When a p-value is lower than the level of significance, we are provided with enough evidence to reject this null hypothesis. Because three of our five coefficient values are less than or equal to .05, the slope cannot be equal to zero. 

*Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?*

At first glance, we are provided with some exceptional data that can provide insight to influences on miles per gallon. However, there are other factors that influence MPG that are not provided in this dataset. We are missing factors such as highway versus city driving, and fuel type. Are these vehicles running of fossil fuels? Are the electric or possibly hybrid vehicles?  This is a great start, but this model does not provide enough data to effectively and thoroughly predict the MPG of MechaCar prototypes.
