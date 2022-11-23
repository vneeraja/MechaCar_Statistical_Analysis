# MechaCar_Statistical_Analysis

A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, we’ll help Jeremy and the data analytics team do the following:

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.
* What You're Creating

## Linear Regression to Predict MPG

![image](https://user-images.githubusercontent.com/111020934/202953301-65d57559-9c49-466f-887a-4b188ff7c10c.png)

From our linear regression model, the r-squared value is 0.71, which means that roughly 71% of the variablilty of our dependent variable (mpg of MechaCar prototypes) is explained using this linear model.In a simple linear regression model, the higher the correlation is between two variables, the more that one variable can explain/predict the value of the other.

In addition, the p-value of our linear regression analysis is 5.35 x 10-11, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results, vehicle length and ground clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words the vehicle length and ground clearance have a significant impact on mpg of MechaCar prototypes. When an intercept is statistically significant, it means that the intercept term explains a significant amount of variability in the dependent variable when all independent vairables are equal to zero. Depending on our dataset, a significant intercept could mean that the significant features (such as vehicle length and ground clearance) may need scaling or transforming to help improve the predictive power of the model. Alternatively, it may mean that there are other variables that can help explain the variability of our dependent variable that have not been included in our model.

## Summary Statistics on Suspension Coils

For all manufacturing lots in total, the summary statistics are as follows:

![image](https://user-images.githubusercontent.com/111020934/202956258-1d7565c4-d810-4205-950e-295aec1a62e0.png)


For the individual manufacturing lots, the summary statistics are as follows:

![image](https://user-images.githubusercontent.com/111020934/202956428-21a33a37-b4dd-410f-97e6-5ebc1482b96c.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.
The current manufacturing data meets this design specification for all manufacturing lots in total since we see that the variance of the suspension coils is roughly 63 pounds per square inch.
But if we see individually for the three manufacturing lots,forlot 3 the variance of the suspension coils is around 170 pounds per square inch. The current manufacturing data for lot 3 does not meet this design specification.

## T-Tests on Suspension Coils

Using our knowledge of R, we perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

For all lots:

![image](https://user-images.githubusercontent.com/111020934/202987397-9f6201e3-57bc-45f3-a708-7ac6d5b2c838.png)


For individual lots:

![image](https://user-images.githubusercontent.com/111020934/202987593-096294e8-114c-453f-a0c9-6126ba149fac.png)

For all lots in total, the p-value is 0.06028, which is slightly higher than our assumed significance level of 0.05%. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

For each indivudual lots:
For lot 1 and lot 2, the p-value is 1 and 0.6072, which is significantly higher than our assumed significance level of 0.05%. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.
For lot 3, the p-value is 0.04168. A p-value less than 0.05 is typically considered to be statistically significant, in which case we have sufficient evidence to reject the null hypothesis.

## Study Design: MechaCar vs Competition

Using the knowledge of R, design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.

* What metric or metrics are you going to test?
 
The vehicle weight and maintenance cost of MechaCar vehicles should be tested against vehicles from other manufacturers for Fuel efficiency. The fuel consumption does largely depend on the vehicle weight and the condition of it.
The heavier the vehicle, the more energy it needs to get moving. The lighter the better.
Also the maintenance cost should please the customer to keep a good condition of the vehicle which inturn decreases the fuel consumption due to wear and tear.

* What is the null hypothesis or alternative hypothesis?

Null hypothesis: The fuel economy is independent of the vehicle weight.

Alternate hypothesis: For every 100 pounds lighter the vehicle, the fuel economy is increased by 1 percent.

* What statistical test would you use to test the hypothesis? And why?

The chi-squared test can be used to test the hypothesis. We can categorize mpg and vehicle weights. We can also categorize mpg and maintainence cost for all the vehicles.
Assuming a significance level of 0.05%, if the calculated p-value is lower than 0.05% we can reject the null hypothesis.

* What data is needed to run the statistical test?

We need a dataset with the mpg, vehicle weight and maintainence cost for all the vehicles.
