# Inference for Two Categorical Variables: Hypothesis Testing

## Reading Guide: 

\setstretch{1.25}

\newpage

## Activity:  Winter Sports Helmet Use and Head Injuries - Testing

\setstretch{1}

### Learning objectives

* Write out the null and alternative hypotheses for two categorical variables

* Assess the conditions to use the standard normal distribution for a difference in proportions

* Calculate the Z test statistic for the difference in proportions

* Find the p-value and assess the strength of evidence

### Terminology review
In this week's in-class activity, we will use theory-based methods to analyze two categorical variables. Some terms covered in this activity are:

* Conditional proportion

* Z test

* $z*$ multiplier

* Null hypothesis

* Alternative hypothesis

* Test statistic

* Standard normal distribution

* Independence and success-failure conditions

* Type 1 and Type 2 errors

* Decisions

To review these concepts, see Chapter 5 in your textbook.

\newpage

### Helmet use and head injuries
In "Helmet Use and Risk of Head Injuries in Alpine Skiers and Snowboarders" by Sullheim et. al., in the *Journal of the American Medical Association*, Vol. 295, No. 8 (2006), we can see the summary results from a random sample of 3562 skiers and snowboarders involved in accidents in the two-way table below. Is there evidence that safety helmet use is associated with a reduced risk of head injury for skiers and snowboarders? 

|                | Helmet Use | No Helmet Use | Total |
|:--------------:|:----------:|:-------------:|:-----:|
| Head Injury    |     96     |      480      |  576  |
| No Head Injury |     656    |      2330     |  2986 |
| Total          |     752    |      2810     |  3562 |

These counts can be found in `R` by using the `count()` function:

```r
injury <- read.csv("https://math.montana.edu/courses/s216/data/HeadInjuries.csv") # Read data set in
injury <- # Write over original data with the following
  injury %>% # Pipe data set into
  mutate(Helmet <- factor(Helmet),
         Outcome <- factor(Outcome)) # Convert to factors

injury %>% group_by(Helmet) %>% count(Outcome)
```

```
#> # A tibble: 4 x 3
#> # Groups:   Helmet [2]
#>   Helmet Outcome            n
#>   <chr>  <chr>          <int>
#> 1 No     Head Injury      480
#> 2 No     No Head Injury  2330
#> 3 Yes    Head Injury       96
#> 4 Yes    No Head Injury   656
```
Notice that the name of the explanatory variable is `Helmet` with outcomes `Yes` and `No` and the name of the response variable is `Outcome` with outcomes `Head Injury` and `No Head Injury`.

#### Vocabulary review. Complete Q1 - 4 before class. {-}

1.  What is the explanatory variable?

\vspace{0.3in}

2. What is the response variable?

\vspace{0.3in}

3. Is this an experiment or observational study?  Justify your answer.

\newpage

4.  Put an X in the box that represents the appropriate scope of inference for this study.

|                    |                  |       Study Type      |                     |
|:------------------:|:----------------:|:---------------------:|---------------------|
|                    |                  | Randomized Experiment | Observational Study |
| Selection of Cases | Random Sample    |                       |                     |
|                    | No Random Sample |                       |                     |


#### Ask a research question {-}

In this study we are looking at the relationship between two groups or two parameters ($\pi_1$ and $\pi_2$).  Remember we define the parameter for a categorical variable as the true proportion of observational units that are labeled as a "success" in the response variable.  

5. Write the two parameters of interest for this study.  Let 1 = skier/snowboarder wore helmet, 2 = skier/snowboarder did not wear helmet.
\vspace{1mm}

   $\pi_1$ - 
\vspace{0.5in}

   $\pi_2$ - 
\vspace{0.5in}

When comparing two groups, we assume the two parameters are equal in the null hypothesis---there is no association between the variables.

6.  Write the null hypothesis out in words using your answers to question 5.

\vspace{0.81in}

7.  What is the research question?

\vspace{0.5in}

8. Based on the research question fill in the appropriate sign for the alternative hypothesis ($<$, $>$, or $\neq$):
\vspace{0.25in}

|           $H_A: \pi_1 -\pi_2$ __________ 0


\newpage 
#### Summarize and visualize the data {-}

9. Using the two-way table, calculate the conditional proportion of skiers/snowboarders that wore a helmet with a head injury.

\vspace{.3in}

10. Using the two-way table, calculate the conditional proportion of skiers/snowboarders that did not wear a helmet with a head injury.

\vspace{.3in}


\begin{center}\includegraphics[width=0.7\linewidth]{08-inference-2cat_test_files/figure-latex/unnamed-chunk-2-1} \end{center}

11.  Fill in the blanks on the graph above with the appropriate variables and values to complete the segmented bar plot showing the proportion of head injuries between those who wear helmets and those who do not wear helmets.  *Hint*: Use the conditional proportions from questions 9 and 10.

\vspace{1mm}

12.  Based on the segmented bar plot, Does there appear to be an association between helmet use and head injury?  Explain using the plot.

\vspace{0.7in}

13.  Calculate the summary statistic for this study.  Use helmet use (`Yes`) minus no helmet use (`No`) as the order of subtraction.

\vspace{0.5in}


14. What is the notation used for the value calculated in question 13?

\vspace{0.2in}
\newpage

#### Use statistical analysis methods to draw inferences from the data {-}

To test the null hypothesis we could use simulation methods as we did with a single categorical variable in class. In this in-class activity we will focus on theory-based methods.  Like with a single proportion, the difference in proportions can be mathematically modeled using the normal distribution if certain conditions are met.

Conditions for the sample distribution of $\hat{p}_1-\hat{p}_2$:

* Independence: The data are independent within and between the two groups. (*Remember*: This also must be true to use simulation methods!)

* Success-Failure Condition: The success-failure condition holds for each group.  Under the null hypothesis, the proportions $\pi_1$ and $\pi_2$ are equal, so we check the success-failure condition with our best estimate of these values under $H_0$, the pooled proportion from the two samples,

$$
\hat{p}_{pool} = \frac{\text{number of "successes"}}{\text{number of cases}} = \frac{\hat{p}_1 n_1+\hat{p}_2 n_2}{n_1+n_2}
$$

|     $$\hat{p}_{pool} * n_1 \ge 10, (1 - \hat{p}_{pool}) * n_1 \ge 10$$
|     $$\hat{p}_{pool} * n_2 \ge 10, (1 - \hat{p}_{pool}) * n_2 \ge 10$$

\vspace{.25in}

15.  Is the independence condition met? Explain your answer.

\vspace{0.5in}

16. Is the success-failure condition met for each group?  Show your work to verify your answer.

\vspace{1in}

To calculate the standardized statistic we use: 

$$
Z = \frac{\text{point estimate} - \text{null value}}{SE}
$$

where the null standard error is calculated using the pooled proportion of successes.

$$
SE_0(\hat{p}_1-\hat{p}_2)=\sqrt{\hat{p}_{pool}(1-\hat{p}_{pool})(\frac{1}{n_1}+\frac{1}{n_2})}
$$


\vspace{.25in}

17. Calculate the $SE_0(\hat{p}_1-\hat{p}_2)$.

\vspace{1in}

18. Calculate the standardized statistic.

\vspace{1in}

We will use the pnorm function in `R` to find the p-value. Use the provided `RScript` file and enter the value of the standardized statistic found in question 18 at xx in line 27, highlight and run lines 27 - 29.


```r
pnorm(xx, # Enter value of standardized statistic
      m=0, s=1 # Using the standard normal mean = 0, sd = 1
      lower.tail=TRUE) # Gives a p-value less than the standardized statistic
```
    

19.  Report the p-value from the `R` output.
\vspace{0.2in}

20.  Interpret the p-value in context of the study.

\vspace{1in}

21.  How much evidence does the p-value provide against the null hypothesis? *Hint*: Refer to the guidelines given in activity 6.

\vspace{0.4in}

22.  Write a conclusion to the test. 

\vspace{1in}

#### Types of errors {-}

Hypothesis tests are not flawless. In a hypothesis test, there are two competing hypotheses: the null and alternative. We make a decision about which might be true, but we may choose incorrectly.  

<!-- |       |            | Test Conclusion |                     | -->
<!-- |       |            | Reject $H_0$    | Fail to reject $H_0$| -->
<!-- |:-----:|:----------:|-----------------|---------------------| -->
<!-- | Truth | $H_0$ true |  good decision  |  Type 1 Error       | -->
<!-- |       | $H_A$ true |  Type 2 Error   |  good decision      | -->

\begin{table}
\caption{Four different possible scenarios for hypothesis tests.}
\centering
\begin{tabular}[h]{ll|cc}
\hline
 & &  \multicolumn{2}{c}{\textbf{Test conclusion}} \\
 &  & \multicolumn{1}{c}{Fail to reject $H_0$} & \multicolumn{1}{c}{Reject $H_0$}\\
\hline
 & $H_0$ true & Good decision & Type 1 Error\\
\hline
\textbf{Truth} & $H_A$ true & Type 2 Error & Good decision\\
\hline
\end{tabular}
\end{table}

Shown in the table above, a **Type 1 Error** is rejecting the null hypothesis when $H_0$ is actually true. A **Type 2 Error** is failing to reject the null hypothesis when the alternative is actually true.

23.  Using a significance level of 0.05, based on the p-value found in question 19, what decision do you make in regards to the null hypothesis?

\vspace{0.5in}

24. What type of error could we have made?

\vspace{0.5in}

25.  Write this error in context of the problem.

\vspace{1in}

26. Write a paragraph summarizing the results of the study.  Be sure to describe:

* Summary statistic

* Test statistic and interpretation

* P-value and interpretation

* Conclusion (written to answer the research question)

* Scope of inference

\vspace{2in}



### Out-of-class activity

The remaining questions cover simulation methods for testing two categorical variables. Use section 5.4.3 in the textbook and the TwoPropSim video to complete the following questions.  

1.  First let's think about how one simulation would be created on the null distribution using cards.  

    How many cards would you need?
\vspace{0.1in}

    What would be written on each card?

\vspace{0.5in}

2. Next, we would mix the cards together and shuffle into two piles.  How many cards would be in each pile?  What would each pile represent?

\vspace{1in}

3. Once we have one simulated sample, what would we calculate and plot on the null distribution?  *Hint*: What statistic are we calculating from the data?

\vspace{1in}

To create the null distribution, we will use the two proportion test.  We will need to enter the response variable name and the explanatory variable name for the formula, the data set name identified above as `injury`, the outcome for the explanatory variable to give the order of subtraction for First in Subtraction, number of repetitions, the outcome for the response variable that is a success for Response Value Numerator, and the direction of the alternative hypothesis.

The response variable name is Outcome and the explanatory variable name is Helmet.

\newpage

4.  What inputs should be entered for each of the following to create the simulation?

\vspace{.2in}
* First in Subtraction (What is the outcome for the explanatory variable that is used as first in the order of subtraction? `"Yes"` or `"No"`):

\vspace{.2in}
* Number of repetitions:
    
\vspace{.2in}
* Response Value Numerator (What is the outcome for the response variable that is considered a success? `"Head Injury"` or `"No Head Injury"`):

\vspace{.2in}
* As extreme as (enter the value for the sample difference in proportions):
    
\vspace{.2in}
* Direction (`"greater"`, `"less"`, or `"two-sided"`):

\vspace{.2in}

Using the `RScript` file for this activity, enter your answers for question 4 in place of the xx's in the two proportion test code to produce the null distribution with 1000 simulations, highlight and run lines 1 - 12 and then 33 - 39.


```r
two_proportion_test(formula = Outcome ~ Helmet, # response~explanatory
                    data= injury, # Name of dataset
                    first_in_subtraction = "xx", # Order of subtraction: enter the name of Group 1
                    number_repetitions = 1000, # Always use a minimum of 1000 repetitions
                    response_value_numerator = "xx", # Define which outcome is a success 
                    as_extreme_as = xx, # Type your calculated observed statistic (difference in sample proportions)
                    direction="xx") # Alternative hypothesis direction ("greater","less","two-sided")
```

5.  Sketch the null distribution created here.

\newpage


6. What value is the null distribution centered around?  Explain why this makes sense?

\vspace{1in}

7.  What is the p-value? *Remember*: This is the value given at the bottom of the null distribution.

\vspace{0.2in}

8.  Is the p-value found in question 7 for the out-of-class activity similar to the p-value found using the theory-based test?  Explain why you would expect this to be true.

\vspace{1in}

### Take-home messages

1.	When comparing two groups, we are looking at the relationship between two parameters.  In the null hypothesis we assume the two parameters are equal or that there is no difference between the two proportions.  

2.  We use the same guidelines for the strength of evidence as we did in activity 6.  

3.  The standardized statistic when the response variable is categorical is a Z score and compared to the standard normal distribution to find the p-value.  To find the standardardized statistic we take the value of the statistic minus the null value, divided by the standard error of the statistic.  The standardized statistic measures the number of standard errors the statistic is from the null value. 

4.  If we make the decision to reject the null hypothesis (the p-value is less than the significance level), we could have a possible Type I error.

5.  If we make the decision to fail to reject the null hypothesis (the p-value is greater than the significance leve), we could have a possible Type II error.


### Additional notes

Use this space to summarize your thoughts and take additional notes on this week's activity and material covered.
