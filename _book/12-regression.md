# Moneyball

## Learning outcomes
* Given a research question, construct the null and alternative hypotheses
  in words and using appropriate statistical symbols
  
* Describe and perform theory-based hypothesis tests for the slope 

* Interpret and evaluate a p-value

* Construct and interpret a theory-based confidence interval for slope

* Use a confidence interval to determine the conclusion of a hypothesis test

## Terminology review
In today's in-class activity, we will use theory-based hypothesis tests and confidence intervals for a linear regression slope. Some terms covered in this activity are:

* Correlation

* Slope 

* Regression line

To review these concepts, see Chapters 3 and 7 in the textbook.

## Moneyball

The goal of a Major League baseball team is to make the playoffs. In 2002, the manager of the Oakland A's, Billy Beane with the help of Paul DePodesta began to use statistics to determine which players to choose for their season.  Based on past data, Paul determined that to make it to the playoffs, the A's would need to win at least 95 games in regular season.  They also analyzed the relationship between number of runs and number of wins.  The Oakland A's won 20 consecutive games and a total of 103 for the season.  The success of this use of sports analytics was portrayed by the 2011 movie, *Moneyball*.

In this study we will see if there is a positive linear relationship between the difference in the number of runs scored minus the number of runs allowed and the number of wins for teams in the years before 2002.

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

baseball$RD <- baseball$RS - baseball$RA #create variable run difference

# Code categorical variables as factors
baseball <- # Write over original data with the following
  baseball %>% # Pipe data set into
  subset(Year < 2002) # Select only years before 2002
```

### Vocabulary review. Complete questions 1 - 3 before coming to class. {-}

1. Explain why regression methods are appropriate to use to address the researchers' question. Make sure you clearly define the variables of interest in your explanation and their roles.

\vspace{1in}

2. Use the provided `RScript` file to create a scatterplot to examine the relationship between the difference in number of runs scored minus number of runs allowed and the number of wins by filling in the variable names ('RD' and 'W') for xx and yy. Sketch this plot below. Based on your plot, does it appear that there is a relationship between ``run difference`` and ``wins``? Note: ``RD`` should be on the x-axis.
 
    
    ```r
    baseball %>% # Pipe data set into...
    ggplot(aes(x = RD, y = W))+  #Specify variables
      geom_point() +  #Add scatterplot of points
      labs(x = "Difference in number of runs",  #Label x-axis
           y = "Number of wins",  #Label y-axis
           title = "Scatterplot of Run Difference vs. Number of Wins") + #Be sure to tile your plots
      geom_smooth(method = "lm", se = FALSE)  #Add regression line
    ```
\vspace{2in}

3. Describe the features of the plot you created in question 2.  

\vspace{1in}

|        If you indicated there are potential outliers, which points are they?

\vspace{0.5in}

### Conditions for the least squares line {-}

When performing inference on a least squares line, the follow conditions are generally required

* Linearity: the data should follow a linear trend

* Nearly normal residuals: residuals must be nearly normal

* Constant variability: the variability of points around the least squares line remains roughly constant

* Independent observations: individual data points must be independent 

The scatterplot and the residual plots will be used to assess the conditions for approximating the data with the $t$-distribution.


\begin{center}\includegraphics[width=0.7\linewidth]{12-regression_files/figure-latex/unnamed-chunk-3-1} \end{center}

4. Are the conditions met to use the $t$-distribution to approximate the sampling distribution of our test statistic?

\vspace{1in}

\newpage
### Ask a research question {-}

5. Write out the null hypothesis in words.

\vspace{1in}

6. Using the research question, write the alternative hypothesis in notation to test the slope.

\vspace{0.5in}

### Summarize and visualize the data {-}

Using the provided `RScript` file, enter the response variable name, `W` into the linear model function for yy and the explanatory variable name, `RD` for xx to get the linear model output.  Highlight and run lines 1 - 24.


```r
lm.baseball <- lm(yy~xx, data=baseball) #lm(response~explanatory)
round(summary(lm.baseball)$coefficients, 5)
```

7.  Using the output from the evaluated `R` code above, write the equation of the regression line.

\vspace{1in}

8.  Interpret the slope in context of the problem.

\vspace{1in}

9. Using your estimated line of best fit, predict the number of wins for a run difference of 147. Show all work.

\vspace{1in}

10. In 2002 the Oakland A's has a run difference of 147 and 103 wins. Calculate the residual associated with the observation (147, 103), using your estimated regression line from question 7. 

\vspace{1in}

### Use statistical inferential methods to draw inferences from the data {-}

To find the value of the standardized statistic to test the slope we will use, 

$$
T = \frac{\mbox{slope estimate}}{SE} = \frac{b_1}{SE(b_1)}
$$
 
We will use the linear model output above to get the estimate for slope and standard error of the slope.

11.  Calculate the standardized statistic for slope.  Identify where this calculated value is in the linear model output.

\vspace{1in}

12.  Interpret the standardized statistic in context of the problem.

\vspace{1in}

13.  Using the linear model output, report the p-value for the test of significance.

\vspace{0.5in}
14. Based on the p-value, how much evidence is there against the null hypothesis?

\vspace{0.5in}

Recall that a confidence interval is calculated by adding and subtracting the margin of error to the point estimate.  
$$\mbox{point estimate}\pm t^*SE(estimate)$$
$$b_1 \pm t^* SE(b_1)$$
 
The $t^*$ multiplier comes from the $t$-distribution with $n-2$ df.  Recall for a 95\% confidence interval, use the 97.5\% percentile (95\% of the distribution is in the middle, leaving 2.5\% in each tail).


```r
qt(0.95+0.025, 900) #95% t* multiplier 
```

```
#> [1] 1.962603
```

15. Calculate the 95\% confidence interval for the true slope.
\vspace{1in}

16. Interpret the 95\% confidence interval in context of the problem.

\vspace{1in}

### Communicate the results and answer the research question {-}

17. Based on the p-value, write a conclusion in context of the problem.

\vspace{1in}

18. Does the p-value agree with the 95\% confidence interval?  What does each tell you about the null hypothesis?

\vspace{1in}

19.  Summarize the results of the study in a written paragraph.  Be sure to describe:

* Summary statistic

* Test statistic and interpretation

* P-value and interpretation

* Confidence interval and interpretation

* Conclusion (written to answer the research question)

* Scope of inference

\vspace{3in}

\newpage

### Revisit and look forward {-}

20. In order to predict the number of runs scored, Beane and DePodesta looked at the prediction model using both the team's on base percentage and slugging percentage. The following `R` code gives the estimates for the regression model with both of these variables included.

    
    ```r
    lm.score <- lm(RS~OBP+SLG, data=baseball)
    round(summary(lm.score)$coefficients, 5)
    #>              Estimate Std. Error   t value Pr(>|t|)
    #> (Intercept) -804.6271   18.92079 -42.52608        0
    #> OBP         2737.7680   90.68455  30.19001        0
    #> SLG         1584.9086   42.15559  37.59665        0
    ```
Use the provided `R` output to write the linear regression model including all variables.  The estimated line of regression is:

|    $\widehat{\text{runs scored}} = b_0 + b_1*OBP + b_2*SLG$

\vspace{1in}

21. Predict the number of runs for the Oakland A's in 2002 if the team OBP is 0.339 and the team SLPG is 0.430.

\vspace{1in}

## Out of class activity
In the out of class activity we will focus on using simulation based methods for inference of regression.  Use section 7.1 in the textbook and the TwoQuantSim video to complete the following questions.  

First let's think about how one simulation would be created on the null distribution using cards.  First we would write the values for the response variable, wins, on each card.  Next, we would shuffle the y values to a new x value (explanatory variable).  Then, find the line of regression for the shuffled cards.  

1. Once we have one simulated sample, what would we calculate and plot on the null distribution?  *Hint*: What statistic are we calculating from the data?

\vspace{1in}

2.  To create the null distribution, we will use the regression test from the catstats package.  We will need to enter the response variable name and the explanatory variable name for the formula, the data set name identified above as `baseball`, the statistic for the test (either slope or correlation), number of repetitions, the sample statistic (value of slope or correlation), and the direction of the alternative hypothesis.

The response variable name is `W` (wins) and the explanatory variable name is `RD` (run difference).

What inputs should be entered for each of the following to create the simulation?

\vspace{.2in}

* Direction (`"greater"`, `"less"`, or `"two-sided"`):

\vspace{.2in}

*statistic (choose `"slope"` or `"correlation"`):

\vspace{.2in}
* As extreme as (enter the value for the sample slope):

\vspace{0.2in}

* Number of repetitions:
    
\vspace{.2in}

Using the `RScript` file for this activity, enter your answers for question 2 in place of the xx's to produce the null distribution with 1000 simulations.  Highlight and run lines 1 - 13 and then lines 35 - 40.


```r
regression_test(W~RD, # response ~ explanatory
               data = baseball, # name of data set
               direction = "xx", # sign in alternative ("greater", "less", "two-sided")
               statistic = "xx", 
               as_extreme_as = xx, #observed slope
               number_repetitions = 1000) #Number of simulated samples for null distribution
       
```

3.  Report the value of the p-value.  Is this value similar to what was seen with the theory-based methods?

\vspace{0.5in}

Fill in the xx's in the regression bootstrap CI function to find a 95\% confidence interval in the provided `RScript` file. Highlight and run lines 43 - 47. 


```r
regression_bootstrap_CI(W~RD, # response ~ explanatory
                        data = baseball, # name of data set
                        confidence_level = xx, # confidence level as decimal
                        statistic = "xx", # slope or correlation
                        number_repetitions = 1000) #Number of simulated samples for bootstrap distribution
```
4.  Report the bootstrap 95\% confidence interval in interval notation.  
\vspace{0.5in}
   
5. Is the bootstrap 95\% confidence interval similar to what was found using theory-based methods?  Why did you expect this to be true?

\vspace{1in}

## Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity.