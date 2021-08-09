## Activity 14b:  Moneyball

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


### Moneyball

The goal of a Major League baseball team is to make the playoffs. In 2002, the manager of the Oakland A's, Billy Bean, with the help of Paul DePodesta began to use statistics to determine which players to choose for their season.  Based on past data, DePodesta determined that to make it to the playoffs, the A's would need to win at least 95 games in the regular season.  In order to win more games, they would need to score more runs than they allowed. The Oakland A's won 20 consecutive games and a total of 103 games for the season. The success of this use of sports analytics was portrayed by the 2011 movie, *Moneyball*.

In this study, we will see if there is evidence of a positive linear relationship between the difference in the number of runs scored minus the number of runs allowed and the number of wins for Major League baseball teams in the years before 2002.  

Some of the variables collected in the data set `baseball` consist of the following:

| **Variable** 	| **Description** |
|---	|-------------	|
| `RA` | Runs allowed |
| `RS` | Runs scored |
| `OBP` | On-base percentage |
| `SLG` | Slugging percentage |
| `BA` | Batting average |
| `OOBP` | Opponent's on-base percentage |
| `OSLG` | Opponent's slugging percentage |
| `W` | Number of wins in the season |
| `RD` | Difference of runs scored minus runs allowed |



```r
# Read in data set
baseball <- read.csv("https://math.montana.edu/courses/s216/data/baseball.csv")

baseball$RD <- baseball$RS - baseball$RA # Create variable run difference

baseball <- # Write over original data with the following
  baseball %>% # Pipe data set into
  subset(Year < 2002) # Select only years before 2002
```

#### Vocabulary review. Complete Q1--Q4 before class. {-}

1. Explain why regression methods are appropriate to use to address the researchers' question. Make sure you clearly define the variables of interest in your explanation and their roles.

\vspace{.5in}


2. Use the provided `R` script file to create a scatterplot to examine the relationship between the difference in number of runs scored minus number of runs allowed and the number of wins by filling in the variable names (`RD` and `W`) for `xx` and `yy` in line 17.  Highlight and run lines 1--22. 
 
    
    ```r
    baseball %>% # Pipe data set into...
    ggplot(aes(x = xx, y = yy))+  # Specify variables
      geom_point() +  # Add scatterplot of points
      labs(x = "Difference in number of runs",  # Label x-axis
           y = "Number of wins",  # Label y-axis
           title = "Scatterplot of Run Difference vs. Number of Wins") + 
                   # Be sure to tile your plots
      geom_smooth(method = "lm", se = FALSE)  # Add regression line
    ```

3. Sketch the plot created below. Based on your plot, does it appear that there is a relationship between run difference and wins? Note: `RD` should be on the $x$-axis.

\vspace{2in}

4. Describe the features of the plot above, addressing all four characteristics of a scatterplot.  

\vspace{1in}

|        If you indicated there are potential outliers, which points are they?

\vspace{0.5in}

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


The scatterplot generated in question 2 and the residual plots shown below will be used to assess these conditions for approximating the data with the $t$-distribution.


\begin{center}\includegraphics[width=0.7\linewidth]{14-A22-regression-theory_files/figure-latex/unnamed-chunk-3-1} \end{center}

5. Are the conditions met to use the $t$-distribution to approximate the sampling distribution of the standardized statistic? Justify your answer.

\vspace{1.5in}


#### Ask a research question {-}

6. Write out the null hypothesis in words.

\vspace{1in}

7. Using the research question, write the alternative hypothesis in notation to test the slope.

\vspace{0.5in}

#### Summarize and visualize the data {-}

Using the provided `R` script file, enter the response variable name, `W`, into the `lm()` (linear model) function for `yy` and the explanatory variable name, `RD`, for `xx` in line 32 to get the linear model output.  Highlight and run lines 32--33.


```r
lm.baseball <- lm(yy~xx, data=baseball) # lm(response~explanatory)
round(summary(lm.baseball)$coefficients, 5)
```

8.  Using the output from the evaluated `R` code above, write the equation of the regression line using appropriate statistical notation.

\vspace{1in}

9.  Interpret the estimated slope in context of the problem.

\vspace{1in}

10. Using your estimated line of best fit, predict the number of wins for a run difference of 147. Show all work.

\vspace{1in}

11. In 2002, the Oakland A's had a run difference of 147 and 103 wins. Calculate the residual associated with the observation (147, 103) using your estimated regression line from question 8. 

\vspace{1in}

#### Use statistical inferential methods to draw inferences from the data {-}

##### Hypothesis test {-}
To find the value of the standardized statistic to test the slope we will use, 

$$
T = \frac{\mbox{slope estimate}}{SE} = \frac{b_1}{SE(b_1)}.
$$
 
We will use the linear model `R` output above to get the estimate for slope and the standard error of the slope.

12.  Calculate the standardized statistic for slope.  Identify where this calculated value is in the linear model `R` output.

\vspace{1in}

13.  Interpret the standardized statistic in context of the problem.

\vspace{0.8in}

14.  Using the linear model `R` output, report the p-value for the test of significance for slope.

\vspace{0.5in}
15. Based on the p-value, how much evidence is there against the null hypothesis?

\vspace{0.5in}

##### Confidence interval {-}
Recall that a confidence interval is calculated by adding and subtracting the margin of error to the point estimate.  
$$\mbox{point estimate}\pm t^*SE(\mbox{estimate}).$$
When the point estimate is a regression slope, this formula becomes 
$$b_1 \pm t^* SE(b_1).$$
 
The $t^*$ multiplier comes from a $t$-distribution with $n-2$ degrees of freedom.  Recall for a 95\% confidence interval, we use the 97.5\% percentile (95\% of the distribution is in the middle, leaving 2.5\% in each tail).  The sample size for this study is 902 so we will use the degrees of freedom 900 ($n-2$).


```r
qt(0.95+0.025, 900) # 95% t* multiplier 
```

```
#> [1] 1.962603
```

16. Calculate the 95\% confidence interval for the true slope.
\vspace{0.8in}

17. Interpret the 95\% confidence interval in context of the problem.

\vspace{.8in}

#### Communicate the results and answer the research question {-}

18. Based on the p-value, write a conclusion in context of the problem.

\vspace{.8in}

19. Does the p-value agree with the 95\% confidence interval?  What does each tell you about the null hypothesis?

\vspace{.6in}

### Take-home messages

1.	The p-value for a test for correlation should be approximately the same as the p-value for the test of slope.  In the simulation test, we just change the statistic type from slope to correlation and use the appropriate sample statistic value.  

2. To check the validity conditions for using theory-based methods we must use the residual diagnostic plots to check for normality of residuals and constant variability, and the scatterplot to check for linearity.  

3. To interpret a confidence interval for the slope, think about how to interpret the sample slope and use that information in the confidence interval for slope.  

4. To create one simulated sample on the null distribution for a sample slope or sample correlation, hold the $x$ values constant and shuffle the $y$ values to new $x$ values. Find the regression line for the shuffled data and plot the slope or the correlation for the shuffled data.

5. To create one simulated sample on the bootstrap distribution for a sample slope or sample correlation, label $n$ cards with the original (response, explanatory) values.  Randomly draw with replacement $n$ times.  Find the regression line for the resampled data and plot the resampled slope or correlation. 


### Additional notes

Use this space to summarize your thoughts and take additional notes on this week's activity and material covered.

\newpage
