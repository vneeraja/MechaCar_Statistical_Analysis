# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG,
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
The current manufacturing data meet this design specification for all manufacturing lots in total since we see that the variance of the suspension coils is roughly 63 pounds per square inch.
But if we see individually for the three manufacturing lots,in lot 3 the variance of the suspension coils is around 170 pounds per square inch. The current manufacturing data for lot 3 does not meet this design specification.

## T-Tests on Suspension Coils

For all lots

![image](https://user-images.githubusercontent.com/111020934/202987397-9f6201e3-57bc-45f3-a708-7ac6d5b2c838.png)


For individual lots

![image](https://user-images.githubusercontent.com/111020934/202987593-096294e8-114c-453f-a0c9-6126ba149fac.png)




