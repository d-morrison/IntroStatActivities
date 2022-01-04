## Activity 13b:  Golf Driving Distance

\setstretch{1}

### Learning outcomes

* Given a research question involving two quantitative variables, construct the null and alternative hypotheses
  in words and using appropriate statistical symbols.
  
* Assess the conditions to use the normal distribution model for a slope or correlation.

* Find the T test statistic (T-score) for a slope or correlation based off of `lm()` output in `R`.

* Find, interpret, and evaluate the p-value for a theory-based hypothesis test for a slope or correlation.

* Create and interpret a theory-based confidence interval for a slope or correlation.

* Use a confidence interval to determine the conclusion of a hypothesis test.

### Terminology review
In this week's in-class activity, we will use theory-based methods for hypothesis tests and confidence intervals for a linear regression slope or correlation. Some terms covered in this activity are:

* Correlation

* Slope 

* Regression line

To review these concepts, see Chapters 3 and 7 in the textbook.


### Golf Driving Distance

In golf the goal is to complete a hole with as few strokes as possible.  A golfer desires to have a good driving distance to start a hole in order to minimize the strokes necessary to complete the hole.  This data was collecting on 354 PGA and LGPA players in 2008.  For each player, the average driving distance (yards), fairway accuracy (percentage), and sex was measured.  Use this data to assess, "Does a PGA golfer give up accuracy when they hit the ball farther?"


```r
# Read in data set
golf <- read.csv("https://math.montana.edu/courses/s216/data/golf.csv")
```

#### Plot review. {-}

Use the provided `R` script file to create a scatterplot to examine the relationship between the driving distance and percent accuracy by filling in the variable names (`Driving_Distance` and `Percent_Accuracy`) for `xx` and `yy` in line 10.  Highlight and run lines 1--16. 
 

```r
golf %>% # Pipe data set into...
ggplot(aes(x = xx, y = yy))+  # Specify variables
  geom_point() +  # Add scatterplot of points
  labs(x = "Driving Distance",  # Label x-axis
       y = "Percent Accuracy",  # Label y-axis
       title = "Scatterplot of Driving Distance by Percent Accuracy") + 
               # Be sure to tile your plots
  geom_smooth(method = "lm", se = FALSE)  # Add regression line
```

1. Sketch the plot created below. Based on your plot, does it appear that there is a relationship between driving distance and percent accuracy? Note: `Driving Distance` should be on the $x$-axis.

\vspace{2in}

#### Conditions for the least squares line {-}

When performing inference on a least squares line, the follow conditions are generally required:

* *Independent observations* (for both simulation-based and theory-based methods): individual data points must be independent.
    - Check this assumption by investigating the sampling method and determining if the observational units are related in any way.
    
* *Linearity* (for both simulation-based and theory-based methods): the data should follow a linear trend.
    - Check this assumption by examining the scatterplot of the two variables, and a scatterplot of the residuals (on the $y$-axis) versus the fitted values (on the $x$-axis). The pattern in the residual plot should display a horizontal line.

* *Constant variability* (for theory-based methods only): the variability of points around the least squares line remains roughly constant
    - Check this assumption by examining a scatterplot of the residuals (on the $y$-axis) versus the fitted values (on the $x$-axis). The variability in the residuals around zero should be approximately the same for all fitted values.

* *Nearly normal residuals* (for theory-based methods only: residuals must be nearly normal.
    - Check this assumption by examining a histogram of the residuals, which should appear approximately normal^[A better plot for checking the normality assumption is called a *normal quantile-quantile plot* (or QQ-plot). However, this type of plot will be covered in a future course].


The scatterplot generated in question 1 and the residual plots shown below will be used to assess these conditions for approximating the data with the $t$-distribution.


\begin{center}\includegraphics[width=0.7\linewidth]{13-A20-regression-theory_files/figure-latex/unnamed-chunk-3-1} \end{center}
2. Are the conditions met to use the $t$-distribution to approximate the sampling distribution of the standardized statistic? Justify your answer.

\vspace{1.5in}


#### Ask a research question {-}

3. Write out the null hypothesis in words.

\vspace{1in}

4. Using the research question, write the alternative hypothesis in notation to test the slope.

\vspace{0.5in}

#### Summarize and visualize the data {-}

Using the provided `R` script file, enter the response variable name, `Percent_Accuracy`, into the `lm()` (linear model) function for `yy` and the explanatory variable name, `Driving_Distance`, for `xx` in line 26 to get the linear model output.  Highlight and run lines 26--27.


```r
lm.golf <- lm(yy~xx, data=golf) # lm(response~explanatory)
round(summary(lm.golf)$coefficients, 5)
```

5.  Using the output from the evaluated `R` code above, write the equation of the regression line using appropriate statistical notation.

\vspace{1in}

6.  Interpret the estimated slope in context of the problem.

\vspace{1in}

#### Use statistical inferential methods to draw inferences from the data {-}

##### Hypothesis test {-}
To find the value of the standardized statistic to test the slope we will use, 

$$
T = \frac{\mbox{slope estimate}}{SE} = \frac{b_1}{SE(b_1)}.
$$
 
We will use the linear model `R` output above to get the estimate for slope and the standard error of the slope.

7.  Calculate the standardized statistic for slope.  Identify where this calculated value is in the linear model `R` output.

\newpage

8.  Interpret the standardized statistic in context of the problem.

\vspace{0.8in}

9.  Using the linear model `R` output, report the p-value for the test of significance for slope.

\vspace{0.5in}

10. Based on the p-value, how much evidence is there against the null hypothesis?

\vspace{0.5in}

##### Confidence interval {-}
Recall that a confidence interval is calculated by adding and subtracting the margin of error to the point estimate.  
$$\mbox{point estimate}\pm t^*SE(\mbox{estimate}).$$
When the point estimate is a regression slope, this formula becomes 
$$b_1 \pm t^* SE(b_1).$$
 
The $t^*$ multiplier comes from a $t$-distribution with $n-2$ degrees of freedom.  Recall for a 95\% confidence interval, we use the 97.5\% percentile (95\% of the distribution is in the middle, leaving 2.5\% in each tail).  The sample size for this study is 354 so we will use the degrees of freedom 352 ($n-2$).


```r
qt(0.975, 352) # 95% t* multiplier 
```

```
#> [1] 1.966726
```

11. Calculate the 95\% confidence interval for the true slope.
\vspace{0.8in}

12. Interpret the 95\% confidence interval in context of the problem.

\vspace{.8in}

#### Communicate the results and answer the research question {-}

13. Based on the p-value, write a conclusion in context of the problem.

\vspace{.8in}

14. Does the p-value agree with the 95\% confidence interval?  What does each tell you about the null hypothesis?

\vspace{.6in}

### Multivariate plots {-}

Another variable that may affect the percent accuracy is the sex of the golfer. We will look at how this variable may change the relationship between driving distance and percent accuracy. Highlight and run lines 33--39 to produce the multivariate plot. 


```r
golf %>%
  ggplot(aes(x = Driving_Distance, y = Percent_Accuracy, color=Gender))+  # Specify variables
  geom_point(aes(shape = Gender), size = 3) +  # Add scatterplot of points
  labs(x = "Driving Distance (m)",  # Label x-axis
       y = "Percent Accuracy",  # Label y-axis
       color = "Sex", shape = "Gender",
       title = "Scatterplot of Golf Driving Distance and Percent Accuracy by Sex") + # Be sure to title your plots
  geom_smooth(method = "lm", se = FALSE)  # Add regression line
```

15. Does the association between driving distance and percent accuracy change dependent on sex of the golfer?  Explain your answer.
\vspace{1in}

16.  **Explain the impact sex has on the two variables.**
\vspace{1in}

### Take-home messages

1.	The p-value for a test for correlation should be approximately the same as the p-value for the test of slope.  In the simulation test, we just change the statistic type from slope to correlation and use the appropriate sample statistic value.  

2. To check the validity conditions for using theory-based methods we must use the residual diagnostic plots to check for normality of residuals and constant variability, and the scatterplot to check for linearity.  

3. To interpret a confidence interval for the slope, think about how to interpret the sample slope and use that information in the confidence interval for slope.  

4. To create one simulated sample on the null distribution for a sample slope or sample correlation, hold the $x$ values constant and shuffle the $y$ values to new $x$ values. Find the regression line for the shuffled data and plot the slope or the correlation for the shuffled data.

5. To create one simulated sample on the bootstrap distribution for a sample slope or sample correlation, label $n$ cards with the original (response, explanatory) values.  Randomly draw with replacement $n$ times.  Find the regression line for the resampled data and plot the resampled slope or correlation. 


### Additional notes

Use this space to summarize your thoughts and take additional notes on this week's activity and material covered.

\newpage