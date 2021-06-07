# MechaCar_Statistical_Analysis
Mod 15: Statistics using R 

## Linear Regression to Predict MPG
We used the variables from the MechaCar_mpg.csv dataset to predict the fuel efficiency, or MPG.
![LinearReg_MechaCar_MPG](https://user-images.githubusercontent.com/79118630/121093586-3cee6400-c7bb-11eb-9a79-fd44add0c2b2.png)
- We used a multilinear regression with 5 independent variables, 3 and the intercept returned statistically significant. Vehicle weight was returned with a t-score of 0.0776, this is less than a typical 0.05 significance level, but should be noted as it is still significant at the 90% level. The most significant variables were vehicle length and ground clearance. So we can say with the data provided, that the length of the vehicle and how far it is off the ground have the biggest and most noticeable impacts on MPG.
- Spoiler angle and AWD variables provided little significance to MPG. MPG is not affected by whether or not a car is all wheel drive or not and the angle of the spoiler does not matter. Typically, spoilers are used for aerodynamic purposes, to speed up the car. If we were measuring speed or acceleration, then this might have a bigger play. Since we are only looking at fuel efficiency, spoilers are not that a big concern. 
- Our R-squared is 0.6825, which is very moderate, close to being very strong, showing that these variables used are a good fit for predicting our dependent variable. 

## Summary Staistics on Suspension Coils
- The specifications for the MetaCars say that the pounds per square inch (PSI) variance should not exceed 100. We created two summary tables, below is the overall PSI summary table for all the cars and the other table groups the cars by their manufacturing lot.

![psi_total_summary](https://user-images.githubusercontent.com/79118630/121093698-64453100-c7bb-11eb-98ed-19e224949fe4.png) 

![lot_summary](https://user-images.githubusercontent.com/79118630/121093721-6dce9900-c7bb-11eb-94d4-f046e0a697e5.png)

- Overall, the cars observed had a PSI variance of 62.29, with a standard deviation of 7.89. With a variance less than 100 and a relatively small standard deviation, overall these cars should pass the design specifications.
- However, we get something else when we separate the cars by lot groups. Lot 1's variance is 0.98 and Lot 2 has a variance of 7.47. Both of these lots meet the criteria, but Lot 3 has a very different story, the variance is 170.29. The cars in Lot 3 don't meet the specifications and are drastically different. Whoever collected this data should do a deeper check of the data from this lot to ensure measurements were entered correctly, or it could be that the cars made in this lot will not pass inspection, and could be the reason why the overall variance is over 60. 

## T-Tests on Suspension Coils
To further looking at suspension coils, we will perform t-tests if all the manufacturing lots and each of the individual lot are statistically different than the population mean. For both groups of tests, we used one-sample t-tests because we are testing samples against the population.

![coil_1SampleTest](https://user-images.githubusercontent.com/79118630/121093892-b8501580-c7bb-11eb-952e-ce6ff3498613.png)
- For the first t-test, testing all manufacturing lots against the population mean, we needed to first find a sample. Since there was a total of 150 observations for the population, 30 is a 1/5 of 150, so this will suffice as a sample size. We got a p-value = 0.0751, this is greater than the usual significance 0.05 level. We fail to reject the null, so the two means are statistically similar.

We have three lots, so we needed to run 3 one-sample t-tests.

![lot1_psi_ttest](https://user-images.githubusercontent.com/79118630/121093967-d6b61100-c7bb-11eb-982c-e3e037e42df2.png)
![lot2_psi_ttest](https://user-images.githubusercontent.com/79118630/121093968-d6b61100-c7bb-11eb-808d-b35bd34a44dc.png)
![lot3_psi_ttest](https://user-images.githubusercontent.com/79118630/121093970-d74ea780-c7bb-11eb-8dc4-c504f8e95410.png)

- For lots 1 and 2, the p-values are substantially less than the 0.05 significance, we reject the null and the PSI means from these two lots are not statistically similar from the population mean. In conclusion, the cars from lots 1 and 2 have statistically different PSI means than the population. 
- In the third lot, the p-value = 0.1589, greater than the significance testing level. We fail to reject the null, the PSI mean in lot 3 is statistically similar to the population PSI mean.

## Study Design: MechaCar vs Competition
What study should be conducted next? Or really, what study would interest consumers to buy MechaCars over the competition? One thing that consumers always consider probably before stepping into a dealership or a car lot is the price. With new cars rolling out, why should consumers pay the cost of the new MechaCars over similar priced cars? Some consumers may even pay more for a different car, but will know the car is reliable because the model has been out for some time now. 
##### What metrics to use? What data is needed?
- For the above examples, we used different measurements like vehicle length, weight and even spoiler angle. These can be good measurements for certain testing, but to the everyday consumer, they won't know or even care why those matter. Here we will make our dependent variable the cost of the car, with multiple independent	variables: city and highway fuel efficiency (MPG), engine size, horse power, and interior size measurements (trunk space and how many seats). There are other measurements and factors that raise and lower cost of cars, but average consumers will get bored trying to follow along if they aren't well fixed with car knowledge. 
- An important note for this study is that this study is very reasonable and practical. All of these variables are very easily attainable from competitors. The average consumer is more concerned with MPGs and trunk space, compared to the vehicle length or the angle of the spoiler. 
##### Null and Alternative Hypothesis & Statistical Test to use
Our hypotheses are:
- Null: The MechaCars' cost is not statistically different compared to competitors.
- Alternative: The MechaCars' cost is statistically different compared to competitors.
- For our test, we would use a two-sample t-test. It will be easier to take a sample of the MechaCar population and a sample of the competitors population to test the data. 
- We would also want to plot the data for the analytics team to review with a multiple linear regression. This isn't something to show consumers, but if we plot the data and notice that in-fact there is no statistical significance between any of the variables, or no correlation, then this data should not be presented.
- Testing for things like interior seating and trunk space aren't as big concerns to manufacturers, but are a concern when trying to sell the cars. When a family is shopping for a car, they are looking at fuel efficiency, but to them, the first thing they are looking at is probably the interior space. 



