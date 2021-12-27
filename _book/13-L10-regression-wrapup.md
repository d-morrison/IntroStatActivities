## Week 13 Lab: COVID Immunization and Infection Rates

\setstretch{1}

### Learning objectives

* Given a research question involving two quantitative variables, construct the null and alternative hypotheses
  in words and using appropriate statistical symbols.
  
* Assess the conditions to determine in theory or simulation-based methods should be used.

* Find, interpret, and evaluate the p-value for a hypothesis test for a slope or correlation.

* Create and interpret a confidence interval for a slope or correlation.


### COVID Immunization and Infection Rates

According to the *Washington Post* "States with higher vaccination rates now have markedly fewer coronavirus cases, as infections are dropping in places where most residents have been immunized and are rising in many places people have not."  In this article they found that there are differences in infection rates for different counties within a specific state.  To check this claim, a random sample of 125 counties from different states was assessed.  Vaccination rates and number of cases per 100,000 residents were found for each county.  Researchers want to assess if counties with a high vaccination rate tend to have lower coronavirus case rates.


Upload and open the `R` script file for Week 13 lab. Upload and import the csv file, `covid_vaccinations`. Enter the name of the data set (see the environment tab) for datasetname in the `R` script file in line 7. Highlight and run lines 1--8 to load the data.


```r
# Read in data set and remove NAs
covid <- covid_vaccinations
```

#### Summarize and visualize the data {-} 

To find the correlation between the variables, `PercentImmunized` and `Case_per_100K` highlight and run lines 10--13 in the `R` script file.


```r
covid %>% 
  select(c("PercentImmunized", "Case_per_100K")) %>%
  cor(use="pairwise.complete.obs") %>%
  round(3)
```

1.  Report the value of correlation between the variables. 
\vspace{0.2in}

2. **Calculate the value of the coefficient of determination between `PercentImmunized` and `Case_per_100K`.** 
\vspace{0.4in}

3. Interpret the value of the coefficient of determination in context of the problem.
\vspace{0.6in}

In the next part of the activity we will assess the linear model between percent immunized and cases per 100,000.  Enter the variable `Case_per_100K` for `response` and the variable `PercentImmunized` for `explanatory` in line 17.  Highlight and run lines 17--18 to get the linear model output. 


```r
# Fit linear model: y ~ x
covidLM <- lm(response~explanatory, data=covid)
summary(covidLM)$coefficients # Display coefficient summary
```

5. Give the value of the slope of the regression line.  Interpret this value in context of the problem.
\vspace{0.6in}

Highlight and run lines 23--36 to produce the diagnostic plots needed to assess conditions to use theory-based methods.


```r
covid %>% # Pipe data set into...
  ggplot(aes(x = PercentImmunized, y = Case_per_100K))+  # Specify variables
  geom_point() +  # Add scatterplot of points
  labs(x = "Percent Immunized",  # Label x-axis
       y = "Number of cases per 100K",  # Label y-axis
       title = "Scatterplot of Percent Immunized vs. Infection Rate of COVID in US Counties") + 
               # Be sure to tile your plots
  geom_smooth(method = "lm", se = FALSE)  # Add regression line
```



#### Conditions for the least squares line {-}

Use the scatterplot and the residual plots to assess the validity conditions for approximating the data with the $t$-distribution.


```r
covidLM <- lm(Case_per_100K~PercentImmunized, data = covid) # Fit linear regression model
par(mfrow=c(1,2)) # Set graphics parameters to plot 2 plots in 1 row
plot(covidLM, which=1) # Residual vs fitted values
hist(covidLM$resid, xlab="Residuals", ylab="Frequency",
     main = "Histogram of Residuals") # Histogram of residuals
```

6. **Are the conditions met to use the $t$-distribution to approximate the sampling distribution of the standardized statistic? Justify your answer.**

\vspace{1.5in}

#### Ask a research question {-}

7. Write out the null and alternative hypotheses in notation to test correlation between the percent immunized in US counties and the infection rate.

|    $H_O:$

|    $H_A:$

#### Use statistical inferential methods to draw inferences from the data {-}

##### Hypothesis test {-}

Use the `regression_test()` function in `R` (in the `catstats` package) to simulate the null distribution of sample **correlations** and compute a p-value.  We will need to enter the response variable name and the explanatory variable name for the formula, the data set name (identified above as `bears`), the statistic for the test, number of repetitions, the sample statistic (value of correlation), and the direction of the alternative hypothesis.

The response variable name is `Complaints` and the explanatory variable name is `Food`.

8. What inputs should be entered for each of the following to create the simulation to test correlation?

\vspace{.5 mm}

* Direction (`"greater"`, `"less"`, or `"two-sided"`):

\vspace{.2in}

* Statistic (choose `"slope"` or `"correlation"`):

\vspace{.2in}
* As extreme as (enter the value for the sample slope):

\vspace{0.2in}

* Number of repetitions:
    
\vspace{.2in}

Using the `R` script file for this activity, enter your answers for question 8 in place of the `xx`'s to produce the null distribution with 1000 simulations.  Highlight and run lines 39--44.  **Upload a copy of your plot showing the p-value to Gradescope for your group.**


```r
regression_test(Case_per_100K~PercentImmunized, # response ~ explanatory
               data = covid, # Name of data set
               direction = "xx", # Sign in alternative ("greater", "less", "two-sided")
               statistic = "xx", # "slope" or "correlation"
               as_extreme_as = xx, # Observed slope or correlation
               number_repetitions = 1000) # Number of simulated samples for null distribution
       
```

9.  Report the p-value from the `R` output. 
\vspace{0.3in}

10. Interpret the p-value in context of the problem.
\vspace{0.8in}

#### Simulation-based confidence interval {-}

We will use the `regression_bootstrap_CI()` function in `R` (in the `catstats` package) to simulate the bootstrap distribution of sample **correlations** and calculate a confidence interval. Fill in the `xx`'s in the the provided `R` script file to find a 90\% confidence interval. Highlight and run lines 52--56. 


```r
regression_bootstrap_CI(Case_per_100K~PercentImmunized, # response ~ explanatory
   data = covid, # Name of data set
   confidence_level = xx, # Confidence level as decimal
   statistic = "xx", # Slope or correlation
   number_repetitions = 1000) # Number of simulated samples for bootstrap distribution
```
11.  Report the bootstrap 90\% confidence interval in interval notation.  
\vspace{0.5in}

12. **Interpret the 90\% confidence interval in context of the problem.**
\vspace{0.8in}
   
#### Communicate the results and answer the research question {-}

13. Based on the p-value, write a conclusion in context of the problem.

\vspace{.8in}

14. Using a significance level of 0.1, what decision would you make?
\vspace{0.2in}

15. What type of error is possible?
\vspace{0.3in}

16. Write this error in context of the problem.
\vspace{0.8in}

17. Write a paragraph summarizing the results of the study as if you are reporting these results in your local newspaper.  **Upload a copy of your paragraph to Gradescope for your group.**  Be sure to describe:

* Summary statistic

* Test statistic and interpretation

* P-value and interpretation

* Confidence interval and interpretation

* Conclusion (written to answer the research question)

* Scope of inference

\vspace{3in}

\newpage
