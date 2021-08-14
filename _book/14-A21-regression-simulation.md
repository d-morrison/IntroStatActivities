## Activity 14a:  Real Estate

\setstretch{1}

### Learning outcomes

* Given a research question involving two quantitative variables, construct the null and alternative hypotheses
  in words and using appropriate statistical symbols.
  
* Describe and perform a simulation-based hypothesis test for slope or correlation.

* Interpret and evaluate a p-value for a simulation-based hypothesis test for a slope or correlation.

* Use bootstrapping to find a confidence interval for the slope or correlation.

* Interpret a confidence interval for a slope or correlation.

### Terminology review
In today's activity, we will use simulation-based methods for hypothesis tests and confidence intervals for a linear regression slope or correlation. Some terms covered in this activity are:

* Correlation

* Slope 

* Regression line

To review these concepts, see Chapters 3 and 7 in the textbook.


### Real Estate

The government of Singapore took a random sample of 373 homes in Singapore to conduct a study on the relationship between the distance to the nearest train station (called MRT stations) and house prices. The house prices were measured in SGD (Singapore dollars) per meter squared and the distance was measured in meters. Does there appear to be a relationship between house prices in Singapore and distance to the nearest MRT station?


```r
# Read in data set
realestate <- read.csv("https://math.montana.edu/courses/s216/data/Real_estate.csv")
```

#### Vocabulary review. {-}

1. Explain why regression methods are appropriate to use to address the researchers' question. Make sure you clearly define the variables of interest in your explanation and their roles.

\vspace{.5in}


2. Use the provided `R` script file to create a scatterplot to examine the relationship between the distance to the nearest MRT station and house prices by filling in the variable names (`Distance` and `House_Price`) for `explanatory` and `response`` in **line 17.  Highlight and run lines 1--22**. 
 
    
    ```r
    realestate %>% # Pipe data set into...
    ggplot(aes(x = explanatory, y = response))+  # Specify variables
      geom_point() +  # Add scatterplot of points
      labs(x = "Distance to MRT Station (m)",  # Label x-axis
           y = "House Price (SGD/m^2)",  # Label y-axis
           title = "Scatterplot of House Prices by Distance to Train Station") + 
                   # Be sure to tile your plots
      geom_smooth(method = "lm", se = FALSE)  # Add regression line
    ```

3. Sketch the plot created below. Based on your plot, does it appear that there is a relationship between distance to the MRT station and house price? Note: `Distance` should be on the $x$-axis.

\vspace{2in}

4. Describe the features of the plot above, addressing all four characteristics of a scatterplot.  

\vspace{1in}

|        If you indicated there are potential outliers, which points are they?

\vspace{0.5in}

#### Ask a research question {-}

5. Write out the null hypothesis in words.

\vspace{1in}

6. Using the research question, write the alternative hypothesis in notation to test the slope.

\vspace{0.5in}

#### Summarize and visualize the data {-}

Using the provided `R` script file, enter the response variable name, `House_Price`, into the `lm()` (linear model) function for `response` and the explanatory variable name, `Distance`, for `response` in line 32 to get the linear model output.  Highlight and run lines 32--33.


```r
lm.realestate <- lm(response~explanatory, data=realestate) # lm(response~explanatory)
round(summary(lm.realestate)$coefficients, 5)
```

7.  Using the output from the evaluated `R` code above, write the equation of the regression line using appropriate statistical notation.

\vspace{1in}

8.  Interpret the estimated slope in context of the problem.

\vspace{1in}

9. Using your estimated line of best fit, predict the house price for a distance of 480.6977 meters. Show all work.

\vspace{1in}

10. One home in Singapore was 480.6977 meters from the train station and had a price of $38.8 \frac{SGD}{m^2}$. Calculate the residual associated with this observation using your estimated regression line from question 8. 

\vspace{1in}

#### Use statistical inferential methods to draw inferences from the data {-}

In this activity, we will focus on using simulation-based methods for inference in regression.  

#### Simulation-based hypothesis test {-}

First, let's think about how one simulation would be created on the null distribution using cards.  First, we would write the values for the response variable, wins, on each card.  Next, we would shuffle these $y$ values while keeping the $x$ values (explanatory variable) in the same order.  Then, find the line of regression for the shuffled cards and calculate either the sample slope or sample correlation.  

11. Once we have one simulated sample, what would we calculate and plot on the null distribution?  *Hint*: What statistic are we calculating from the data?

\vspace{1in}

We will use the `regression_test()` function in `R` (in the `catstats` package) to simulate the null distribution of sample slopes (or sample correlations) and compute a p-value.  We will need to enter the response variable name and the explanatory variable name for the formula, the data set name (identified above as `realestate`), the statistic for the test (either slope or correlation), number of repetitions, the sample statistic (value of slope or correlation), and the direction of the alternative hypothesis.

The response variable name is `House_Price` and the explanatory variable name is `Distance`.

12. What inputs should be entered for each of the following to create the simulation to test regression slope?

\vspace{.5 mm}

* Direction (`"greater"`, `"less"`, or `"two-sided"`):

\vspace{.2in}

* Statistic (choose `"slope"` or `"correlation"`):

\vspace{.2in}
* As extreme as (enter the value for the sample slope):

\vspace{0.2in}

* Number of repetitions:
    
\vspace{.2in}

Using the `R` script file for this activity, enter your answers for question 12 in place of the `xx`'s to produce the null distribution with 1000 simulations.  Highlight and run lines 1--13 and then lines 44--49.


```r
regression_test(House_Price ~ Distance, # response ~ explanatory
               data = realestate, # Name of data set
               direction = "xx", # Sign in alternative ("greater", "less", "two-sided")
               statistic = "xx", # "slope" or "correlation"
               as_extreme_as = x, # Observed slope or correlation
               number_repetitions = 1000) # Number of simulated samples for null distribution
       
```

13.  Report the p-value from the `R` output. 
\vspace{0.5in}

#### Simulation-based confidence interval {-}

We will use the `regression_bootstrap_CI()` function in `R` (in the `catstats` package) to simulate the bootstrap distribution of sample slopes (or sample correlations) and calculate a confidence interval. Fill in the `xx`'s in the the provided `R` script file to find a 95\% confidence interval. Highlight and run lines 52--56. 


```r
regression_bootstrap_CI(House_Price~Distance, # response ~ explanatory
   data = realestate, # Name of data set
   confidence_level = xx, # Confidence level as decimal
   statistic = "xx", # Slope or correlation
   number_repetitions = 1000) # Number of simulated samples for bootstrap distribution
```
14.  Report the bootstrap 95\% confidence interval in interval notation.  
\vspace{0.5in}
   
#### Communicate the results and answer the research question {-}

15. Based on the p-value, write a conclusion in context of the problem.

\vspace{.8in}

16. Does the p-value agree with the 95\% confidence interval?  What does each tell you about the null hypothesis?

\vspace{.6in}

#### Revisit and look forward {-}

In order to see what impact other variables may have on the house price we can look at a multiple linear model. The following `R` code gives the estimates for the regression model with two variables, `Distance` and `house_age` included.


```r
lm.price <- lm(House_Price ~ Distance + house_age, data=realestate)
round(summary(lm.price)$coefficients, 5)
#>             Estimate Std. Error   t value Pr(>|t|)
#> (Intercept) 49.88559    0.96776  51.54724        0
#> Distance    -0.00721    0.00038 -18.99701        0
#> house_age   -0.23103    0.04204  -5.49562        0
```
17. Use the provided `R` output to write the linear regression model including all variables.  *Hint*: The estimated line of regression is of the form:

$$\widehat{\text{house price}} = b_0 + b_1\times distance + b_2\times \text{house age}.$$

\vspace{1in}

18. Using the fitted regression model above, predict the house price for a home in Singapore with a house age of 13 years and 279.1726 meters from the nearest train station.

\vspace{1in}


### Take-home messages

1.	The p-value for a test for correlation should be approximately the same as the p-value for the test of slope.  In the simulation test, we just change the statistic type from slope to correlation and use the appropriate sample statistic value.  

2. To interpret a confidence interval for the slope, think about how to interpret the sample slope and use that information in the confidence interval for slope.  

3. To create one simulated sample on the null distribution for a sample slope or sample correlation, hold the $x$ values constant and shuffle the $y$ values to new $x$ values. Find the regression line for the shuffled data and plot the slope or the correlation for the shuffled data.

4. To create one simulated sample on the bootstrap distribution for a sample slope or sample correlation, label $n$ cards with the original (response, explanatory) values.  Randomly draw with replacement $n$ times.  Find the regression line for the resampled data and plot the resampled slope or correlation. 


### Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity and material covered.

\newpage
