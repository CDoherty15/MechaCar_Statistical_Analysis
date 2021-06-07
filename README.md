# MechaCar_Statistical_Analysis
Mod 15: Statistics using R 

## Linear Regression to Predict MPG
We used the variables from the MechaCar_mpg.csv dataset to predict the fuel efficiency, or MPG.

- We used a multilinear regression with 5 independent variables, 3 and the intercept returned statistically significant. Vehicle weight was returned with a t-score of 0.0776, this is less than a typical 0.05 significance level, but should be noted as it is still significant at the 90% level. The most significant variables were vehicle length and ground clearance. So we can say with the data provided, that the length of the vehicle and how far it is off the ground have the biggest and most noticeable impacts on MPG.
- Spoiler angle and AWD variables provided little significance to MPG. MPG is not affected by whether or not a car is all wheel drive or not and the angle of the spoiler does not matter. Typically, spoilers are used for aerodynamic purposes, to speed up the car. If we were measuring speed or acceleration, then this might have a bigger play. Since we are only looking at fuel efficiency, spoilers are not that a big concern. 
- Our R-squared is 0.6825, which is very moderate, close to being very strong, showing that these variables used are a good fit for predicting our dependent variable. 

## Summary Staistics on Suspension Coils
- The specifications for the MetaCars say that the pounds per square inch (PSI) variance should not exceed 100. We created two summary tables, below is the overall PSI summary table for all the cars and the other table groups the cars by their manufacturing lot. 

- Overall, the cars observed had a PSI variance of 62.29, with a standard deviation of 7.89. With a variance less than 100 and a relatively small standard deviation, overall these cars should pass the design specifications.
- However, we get something else when we separate the cars by lot groups. Lot 1's variance is 0.98 and Lot 2 has a variance of 7.47. Both of these lots meet the criteria, but Lot 3 has a very different story, the variance is 170.29. The cars in Lot 3 don't meet the specifications and are drastically different. Whoever collected this data should do a deeper check of the data from this lot to ensure measurements were entered correctly, or it could be that the cars made in this lot will not pass inspection, and could be the reason why the overall variance is over 60. 

## T-Tests on Suspension Coils
- To further looking at suspension coils, we will perform t-tests if all the manufacturing lots and each of the individual lot are statistically different than the population mean. For both groups of tests, we used one-sample t-tests because we are testing samples against the population.
- For the first t-test, testing all manufacturing lots against the population mean, we needed to first find a sample. Since there was a total of 150 observations for the population, 30 is a 1/5 of 150, so this will suffice as a sample size. We got a p-value = 0.0751, this is greater than the usual significance 0.05 level. We fail to reject the null, so the two means are statistically similar.
- We have three lots, so we needed to run 3 one-sample t-tests. For lots 1 and 2, the p-values are substantially less than the 0.05 significance, we reject the null and the PSI means from these two lots are not statistically similar from the population mean.
- In the third lot, the p-value = 0.1589, greater than the significance testing level. We fail to reject the null, the PSI mean in lot 3 is statistically similar to the population PSI mean. 






 


