# Inference for Two Categorical Variables: Confidence Intervals

## Reading Guide: Confidence Intervals for a Difference in Proportions

### Section 5.4.3 (Bootstrap confidence interval for a difference in proportions)  {-}

**Videos**  

* 5.4

\setstretch{1.25}

#### Reminders from previous sections {-}

Sample size of group 1: $n_1$

Sample size of group 2: $n_2$

Sample proportion of group 1:  $\hat{p_1}$

Sample proportion of group 2: $\hat{p_2}$

Population proportion of group 1: $\pi_1$

Population proportion of group 2: $\pi_2$

Parameter: a value summarizing a variable(s) for a population.

Statistic: a value summarizing a variable(s) for a sample.

Point estimate: another name for a statistic from a sample; our best guess for the parameter of interest.

Sampling distribution: plot of statistics from 1000s of samples of the same size taken from the same population.

Standard deviation of a statistic: the variability of statistics from 1000s of samples; how far, on average, each statistic is from the true value of the parameter.

Standard error of a statistic: estimated standard deviation of a statistic.

Confidence interval: a process to determine how large an effect is; a range of plausible values for the parameter. Also called ‘estimation’.

Margin of error: the value that is added to and subtracted from the sample statistic to create a confidence interval; half the width of a confidence interval.

Bootstrapping: the process of drawing with replacement $n$ times from the original sample.

Bootstrapped resample: a random sample of size $n$ from the original sample, selected with replacement.

Bootstrapped statistic: the statistic recorded from the bootstrapped resample.

Confidence level: how confident we are that the confidence interval will capture the parameter.


#### Notes {-}
To create a single bootstrap resample for two categorical variables, how many cards will you need and how will the cards be labeled?
\rgs

What is done with the cards once they are labeled?
\rgs

Interpretations of confidence level must include:
\rgs
\rgs

How do you determine if the results of a hypothesis test agree with a confidence interval?
\rgs
\rgs

How are the confidence level and the significance level related (for a two-sided test)?
\rgs

#### Example: CPR and blood thinner {-}
1.	What is the research question?
\rgs

2.	What is the sample difference in proportions presented in this example?  What notation would be used to represent this value?
\rgs

3.	What is the parameter (using a difference in proportion) representing in the context of this problem?  What notation would be used to represent this parameter?
\rgs
\rgs

4.	How could we use cards to simulate **one** bootstrap resample?  How many blue cards --- to represent what?  How many red cards --- to represent what?  What would we do with the cards?  What would you record once you have a simulated sample?
\rgs
\rgs
\rgs

5.	How can we calculate a 90% confidence interval from the bootstrap distribution for this example?
\rgs

6.	What was the 90% confidence interval? 
\rgs

7.	Interpret the confidence *interval* in the context of the problem.
\rgs
\rgs

8.	Interpret the confidence *level* in the context of the problem.
\rgs
\rgs

9.	Does the conclusion of the hypothesis test match the confidence interval?
\rgs


### Section 5.4.4 (Theory-based methods for a difference in proportions)  {-}

\setstretch{1}

In section 5.4.4, read only the sub-section on "Confidence interval for $\pi_1 - \pi_2$". The other sections were covered last week.

**Videos**  

* 5.4

\setstretch{1.25}

#### Reminders from previous sections {-}

Central Limit Theorem: For large sample sizes, the sampling distribution of a sample proportion (or mean) will be approximately normal (bell-shaped and symmetric).

#### Notes {-}

Conditions for the CLT to apply for two categorical variables

\rgi Independence: 
\rgs

\rgi \rgi Checked by: 
\rgs

\rgi Success-failure condition: 
\rgs

\rgi \rgi Checked by: 
\rgs

#### Formulas {-}

$SD(\hat{p_1} - \hat{p_2})=$
\rgs

Standard error of the difference in sample proportions when we do not assume the null hypothesis is true:
$SE(\hat{p_1} - \hat{p_2})=$
\rgs

Theory-based confidence interval for a difference in proportions: 
\rgs

Margin of error of a confidence interval for a difference in proportions: 
\rgs


#### Example: CPR and blood thinner {-}

1. What is the sample difference in proportions presented in this example?  What notation would be used to represent this value?
\rgs

2. What is the parameter (using a difference in proportion) representing in the context of this problem?  What notation would be used to represent this parameter?
\rgs
\rgs

3. Calculate the standard error of the difference in sample proportions without assuming a null hypothesis.
\rgs
\rgs

4. Calculate the 90% confidence interval using $z^*=1.65$ as the multiplier.
\rgs
\rgs

*Note: A confidence interval interpretation and confidence level interpretation for this example can be found in the Reading Guide solutions for Sections 5.4.1--5.4.3.*


\newpage

## Activity:  The Good Samaritan --- Estimation

\setstretch{1}

### Learning objectives

* Assess the conditions to use the normal distribution model for a difference in proportions.

* Create and interpret a theory-based confidence interval for a difference in proportions.

### Terminology review
In this week's activity, we will use theory-based methods to estimate the difference in two proportions. Some terms covered in this activity are:

* Standard normal distribution

* Independence and success-failure conditions

To review these concepts, see Chapter 5 in your textbook.

### The Good Samaritan

Researchers at the Princeton University wanted to investigate influences on behavior.  The researchers randomly select 67 students from the Princeton Theological Seminary to participate in a study.  Only 47 students chose to participate in the study, and the data below includes 40 of those students (7 students were removed from the study for various reasons).  As all participants were theology majors planning a career as a preacher, the expectation was that all would have a similar disposition when it comes to helping behavior.  Each student was then shown a 5-minute presentation on the Good Samaritan, a parable in the bible which emphasizes the importance of helping others.  After the presentation, the students were told they needed to give a talk on the Good Samaritan parable at a building across campus.  Half the students were told they were late for the presentation; the other half told they could take their time getting across campus (the condition was randomly assigned).  On the way between buildings, an actor pretending to be a homeless person in distress asked the student for help.  The researchers recorded whether the student helped the actor or not.  The results of the study are shown in the table below.  Do these data provide evidence that those in a hurry will be less likely to help people in need in this situation?  Use the order of subtraction hurry – no hurry.

|                    | Hurry Condition | No Hurry Condition | Total |
|--------------------|-----------------|--------------------|-------|
| Helped Actor       |        2        |         11         |   13  |
| Did Not Help Actor |        18       |          9         |   27  |
| Total              |        20       |         20         |   40  |

#### Vocabulary review. Complete Q1--Q3 before class. {-}

1.  Report the point estimate for this study.  

\vspace{0.4in}


Use the following code to create a segmented bar plot of .....


\begin{center}\includegraphics[width=0.7\linewidth]{22-inference-2cat_CI-Simulation_files/figure-latex/unnamed-chunk-1-1} \end{center}

2.  Sketch the segmented bar plot created here.  

\vspace{1.5in}

3. Does there appear to be an associated between the condition assigned and the behavior?  Explain.

\vspace{1in}

#### Use statistical analysis methods to draw inferences from the data {-}

4.  Write the parameter of interest in context of the study. Use proper notation.

\vspace{1in}

We will use the `two_proportion_bootstrap_CI()` function in `R` (in the `catstats` package) to simulate the bootstrap distribution of differences in sample proportions and calculate a confidence interval. We will need to enter the response variable name and the explanatory variable name for the formula, the data set name (identified above as `samaritan`), the outcome for the explanatory variable that is first in subtraction, number of repetitions, the outcome for the response variable that is a success (what the numerator counts when calculating a sample proportion), and the confidence level as a decimal.

The response variable name is `Behavior` and the explanatory variable name is `Condition`.

5. What values should be entered for each of the following into the simulation to create a 95\% confidence interval?

\vspace{.5mm}
* First in subtraction (What is the outcome for the explanatory variable that is used as first in the order of subtraction? `"Hurry"` or `"No hurry"`):

\vspace{.2in}
* Response value numerator (What is the outcome for the response variable that is considered a success? `"Help"` or `"No help"`):

\vspace{.2in}
* Number of repetitions:

\vspace{.2in}
* Confidence level (entered as a decimal):

\vspace{.2in}

Using the `R` script file for this activity, enter your answers for question 1 in place of the `xx`'s to produce the bootstrap distribution with 1000 simulations; highlight and run lines 1--22.


```r
two_proportion_bootstrap_CI(formula = Behavior ~ Condition, 
        data=samaritan, # Name of data set
        first_in_subtraction = "Hurry", # Order of subtraction: enter the name of Group 1
        response_value_numerator = "Help", # Define which outcome is a success 
        number_repetitions = 1000, # Always use a minimum of 1000 repetitions
        confidence_level = 0.95) # Enter the level of confidence as a decimal
```
6.  Where is the bootstrap distribution centered?  Explain why.

\vspace{0.8in}

7. Report the bootstrap 95\% confidence interval. 

\vspace{0.4in}

8. What percentile of the bootstrap distribution does the upper value of the confidence interval represent?

\vspace{0.3in}

9. Interpret the 95\% confidence interval in context of the problem.

\vspace{1in}

10.  What conclusion to the research question can be made based on the 95\% confidence interval?

\vspace{0.8in}

### Relative risk

Another summary statistic that can be calculated for two categorical variables is the relative risk.  The relative risk is calculated as the ratio of the conditional proportions:


$$\text{relative risk} = \frac{\hat{p}_1}{\hat{p}_2}.$$

10.  Calculate the relative risk of helping for those who were assigned to the hurry condition compared to those who were not.

\vspace{.8in}

11.  Interpret the relative risk in context of the problem.

\vspace{1in}

### Take-home messages

1. Simulation-based methods and theory-based methods should give the same results for a study *if the validity conditions are met*.  For both methods, observational units need to be independent. To use theory-based methods, additionally, the success-failure condition must be met. Check the validity conditions for each type of test to determine if theory-based methods can be used.

2. When calculating the standard error for the difference in sample proportions when doing a hypothesis test, we use the pooled proportion of successes, the best estimate for calculating the variability *under the assumption the null hypothesis is true*.  For a confidence interval, we are not assuming a null hypothesis, so we use the values of the two conditional proportions to calculate the standard error.  Make note of the difference in these two formulas. 

3.  In addition to estimating the difference in proportions for two categorical variables we can also find the relative risk, the ratio of conditional proportions.  

4.  Increasing sample size will result in less sample-to-sample variability in statistics, which will result in a smaller standard error, and thus a narrower confidence interval.  

5. To create one simulated sample on the bootstrap distribution for a difference in sample proportions, label $n_1 + n_2$ cards with the outcomes for the original responses.  Keep groups separate and randomly draw with replacement $n_1$  times from group 1 and $n_2$ times from group 2.  Calculate and plot the resampled difference in the proportion of successes. 


### Additional notes

Use this space to summarize your thoughts and take additional notes on this week's activity and material covered.
