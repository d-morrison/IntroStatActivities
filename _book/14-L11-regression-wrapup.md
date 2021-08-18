## Week 14 Lab: Black Bear Complaints

\setstretch{1}

### Learning objectives

* Given a research question involving two quantitative variables, construct the null and alternative hypotheses
  in words and using appropriate statistical symbols.
  
* Assess the conditions to determine in theory or simulation-based methods should be used.

* Find, interpret, and evaluate the p-value for a hypothesis test for a slope or correlation.

* Create and interpret a confidence interval for a slope or correlation.


### Black Bear Complaints

Black bears are notorious for human-wildlife conflicts. It is thought that hunting helps limit these interactions by acting as population control but there are other factors that play a role.  In order to completely understand the relationship between population size and human-bear conflicts, a study in Minnesota looked at close to four decades of data.  For each of 36 years, researchers recorded information about the number of complaints, food abundance rating, the number of bears removed from the population the previous year through hunter harvest or killing in conflict situations, estimated bear population size, whether the estimated population is over or under 15,000 bears, and whether a new or old policy regarding how complaints were dealt with was in effect (the new policy involved reducing site visits and eliminating translocations of bears in an effort to shift the responsibility for conflict resolution from the Minnesota Department of Natural Resources to homeowners and landowners). A goal of this study was to explore the effects of the previous variables on the number of complaints to provide improved guidance for managing harvests and conflicts in the future across the range of this species. Is there evidence that a higher food abundance rating is associated with a lower number of complaints?

Some of the variables collected in the data set `Bear_Data` consist of the following:

| **Variable** 	| **Description** |
|---	|-------------	|
| `Complaints` | number of complaints |
| `Food` | food abundance rating |
| `Prekill` | number of bears removed from the population the previous year |
| `Pop` | estimated bear population size |
| `Pop_Level` | whether the estimated population is over or under 15,000 bears |
| `Policy` | whether a new or old policy regarding how complaints were dealt with |
| `Pop_1000` | population per 1000 |


```r
# Read in data set
bears <- read.csv("https://math.montana.edu/courses/s216/data/Bear_Data.csv")
bears <- na.omit(bears)
```

#### Summarize and visualize the data {-} 


```
#>            Complaints   Food   Pop Prevkill
#> Complaints      1.000 -0.376 0.458   -0.241
#> Food           -0.376  1.000 0.084    0.482
#> Pop             0.458  0.084 1.000    0.520
#> Prevkill       -0.241  0.482 0.520    1.000
```

1. Which two variables have the strongest value of correlation?
\vspace{0.3in}

2. Give the value of correlation between `Food` and `Complaints`. 
\vspace{0.2in}

3. Calculate the value of the coefficient of determination between `Food` and `Complaints`. 
\vspace{0.4in}

4. Interpret the value of the coefficient of determination in context of the problem.
\vspace{0.6in}


```r
# Fit linear model: y ~ x
bearsLM <- lm(Complaints~Food, data=bears)
summary(bearsLM)$coefficients # Display coefficient summary
```

```
#>               Estimate Std. Error   t value    Pr(>|t|)
#> (Intercept) 5434.17307  1604.1810  3.387506 0.001796525
#> Food         -60.66982    25.6051 -2.369443 0.023633904
```

5. Give the value of the slope of the regression line.  Interpret this value in context of the problem.
\vspace{0.6in}


```r
bears %>% # Pipe data set into...
ggplot(aes(x = Food, y = Complaints))+  # Specify variables
  geom_point() +  # Add scatterplot of points
  labs(x = "Food Abundance Rating",  # Label x-axis
       y = "Number of Complaints",  # Label y-axis
       title = "Scatterplot of Food Abundance Ratings and Bear Complaints") + 
               # Be sure to tile your plots
  geom_smooth(method = "lm", se = FALSE)  # Add regression line
```



#### Conditions for the least squares line {-}

Use the provided scatterplot generated above and the residual plots shown below to assess the validity conditions for approximating the data with the $t$-distribution.


\begin{center}\includegraphics[width=0.7\linewidth]{14-L11-regression-wrapup_files/figure-latex/unnamed-chunk-5-1} \end{center}

6. Are the conditions met to use the $t$-distribution to approximate the sampling distribution of the standardized statistic? Justify your answer.

\vspace{1.5in}

#### Ask a research question {-}

7. Write out the null and alternative hypotheses in notation to test correlation between the food abundance rating and number of bear complaints.

|    $H_O:$

|    $H_A:$

#### Use statistical inferential methods to draw inferences from the data {-}

##### Hypothesis test {-}

Use the `regression_test()` function in `R` (in the `catstats` package) to simulate the null distribution of sample correlations and compute a p-value.  We will need to enter the response variable name and the explanatory variable name for the formula, the data set name (identified above as `bears`), the statistic for the test, number of repetitions, the sample statistic (value of correlation), and the direction of the alternative hypothesis.

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

Using the `R` script file for this activity, enter your answers for question 8 in place of the `xx`'s to produce the null distribution with 1000 simulations.  Highlight and run lines 1--13 and then lines 44--49.


```r
regression_test(Complaints ~ Food, # response ~ explanatory
               data = bears, # Name of data set
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

We will use the `regression_bootstrap_CI()` function in `R` (in the `catstats` package) to simulate the bootstrap distribution of sample correlations and calculate a confidence interval. Fill in the `xx`'s in the the provided `R` script file to find a 90\% confidence interval. Highlight and run lines 52--56. 


```r
regression_bootstrap_CI(Complaints~Food, # response ~ explanatory
   data = bears, # Name of data set
   confidence_level = xx, # Confidence level as decimal
   statistic = "xx", # Slope or correlation
   number_repetitions = 1000) # Number of simulated samples for bootstrap distribution
```
11.  Report the bootstrap 90\% confidence interval in interval notation.  
\vspace{0.5in}

12. Interpret the 90\% confidence interval in context of the problem.
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

17. Write a paragraph summarizing the results of the study as if you are reporting these results in your local newspaper.  Be sure to describe:

* Summary statistic

* Test statistic and interpretation

* P-value and interpretation

* Confidence interval and interpretation

* Conclusion (written to answer the research question)

* Scope of inference

\vspace{3in}


```r
bears %>%
  ggplot(aes(x = Food, y = Complaints, color=Pop_Level))+  # Specify variables
  geom_point(aes(shape = Pop_Level), size = 3) +  # Add scatterplot of points
  labs(x = "Food abundance rating",  # Label x-axis
       y = "Number of complaints",  # Label y-axis
       color = "Population level", shape = "Population level",
       title = "TITLE") + # Be sure to title your plots
  geom_smooth(method = "lm", se = FALSE)  # Add regression line
```



\begin{center}\includegraphics[width=0.6\linewidth]{14-L11-regression-wrapup_files/figure-latex/unnamed-chunk-8-1} \end{center}
