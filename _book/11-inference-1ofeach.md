# Inference for a Quantitative Response with Independent Samples

## Reading Guide: Inference for a difference in two means

### Section 6.3 (Inference for a difference in two means) {-}

**Videos**  

* 6.3
* TwoMeanRand

\setstretch{1.25}
#### Reminders from previous sections {-}

$n_1$= sample size of group 1

$n_2$ = sample size of group 2

$\overline{x}$ = sample mean

$s$ = sample standard deviation

$\mu$ = population mean

$\sigma$ = population standard deviation

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


Conditions to use the CLT for a difference in two means:
1.	Independence: 
\rgs

\rgi a.	Checked by: 
\rgs

2.	Normality: 
\rgs

\rgi a.	Checked by: 
\rgs

In a two-sample t-test, how are the degrees of freedom determined?
\rgs		

True or False: A large p-value indicates that the null hypothesis is true.
\rgs

#### Formulas {-}

$SE(\overline{x_1} - \overline{x_2})=$
\rgs

$t=$
\rgs

Confidence interval: 
\rgs

#### Notation {-}

$mu_1$ represents 
\rgs

$\mu_2$ represents 
\rgs

$\sigma_1$ represents 
\rgs

$\sigma_2$ represents 
\rgs

$\overline{x_1}$ represents 
\rgs

$\overline{x_2}$ represents 
\rgs

$s_1$ represents 
\rgs

$s_2$ represents 
\rgs

#### Example: Test scores {-}

1.	What are the observational units?
\rgs

2.	What are the sample statistics presented in this example?  What notation would be used to represent each value?
\rgs

3.	What is the parameter representing in the context of this problem?  What notation would be used to represent this parameter?
\rgs
\rgs

4.	What is the research question?
\rgs

5.	Write the null and alternative hypothesis in appropriate notation.
\rgs

6.	How could we use cards to simulate **1** sample *which assumes the null hypothesis is true*?  How many cards?  What is written on the cards?  What would we do with the cards?  What would you record once you have a simulated sample?
\rgs
\rgs

7.	After 1000 shuffles are generated, where is the resulting simulated distribution centered?  Why does that make sense?
\rgs
\rgs

8.	How was the p-value for this test found?

The proportion of simulated null samples at ____ or ___________.
\rgs

9.	Interpret the p-value in the context of the problem.
\rgs
\rgs

10.	From these data, can we conclude the exams are equally difficult?
\rgs

11.	What type of error may have occurred at the 5% significance level?  Interpret that error in context.
\rgs
\rgs

#### Example: ESC and heart attacks {-}

1.	What is the research question?
\rgs

2.	What are the observational units?
\rgs

3.	What variables are recorded?  Give the type and role of each.
\rgs
\rgs

4.	What are the sample statistics presented in this example?  What notation would be used to represent each value?
\rgs

5.	What is the parameter representing in the context of this problem?  What notation would be used to represent this parameter?
\rgs
\rgs

6.	How could we use cards to simulate **1** bootstrap resample *which does not assume the null hypothesis is true*?  How many cards?  What is written on the cards?  What would we do with the cards?  What would you record once you have a simulated sample?
\rgs
\rgs

7.	After 1000 resamples are generated, where is the resulting bootstrap distribution centered?  Why does that make sense?
\rgs
\rgs

8.	Does the 90% confidence interval show that there is a difference across the two treatments?
\rgs
\rgs

#### Example: NC births {-}

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

9. Are the independence and normality conditions satisfied?
\rgs
\rgs

10. Calculate the standard error of the difference in sample means.
\rgs

11. Calculate the t-score (the standardized statistic for the sample mean).
\rgs

12. What distribution should the t-score be compared to in order to calculate a p-value?
\rgs

13. What was the p-value of the test?
\rgs

14. What conclusion should the researcher make?
\rgs

15. Calculate a 95% confidence interval for the parameter of interest using `qt(0.975, df = 49) = 1.677` as the $t^\star$ value.
\rgs

16. Interpret your interval in the context of the problem.
\rgs
\rgs

\newpage

## Activity:  Weather Patterns and Record Snowfall

\setstretch{1}

### Learning objectives

* Write out the null and alternative hypothesis for one categorical and one quantitative variable.

* Calculate and carry-out simulation-based hypothesis test for a difference in means.

* Interpret and evaluate a p-value.

* Find a bootstrap confidence interval for a difference in means.

* Interpret a confidence interval for a difference in means.

* Use a confidence interval to determine the conclusion of a hypothesis test.

### Terminology review

In this week's in-class activity, we will use simulation-based methods to analyze one categorical and one quantitative variable, where the groups formed by the categorical variable are independent. Some terms covered in this activity are:

* Independent groups

* Difference in means

To review these concepts, see Section 6.3 in the textbook.

### Weather patterns and record snowfall

In the winter of 2018-2019, Bozeman had a record snowfall which resulted in the collapse of two flat-roofed buildings on the MSU campus.  A writer for the Washington Post predicted the heavy snowfall for 2018-2019 due to the El Ni\latexcode{\~{n}}o weather pattern that occurred in that season. A meteorologist in Montana wanted to see if the weather pattern really was associated with total snowfall. She obtained historical data from 44 years on the weather pattern (El Ni\latexcode{\~{n}}o or La Ni\latexcode{\~{n}}a) and snowfall (in inches) at the Billings Weather Station.  

Notice from the `R` code that the name of the data set is `Snow`.


```r
Snow <- read.csv("data/SnowfallbyWeatherPattern.csv") # Read in data set
# Code categorical variables as factors
Snow <- # Write over original data with the following
  Snow %>% # Pipe data set into
  mutate(WeatherPattern = factor(WeatherPattern)) # Convert to factor
```

\newpage


```r
# Side-by-side box plots
Snow %>%
ggplot(aes(x = WeatherPattern, y = Snowfall)) +
    geom_boxplot() + 
    labs(title = "Snowfall by weather pattern",
         x = "Weather pattern") +
    coord_flip()
```



\begin{center}\includegraphics[width=0.6\linewidth]{11-inference-1ofeach_files/figure-latex/unnamed-chunk-2-1} \end{center}


```r
# Summary statistics
Snow %>% 
     summarize(favstats(Snowfall~WeatherPattern))
```

```
#>   WeatherPattern  min   Q1 median   Q3   max     mean       sd  n missing
#> 1        El_Nino 31.9 46.4   57.7 64.3  87.9 56.23043 13.00823 23       0
#> 2        La_Nina 44.5 51.4   60.9 70.3 107.2 63.13333 15.48626 21       0
```


#### Quantitative variables review.  Complete Q1--Q5 before class. {-}

1. The two variables assessed in this study are the type of weather pattern and snowfall.  Identify the role for each variable (explanatory, response).

\vspace{.6in}

2. Which group (El Ni\latexcode{\~{n}}o or La Ni\latexcode{\~{n}}a) has the highest center? Explain which measure of center you are using.

\vspace{.6in}

3.  Using the side-by-side boxplots, which group has the largest spread?  How did you make that choice?

\vspace{.6in}

\newpage

4.  Is this an experiment or an observational study? Justify your answer.

\vspace{1in}

5.  Is this a paired data set or two independent groups?  Explain your reasoning.

\vspace{1in}

#### Ask a research question {-}

6.  Write out the parameter of interest in context of the study.  Use proper notation and be sure to define your subscripts.  Use El Ni\latexcode{\~{n}}o minus La Ni\latexcode{\~{n}}a as the order of subtraction.

\vspace{1in}

7.  What are the two competing possibilities we will evaluate in this study?

\vspace{1in}

8.  Identify which of your answers in question 7 is the null hypothesis and which is the alternative hypothesis. 

\vspace{1in}

#### Summarize and visualize the data {-}

9. Calculate the summary statistic.  Use El Ni\latexcode{\~{n}}o minus La Ni\latexcode{\~{n}}a as the order of subtraction. What is the appropriate notation for the statistic?

\vspace{0.5in}

\newpage 

#### Use statistical inferential methods to draw inferences from the data {-}

Remember that the null distribution is created based on the assumption the null hypothesis is true.  In this study, we assume there is no association between variables.  This means that a snowfall value could be in either an El Ni\latexcode{\~{n}}o year or a La Ni\latexcode{\~{n}}a year.

To demonstrate this your instructor will use cards to represent the sample.  

10.  How many cards will we start with?

\vspace{0.5in}

11.  What will we write on each card?

\vspace{0.5in}

12.  Next we will mix the cards together and shuffle into two piles.  How many cards will go into each pile?  What should we label the piles?

\vspace{1in}

13.  What value is calculated from the cards and plotted on the null distribution?  *Hint*: What statistic are we calculating from the data?

\vspace{0.3in}

14.  Once we create a null distribution of 1000 simulations, at what value do you expect the distribution to be centered?  Explain your reasoning.

\vspace{.8in}

**Simulation method**

15.  When using the two mean test we need to enter the name of the response variable, `Snowfall` and the name of the explanatory variable, `WeatherPattern` for the formula.  The name of the data set as shown above is `Snow`.  What values should be entered for each of the following into the two mean test to create 1000 simulations?

\vspace{.2in}
* First in Subtraction (What is the outcome for the explanatory variable that is used as first in the order of subtraction? `"El_Nino"` or `"La_Nina"`:

\vspace{.2in}
* Number of repetitions:
    
\vspace{.2in}
* As extreme as:
    
\vspace{.2in}
* Direction (`"greater"`, `"less"`, or `"two-sided"`):

\vspace{.2in}

16.  Using the `R` script file for this activity, enter your answers for question 15 in place of the xx's to produce the null distribution with 1000 simulations.  Highlight and run lines 1--29.


```r
two_mean_test(Snowfall~WeatherPattern, data = Snow,  # Variables and data
                    first_in_subtraction = "xx", # First outcome in order of subtraction
                    number_repetitions = 1000,  # Number of simulations
                    as_extreme_as = xx,  # Observed statistic
                    direction = "xx")  # Direction of alternative: "greater", "less", or "two-sided"
```

Sketch the null distribution created using the code above.
\vspace{1.5in}


17.  Report the p-value. How much evidence does the p-value provide against the null hypothesis?

\vspace{0.5in}

18. Using bootstrapping find a 95\% confidence interval. Use the provided `R` script file for the two mean bootstrap CI function. Enter the variable names and data set name as in the two mean test, outcome name for the first in subtraction, number of repetitions, and the confidence level as a decimal.  Highlight and run lines 32--35. Report the 95\% confidence interval in interval notation.

```r
two_mean_bootstrap_CI(RESPONSE~EXPLANATORY, data = DATASET,  # Variables and data
                      first_in_subtraction = "xx", # First value in order of subtraction
                      number_repetitions = 1000,  # Number of simulations
                      confidence_level = xx)
```

\vspace{0.3in}

19. Interpret the interval you calculated in question 18. 

\vspace{1in}

#### Communicate the results and answer the research question {-}

20.  Write a paragraph summarizing the results of the study.  Be sure to describe:

* Summary statistic

* P-value and interpretation

* Conclusion (written to answer the research question)

* Confidence interval and interpretation

* Scope of inference

\vspace{3in}

#### Revisit and look forward {-}

21.  Would the results from the theory-based test match the results we saw with the simulation?  Explain why or why not.

\vspace{1in}

22. If we had data on 45 La Ni\latexcode{\~{n}}a years and 47 El Ni\latexcode{\~{n}}o years and found a similar summary statistic, what would happen to the p-value?  The width of the confidence interval?  The power of the test?

\vspace{1in}




### Out-of-class activity

The remaining questions cover inference for a difference in means using theory based methods.  Use section 6.3.3 in the textbook and the TwoMeanTheory video to complete the following questions.

The sampling distribution for $\bar{x}_1-\bar{x}_2$ can be modeled using a normal distribution when certain conditions are met.

Conditions for the sample distribution of $\bar{x}_1-\bar{x}_2$.

* Independence: The sample’s observations are independent

* Normality: each sample should be approximately normal

  + For each sample: 

    - $n < 30$: If the sample size n is less than 30 and there are no clear outliers in the data, then we typically assume the data come from a nearly normal distribution to satisfy the condition.

    - $n \le 30$: If the sample size n is at least 30 and there are no particularly extreme outliers, then we typically assume the sampling distribution of $\bar{x}$ is nearly normal, even if the underlying distribution of individual observations is not.

1.  In question 21 in the in-class activity we noted that there were issues with the normality condition.  Explain how that will affect the p-value and confidence interval found with theory-based methods.

\vspace{1in}

To find the Standardized Statistic for the difference in means we will calculate:

$$T = \frac{\bar{x}_1-\bar{x}_2}{SE(\bar{x}_1-\bar{x}_2)}$$

where the standard error of the difference in means is calculated using:

$$SE(\bar{x}_1 -\bar{x}_2)=\sqrt{\frac{s_1^2}{n_1}+\frac{s_2^2}{n_2}}$$
\newpage

2.  Calculate the standard error of the difference in means.

\vspace{0.5in}

3.  Calculate the standardized statistic for the difference in means.

\vspace{0.5in}

Using the provided `R` script file, enter the T score (for xx) into the pt function using a df = minimum(n - 1) = 21 - 1 = 20, and lower.tail = TRUE to find the p-value.  Highlight and run line 39.


```r
2*pt(xx, df=20, lower.tail=TRUE)
```

4. Explain why we multiplied by 2 in the code above.

\vspace{0.3in}

5. Report the p-value from the `R` output.

\vspace{0.3in}

6.  Explain why the p-value found using theory-based methods from the p-value found using simulation methods in the in-class activity.

\vspace{0.5in}


To calculate the 95\% confidence interval use the formula:

$$\bar{x}_1- \bar{x}_2\pm t^* SE(\bar{x}_1- \bar{x}_2)$$

We will need to find the $t^*$ multiplier using the function qt.  For a 95% confidence interval we are finding the $t^*$ value at the 97.5th percentile with df = minimum(n - 1) = 21 - 1 = 20.


```
#> [1] 2.085963
```

7.  Calculate the 95\% confidence interval using theory-based methods.

\vspace{1in}

### Take-home messages

1.	This activity differs from Activity 10 because the responses are independent not paired.  These data are analyzed as a difference in means.  

2. 


### Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity.



