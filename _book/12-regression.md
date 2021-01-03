# Inference for Two Quantitative Variables

## Reading Guide: Inference for slope and correlation

### Section 7.1 and 7.2 (Inference for regression and model conditions) {-}

**Videos**  

* 7.1and7.2
* RegressionSim

\setstretch{1.25}

#### Reminders from previous sections {-}

$\beta_0$: population y-intercept

$\beta_1$: population slope

$\rho$: population correlation 

$b_0$: sample y-intercept

$b_1$: sample slope

$r$: sample correlation

Scatterplot: displays two quantitative variables; one dot = two measurements (x, y) on one observational unit

Four characteristics of a scatterplot:

\rgi *Form*: pattern of the dots plotted.  Is the trend generally linear (you can fit a straight line to the data) or non-linear?

\rgi *Strength*: how closely do the points follow a trend?  Very closely (strong)? No pattern (weak)?

\rgi *Direction*: as the x values increase, do the y-values tend to increase (positive) or decrease (negative)?

\rgi *Unusual observations or outliers*: points that do not fit the overall pattern of the data

Least squares regression line: $\hat{y} = b_0+b_1x$ , where $b_0$ is the estimate for `(Intercept)` and $b_1$ is the estimate for the `x-variable` name in the `R` regression output.

Slope interpretation: a 1 unit increase in the *x* variable is associated with a $|b_1 |$ unit increase/decrease in the *y*-variable

#### General steps of a hypothesis test: {-}

1. Frame the research question in terms of hypotheses.

2. Collect and summarize data using a test statistic.
	
3. Assume the null hypothesis is true, and simulate or mathematically model a null distribution for the test statistic.

4. Compare the observed test statistic to the null distribution to calculate a p-value.

5. Make a conclusion based on the p-value and write the conclusion in context.

Parameter: a value summarizing a variable(s) for a population

Statistic: a value summarizing a variable(s) for a sample

Sampling distribution: plot of statistics from 1000s of samples of the same size taken from the same population.

Standard deviation of a statistic: the variability of statistics from 1000s of samples.  How far, on average, each statistic is from the true value of the parameter.

Standard error of a statistic: estimated standard deviation of a statistic.

Hypothesis test: a process to determine how strong the evidence of an effect is
		
\rgi Also called a ‘significance test’

Simulation-based method: Simulate lots of samples of size n, then find the proportion of the simulations that are at least as extreme as the observed sample statistic

Theory-based method: Develop a mathematical model for the statistic and use the model to calculate the probability of the observed sample statistic occurring 

Null hypothesis: $H_0$ the skeptical perspective; no difference; no change; no effect; random chance; what the researcher hopes to prove is **wrong**

Alternative hypothesis: $H_A$ the new perspective; a difference/increase/decrease; an effect; not random chance; what the researcher hopes to prove is **correct**

Null value: the value of the parameter when we assume the null hypothesis is true (labeled as $parameter_0$)

Null distribution:  the simulated or modeled distribution of statistics (sampling distribution) we would expect to occur if the null hypothesis is true.

P-value: probability of seeing the observed sample data, or something more extreme, assuming the null hypothesis is true

\rgi Lower the p-value the stronger the evidence AGAINST the null hypothesis and FOR the alternative hypothesis

Decision: a determination of whether to reject or fail to reject a null hypothesis based on a p-value and a pre-set level of significance

Significance level: ($\alpha$) a threshold used to determine if a p-value provides enough evidence to reject the null hypothesis or not

\rgi Typically use $\alpha$ =0.05

Statistically significant: results are considered statistically significant if the p-value is below the significance level.

Confidence interval: a process to determine how large an effect is; a range of plausible values for the parameter
\rgi Also called ‘estimation’

Margin of error: the value that is added to and subtracted from the sample statistic to create a confidence interval; half the width of a confidence interval

Bootstrapping: the process of drawing with replacement n times from the original sample

Bootstrapped resample: a random sample of size n from the original sample, selected with replacement

Bootstrapped statistic: the statistic recorded from the bootstrapped resample

Confidence level: how confident we are that the confidence interval will capture the parameter

Bootstrap X% confidence interval: ($(\frac{(1-X)}{2})^{th}$ percentile,$(X+(\frac{(1-X)}{2})^{th}$ percentile) of a bootstrap distribution

Central Limit Theorem: For large sample sizes, the sampling distribution of a sample proportion (or mean) will be bell-shaped and symmetric

t-distribution: A bell-shaped symmetric distribution, centered at 0, wider than the standard Normal distribution
	Note: width depends on the sample size (used to calculate degrees of freedom – df for short)
	Larger df  Closer the t distribution is to the standard Normal distribution

Degrees of freedom (df): describes the variability of the t-distribution

T-score: the name for a standardized statistic which is compared to a t-distribution


#### Notes {-}

To create a **simulated null distribution**, 

1. How many cards will you need and how will the cards be labeled?
\rgs

2. What do you do with the cards after labeling them?
\rgs

3. After shuffling, what value will be plotted on the simulated null distribution?
\rgs

To create a **bootstrap distribution**, 

1. How many cards will you need and how will the cards be labeled?
\rgs

2. What do you do with the cards after labeling them?
\rgs

3. After shuffling, what value will be plotted on the bootstrap distribution?
\rgs


Conditions to use the CLT for testing slope (or correlation):
1.	Linearity: 
\rgs

\rgi a.	Checked by: 
\rgs

2.	Independent observations: 
\rgs

\rgi a.	Checked by: 
\rgs

3.	Nearly normal residuals: 
\rgs

\rgi a.	Checked by: 
\rgs

4.	Constant or equal variance: 
\rgs

\rgi a.	Checked by: 
\rgs

In a theoretical test of slope or correlation, how are the degrees of freedom determined?
\rgs	

Explain why testing for slope is equivalent to testing for correlation.
\rgs

Where in the `R` output can $SE(b_1)$ be found?
\rgs

#### Formulas {-}

$t=$
\rgs

Confidence interval: 
\rgs


#### Example: Crop yields {-}

1.	What are the observational units?
\rgs

2.	What is the parameter representing in the context of this problem?  What notation would be used to represent this parameter?
\rgs
\rgs

3.	What is the research question?
\rgs

4.	Write the null and alternative hypothesis in appropriate notation.
\rgs

5.	How could we use cards to simulate **1** sample which assumes *the null hypothesis is true*?  How many cards?  What is written on the cards?  What would we do with the cards?  What would you record once you have a simulated sample?
\rgs
\rgs

6.	After 1000 shuffles are generated, where is the resulting simulated distribution centered?  Why does that make sense?
\rgs
\rgs

7.	What are the sample statistics presented in this example?  What notation would be used to represent each value?
\rgs

8.	Write the least squares regression line for these data.
\rgs

9.	 How was the p-value for this test found?

The proportion of simulated null samples at ____ or ____.
\rgs

10.	Interpret the p-value in the context of the problem.
\rgs
\rgs

11.	What conclusion can be drawn from these data?  
\rgs

12.	How could we use cards to simulate **1** bootstrap resample *which does not assume the null hypothesis is true*?  How many cards?  What is written on the cards?  What would we do with the cards?  What would you record once you have a simulated sample?
\rgs
\rgs

13. Interpret the 95% confidence interval provided.
\rgs
\rgs

#### Example: Midterm elections and Unemployment {-}

1. What is the research question?
\rgs

2. What are the observational units?
\rgs

3. What variables will be analyzed?  Give the type and role of each.
\rgs
\rgs

4. Can the results of this study be generalized to a larger population?
\rgs

5. Is causal inference appropriate for these data?
\rgs

6. Write the null and the alternative hypothesis in words.
\rgs
\rgs

7. Write the null and the alternative hypothesis in notation.
\rgs

8. What are the sample statistics presented in this example?  What notation would be used to represent each value?
\rgs

9. Write the least squares regression line for these data.
\rgs

10. From the `R` output, what is the standard error of the slope estimate?
\rgs

11. Calculate the t-score (the standardized statistic for the slope).
\rgs

12. What distribution should the t-score be compared to in order to calculate a p-value?
\rgs

13. What was the p-value of the test? 
\rgs

14. What conclusion should the researcher make?
\rgs

15. Calculate a 95% confidence interval for the parameter of interest using `qt(0.975, df = 27) = 2.052` as the $t^\star$ value.
\rgs

16. Interpret your interval in the context of the problem.
\rgs
\rgs

\newpage

## Activity:  Moneyball

\setstretch{1}

### Learning outcomes
* Given a research question, construct the null and alternative hypotheses
  in words and using appropriate statistical symbols
  
* Describe and perform theory-based hypothesis tests for the slope 

* Interpret and evaluate a p-value

* Construct and interpret a theory-based confidence interval for slope

* Use a confidence interval to determine the conclusion of a hypothesis test

### Terminology review
In this week's in-class activity, we will use theory-based methods for hypothesis tests and confidence intervals for linear regression slope. Some terms covered in this activity are:

* Correlation

* Slope 

* Regression line

To review these concepts, see Chapters 3 and 7 in the textbook.

\newpage

### Moneyball

The goal of a Major League baseball team is to make the playoffs. In 2002, the manager of the Oakland A's, Billy Beane with the help of Paul DePodesta began to use statistics to determine which players to choose for their season.  Based on past data, Paul determined that to make it to the playoffs, the A's would need to win at least 95 games in the regular season.  In order to win more games they would need to score more runs than they allowed.  In this study, we will see if there is evidence of a positive linear relationship between the difference in the number of runs scored minus the number of runs allowed and the number of wins for teams in the years before 2002.  

The Oakland A's won 20 consecutive games and a total of 103 games for the season.  The success of this use of sports analytics was portrayed by the 2011 movie, *Moneyball*.


Some of the variables collected in this data set consist of the following:

| **Variable** 	| **Description** |
|---	|-------------	|
| `RA` | Runs allowed |
| `RS` | Runs scored |
| `OBP` | On Base Percentage |
| `SLG` | Slugging Percentage |
| `BA` | Batting Average |
| `OOBP` | Opponent's On Base Percentage |
| `OSLG` | Opponent's Slugging Percentage |
| `W` | Number of Wins in the season |
| `RD` | Difference of runs scored minus runs allowed |



```r
# Read in data set
baseball <- read.csv("data/baseball.csv")

baseball$RD <- baseball$RS - baseball$RA # Create variable run difference

# Code categorical variables as factors
baseball <- # Write over original data with the following
  baseball %>% # Pipe data set into
  subset(Year < 2002) # Select only years before 2002
```

#### Vocabulary review. Complete Q1 - 4 before class. {-}

1. Explain why regression methods are appropriate to use to address the researchers' question. Make sure you clearly define the variables of interest in your explanation and their roles.

\newpage

2. Use the provided `RScript` file to create a scatterplot to examine the relationship between the difference in number of runs scored minus number of runs allowed and the number of wins by filling in the variable names (`RD` and `W`) for xx and yy in line 17.  Highlight and run lines 1 - 22. 
 
    
    ```r
    baseball %>% # Pipe data set into...
    ggplot(aes(x = xx, y = yy))+  # Specify variables
      geom_point() +  # Add scatterplot of points
      labs(x = "Difference in number of runs",  # Label x-axis
           y = "Number of wins",  # Label y-axis
           title = "Scatterplot of Run Difference vs. Number of Wins") + # Be sure to tile your plots
      geom_smooth(method = "lm", se = FALSE)  # Add regression line
    ```

3. Sketch the plot created below. Based on your plot, does it appear that there is a relationship between ``run difference`` and ``wins``? Note: ``RD`` should be on the x-axis.

\vspace{2in}

4. Describe the features of the plot above.  

\vspace{1in}

|        If you indicated there are potential outliers, which points are they?

\vspace{0.5in}

#### Conditions for the least squares line {-}

When performing inference on a least squares line, the follow conditions are generally required

* Linearity: the data should follow a linear trend

* Nearly normal residuals: residuals must be nearly normal

* Constant variability: the variability of points around the least squares line remains roughly constant

* Independent observations: individual data points must be independent 

The scatterplot and the residual plots will be used to assess the conditions for approximating the data with the $t$-distribution.


\begin{center}\includegraphics[width=0.7\linewidth]{12-regression_files/figure-latex/unnamed-chunk-3-1} \end{center}

5. Are the conditions met to use the $t$-distribution to approximate the sampling distribution of the standardized statistic?

\vspace{1.5in}


#### Ask a research question {-}

6. Write out the null hypothesis in words.

\vspace{1in}

7. Using the research question, write the alternative hypothesis in notation to test the slope.

\vspace{0.5in}

#### Summarize and visualize the data {-}

Using the provided `RScript` file, enter the response variable name, `W` into the linear model function for yy and the explanatory variable name, `RD` for xx in line 32 to get the linear model output.  Highlight and run lines 32 - 33.


```r
lm.baseball <- lm(yy~xx, data=baseball) # lm(response~explanatory)
round(summary(lm.baseball)$coefficients, 5)
```

8.  Using the output from the evaluated `R` code above, write the equation of the regression line.

\vspace{1in}

9.  Interpret the slope in context of the problem.

\vspace{1in}

10. Using your estimated line of best fit, predict the number of wins for a run difference of 147. Show all work.

\vspace{1in}

11. In 2002 the Oakland A's had a run difference of 147 and 103 wins. Calculate the residual associated with the observation (147, 103), using your estimated regression line from question 8. 

\vspace{1in}

#### Use statistical inferential methods to draw inferences from the data {-}

To find the value of the standardized statistic to test the slope we will use, 

$$
T = \frac{\mbox{slope estimate}}{SE} = \frac{b_1}{SE(b_1)}
$$
 
We will use the linear model output above to get the estimate for slope and standard error of the slope.

12.  Calculate the standardized statistic for slope.  Identify where this calculated value is in the linear model output.

\vspace{1in}

13.  Interpret the standardized statistic in context of the problem.

\vspace{0.8in}

14.  Using the linear model output, report the p-value for the test of significance.

\vspace{0.5in}
15. Based on the p-value, how much evidence is there against the null hypothesis?

\vspace{0.5in}

Recall that a confidence interval is calculated by adding and subtracting the margin of error to the point estimate.  
$$\mbox{point estimate}\pm t^*SE(estimate)$$
$$b_1 \pm t^* SE(b_1)$$
 
The $t^*$ multiplier comes from the $t$-distribution with $n-2$ df.  Recall for a 95\% confidence interval, we use the 97.5\% percentile (95\% of the distribution is in the middle, leaving 2.5\% in each tail).  The sample size for this study is 902 so we will use the degrees of freedom 900 ($n-2$).


```r
qt(0.95+0.025, 900) # 95% t* multiplier 
```

```
#> [1] 1.962603
```

16. Calculate the 95\% confidence interval for the true slope.
\vspace{0.8in}

17. Interpret the 95\% confidence interval in context of the problem.

\vspace{1in}

#### Communicate the results and answer the research question {-}

18. Based on the p-value, write a conclusion in context of the problem.

\vspace{1in}

19. Does the p-value agree with the 95\% confidence interval?  What does each tell you about the null hypothesis?

\vspace{1in}

20.  Summarize the results of the study in a written paragraph.  Be sure to describe:

* Summary statistic

* Test statistic and interpretation

* P-value and interpretation

* Confidence interval and interpretation

* Conclusion (written to answer the research question)

* Scope of inference

\vspace{3in}

\newpage

#### Revisit and look forward {-}

In order to see what team attributes would have the most impact on the number of runs scored, Beane and DePodesta created several prediction models.  Using 2001 statistics, they looked at a prediction model using both the team's on base percentage and slugging percentage to predict the number of runs scored. The following `R` code gives the estimates for the regression model with both of these variables included.


```r
lm.score <- lm(RS~OBP+SLG, data=baseball)
round(summary(lm.score)$coefficients, 5)
#>              Estimate Std. Error   t value Pr(>|t|)
#> (Intercept) -804.6271   18.92079 -42.52608        0
#> OBP         2737.7680   90.68455  30.19001        0
#> SLG         1584.9086   42.15559  37.59665        0
```
21. Use the provided `R` output to write the linear regression model including all variables.  *Hint*: The estimated line of regression is:

$$\widehat{\text{runs scored}} = b_0 + b_1*OBP + b_2*SLG$$

\vspace{1in}

22. Using the line of regression above, predict the number of runs for the Oakland A's in 2002 if the team OBP is 0.339 and the team SLPG is 0.430.

\vspace{1in}

### Out-of-class activity

In the out-of-class activity we will focus on using simulation based methods for inference of regression.  Use section 7.1 in the textbook and the TwoQuantSim video to complete the following questions.  

First let's think about how one simulation would be created on the null distribution using cards.  First we would write the values for the response variable, wins, on each card.  Next, we would shuffle the y values to a new x value (explanatory variable).  Then, find the line of regression for the shuffled cards.  

1. Once we have one simulated sample, what would we calculate and plot on the null distribution?  *Hint*: What statistic are we calculating from the data?

\vspace{1in}

To create the null distribution, we will use the regression test from the catstats package.  We will need to enter the response variable name and the explanatory variable name for the formula, the data set name identified above as `baseball`, the statistic for the test (either slope or correlation), number of repetitions, the sample statistic (value of slope or correlation), and the direction of the alternative hypothesis.

The response variable name is `W` (wins) and the explanatory variable name is `RD` (run difference).

2. What inputs should be entered for each of the following to create the simulation?

\vspace{.5 mm}

* Direction (`"greater"`, `"less"`, or `"two-sided"`):

\vspace{.2in}

* Statistic (choose `"slope"` or `"correlation"`):

\vspace{.2in}
* As extreme as (enter the value for the sample slope):

\vspace{0.2in}

* Number of repetitions:
    
\vspace{.2in}

Using the `RScript` file for this activity, enter your answers for question 2 in place of the xx's for the regression test to produce the null distribution with 1000 simulations.  Highlight and run lines 1 - 13 and then lines 44-49.


```r
regression_test(W~RD, # response ~ explanatory
               data = baseball, # Name of data set
               direction = "xx", # Sign in alternative ("greater", "less", "two-sided")
               statistic = "xx", 
               as_extreme_as = x, # Observed slope
               number_repetitions = 1000) # Number of simulated samples for null distribution
       
```

3.  Report the p-value from the `R` output.  Is this value similar to what was seen with the theory-based methods?

\vspace{0.5in}

Fill in the xx's in the regression bootstrap CI function in the provided `RScript` file to find a 95\% confidence interval. Highlight and run lines 52-56. 


```r
regression_bootstrap_CI(W~RD, # response ~ explanatory
                        data = baseball, # Name of data set
                        confidence_level = xx, # Confidence level as decimal
                        statistic = "xx", # Slope or correlation
                        number_repetitions = 1000) # Number of simulated samples for bootstrap distribution
```
4.  Report the bootstrap 95\% confidence interval in interval notation.  
\vspace{0.5in}
   
5. Is the bootstrap 95\% confidence interval similar to what was found using theory-based methods?  Why did you expect this to be true?

\vspace{1in}

### Take-home messages

1.	The p-value for a test for correlation should be approximately the same as the p-value for the test of slope.  In the simulation test, we just change the statistic type from slope to correlation and use the appropriate sample statistic value.  

2. To check the validity conditions for using theory-based methods we must use the diagnostic plots to check for normality of resiudals and constant variability and the scatterplot to check for linearity.  

3. To interpret a confidence interval for the slope: Think about how to interpret the sample slope and use that info in the confidence interval for slope.  


### Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity.
