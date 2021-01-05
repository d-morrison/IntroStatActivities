# Inference for a Quantitative Response with Paired Samples

## Reading Guide: Inference for a Single Mean or Paired Mean Difference 

### Section 6.1 (Inference for one mean) {-}

**Videos**  

* 6.1
* OneMeanTheory

\setstretch{1.25}

#### Reminders from previous sections {-}

$n$ = sample size

$\overline{x}$ = sample mean

$s$ = sample standard deviation

$\mu$ = population mean

$\sigma$ = population standard deviation

General steps of a hypothesis test:

1. Frame the research question in terms of hypotheses.

2. Collect and summarize data using a test statistic.
	
3. Assume the null hypothesis is true, and simulate or mathematically model a null distribution for the test statistic.

4. Compare the observed test statistic to the null distribution to calculate a p-value.

5. Make a conclusion based on the p-value and write the conclusion in context.

Parameter: a value summarizing a variable(s) for a population.

Statistic: a value summarizing a variable(s) for a sample.

Sampling distribution: plot of statistics from 1000s of samples of the same size taken from the same population.

Standard deviation of a statistic: the variability of statistics from 1000s of samples; how far, on average, each statistic is from the true value of the parameter.

Standard error of a statistic: estimated standard deviation of a statistic.

Hypothesis test: a process to determine how strong the evidence of an effect is.
		
\rgi Also called a ‘significance test’.

Simulation-based method: Simulate lots of samples of size $n$ under assumption of the null hypothesis, then find the proportion of the simulations that are at least as extreme as the observed sample statistic.

Theory-based method: Develop a mathematical model for the sampling distribution of the statistic under the null hypothesis and use the model to calculate the probability of the observed sample statistic (or one more extreme) occurring.

Null hypothesis ($H_0$): the skeptical perspective; no difference; no change; no effect; random chance; what the researcher hopes to prove is **wrong**.

Alternative hypothesis ($H_A$): the new perspective; a difference/increase/decrease; an effect; not random chance; what the researcher hopes to prove is **correct**.

Null value: the value of the parameter when we assume the null hypothesis is true (labeled as $parameter_0$).

Null distribution:  the simulated or modeled distribution of statistics (sampling distribution) we would expect to occur if the null hypothesis is true.

P-value: probability of seeing the observed sample data, or something more extreme, assuming the null hypothesis is true.

$\implies$ Lower the p-value the stronger the evidence AGAINST the null hypothesis and FOR the alternative hypothesis.

Decision: a determination of whether to reject or fail to reject a null hypothesis based on a p-value and a pre-set level of significance.

* If p-value $\leq \alpha$, then reject $H_0$.

* If p-value $> \alpha$, then fail to reject $H_0$.

Significance level ($\alpha$): a threshold used to determine if a p-value provides enough evidence to reject the null hypothesis or not.

\rgi Common levels of $\alpha$ include 0.01, 0.05, and 0.10.

Statistically significant: results are considered statistically significant if the p-value is below the significance level.

Confidence interval: a process to determine how large an effect is; a range of plausible values for the parameter.
\rgi Also called ‘estimation’.

Margin of error: the value that is added to and subtracted from the sample statistic to create a confidence interval; half the width of a confidence interval.

Bootstrapping: the process of drawing with replacement n times from the original sample.

Bootstrapped resample: a random sample of size n from the original sample, selected with replacement.

Bootstrapped statistic: the statistic recorded from the bootstrapped resample.

Confidence level: how confident we are that the confidence interval will capture the parameter.

Bootstrap X% confidence interval: ($(\frac{(1-X)}{2})^{th}$ percentile,$(X+(\frac{(1-X)}{2})^{th}$ percentile) of a bootstrap distribution.

Central Limit Theorem: For large sample sizes, the sampling distribution of a sample mean (or proportion) will be approximately normal (bell-shaped and symmetric).


#### Vocabulary {-}

$t$-distribution: 
\rgs 

\rgi Note: width depends on the sample size (used to calculate degrees of freedom – df for short)
\rgi The larger df, the Closer the $t$ distribution is to the standard Normal distribution

Degrees of freedom (df): 
\rgs 

T-score: 
\rgs 

#### Notes {-}

To create a bootstrap distribution test, how many cards will you need and how will the cards be labeled?
\rgs 

What do you do with the cards after labeling them?
\rgs 

After resampling, what value will be plotted on the bootstrap distribution?
\rgs 

True or False: Bootstrapping can only be used if the sample size is small.
\rgs 

Why do we use a $t$ distribution rather than the Normal distribution when analyzing quantitative data?
\rgs 

How do we calculate degrees of freedom for the $t$-distribution?
\rgs 

Conditions to use the CLT for means:

1. Independence: 
\rgs 

\rgi Checked by: 
\rgs 

2. Normality: 
\rgs 
	
\rgi Checked by:
\rgs 

#### Formulas{-}

$SE(\overline{x})=$
\rgs 

$t=$
\rgs 

Confidence interval: 
\rgs 

#### Notation {-}

$\mu_0$ represents 
\rgs 


#### Example: Edinburgh rentals {-}

1. What are the observational units?
\rgs 

2. What is the sample statistics presented in this example?  What notation would be used to represent each value?
\rgs 

3. What is the parameter representing in the context of this problem?  What notation would be used to represent this parameter?
\rgs 
\rgs 

4. How could we use cards to simulate **1** bootstrap resample *which does not assume the null hypothesis is true*?  How many cards?  What is written on the cards?  What would we do with the cards?  What would you record once you have a simulated sample?
\rgs 
\rgs 


5. After 1000 resamples are generated, where is the resulting bootstrap distribution centered?  Why does that make sense?
\rgs 
\rgs 

6. Based on Figure 6.3, give the confidence interval for each of the following confidence levels.

\rgi 90% confidence interval = 
\rgs 

\rgi 95% confidence interval = 
\rgs 

\rgi 99% confidence interval = 
\rgs 

7. Interpret your 99% confidence interval in the context of the problem.
\rgs 
\rgs 

8. Use figure 6.4 to determine a 90% confidence interval for the true standard deviation for three bedroom flats in Edinburgh.
\rgs 


#### Example: Mercury content of dolphin muscle {-}

1. What is the research question?
\rgs 

2. What are the observational units?
\rgs 

3. Can the results of this study be generalized to a larger population?
\rgs 

4. What is the sample statistics presented in this example?  What notation would be used to represent each value?
\rgs 

5. What is the parameter representing in the context of this problem?  What notation would be used to represent this parameter?
\rgs 
\rgs 

6. Are the independence and normality conditions satisfied?
\rgs 
\rgs 

7. Calculate the standard error of the sample mean.
\rgs 

8. What distribution should be referenced to find the multiplier for a 95% confidence interval?
\rgs 

9. Using $t^\star=2.10$, calculate a 95% confidence interval for $\mu$.
\rgs 


10. Interpret the interval calculated in the context of the problem.
\rgs 
\rgs 

#### Example: Cherry Blossom Race {-}

1.	What is the research question?
\rgs

2.	What are the observational units?
\rgs

3.	Can the results of this study be generalized to a larger population?
\rgs

4.	What is the sample statistics presented in this example?  What notation would be used to represent each value?
\rgs

5.	What is the parameter representing in the context of this problem?  What notation would be used to represent this parameter?
\rgs
\rgs

6.	Are the independence and normality conditions satisfied?
\rgs
\rgs

7.	Write the null and the alternative hypothesis in words.
\rgs
\rgs

8.	Write the null and  the alternative hypothesis in notation.
\rgs

9.	Calculate the standard error of the sample mean.
\rgs

10.	Calculate the t-score (the standardized statistic for the sample mean).
\rgs

11.	What distribution should the t-score be compared to in order to calculate a p-value?
\rgs

12.	What was the p-value of the test? 
\rgs

13.	Interpret the p-value in the context of the problem.
\rgs
\rgs

14.	At the 5% significance level, what decision would you make?  What type of error might that be?
\rgs

15.	What conclusion should the researcher make?
\rgs

16.	Are the results in this example statistically significant?  Justify your answer.
\rgs


### Section 6.2 (Inference for paired mean difference)  {-}

\setstretch{1}

**Videos**  

* 6.2

\setstretch{1.25}

#### Vocabulary {-}

Paired data: 
\rgs

\rgi Paired with repeated measures: 
\rgs

\rgi Paired with matching: 
\rgs

#### Notes {-}

For each of the following scenarios, determine if the two sets of observations are paired or independent.

1.	To test whether the IQ is related to genetics, researchers measured the IQ of two biological parents and the IQ of their first-born child.  The average parent IQ was compared to the IQ of the first born child.
\rgs

2.	Hoping to see how exercise is related to heart rates, researchers asked a group of 30 volunteers to do either bicycle kicks or jumping jacks for 30 seconds.  Volunteer’s heart rate was measured at the end of 30 seconds, then the volunteers sat for a 5 minute rest period.  At the end of the rest period, the volunteer performed the other activity and their heart rate was measured again.  Which activity was done first was randomly assigned.
\rgs

3.	Researchers hoping to look into the effectiveness of blended learning gathered two random samples of 50 8th graders (one at Belgrade Middle School which has 5 full-day instruction currently, the other from Chief Joseph Middle School which utilizes a 2-day on, 3-day off blended learning structure).  All 8th graders were given the same lessons and same homework, then asked to take the same end-of-unit test.
\rgs

Conditions to use the CLT for paired mean difference:

1.	Independence: 
\rgs

\rgi a.	Checked by: 
\rgs 

2.	Normality: 
\rgs

\rgi a.	Checked by:
\rgs

#### Formulas{-}

$SE(\overline{x_d})=$
\rgs

$t=$
\rgs

Confidence interval: 
\rgs

#### Notation {-}

$\overline{x_d}=$
\rgs

$s_d=$ 
\rgs

$\mu_d=$ 
\rgs

$s_d=$ 
\rgs

#### Example: Tires {-}

1.	What are the observational units?
\rgs

2.	Why should we treat these data as paired rather than two independent samples?
\rgs

3.	What is the sample statistics presented in this example?  What notation would be used to represent each value?
\rgs


4.	What is the parameter representing in the context of this problem?  What notation would be used to represent this parameter?
\rgs
\rgs

5.	Write the null and alternative hypothesis in appropriate notation.
\rgs


6.	How could we use cards to simulate **1** bootstrap resample *which assumes the null hypothesis is true*?  How many cards?  What is written on the cards?  What would we do with the cards?  What would you record once you have a simulated sample?
\rgs
\rgs


7.	After 1000 resamples are generated, where is the resulting null distribution centered?  Why does that make sense?
\rgs


8.	What was the p-value of the test?  Interpret this p-value in the context of the problem.
\rgs
\rgs

9.	Write a conclusion in the context of the problem.
\rgs


#### Example: College textbook prices {-}

1. What is the research question?
\rgs

2. What are the observational units?
\rgs

3. Why should we treat these data as paired rather than two independent samples?
\rgs

4. What is the sample statistics presented in this example?  What notation would be used to represent each value?
\rgs

5. What is the parameter representing in the context of this problem?  What notation would be used to represent this parameter?
\rgs
\rgs

6. How could we use cards to simulate **1** bootstrap resample *which does not assume the null hypothesis is true*?  How many cards?  What is written on the cards?  What would we do with the cards?  What would you record once you have a simulated sample?
\rgs
\rgs

7. After 1000 resamples are generated, where is the resulting bootstrap distribution centered?  Why does that make sense?
\rgs
\rgs

8. Give the 95% confidence interval for $\mu_d$.
\rgs

9. Interpret your 95% confidence interval in the context of the problem.
\rgs
\rgs

10. Are the independence and normality conditions satisfied?
\rgs
\rgs

11. Write the null and the alternative hypothesis in words.
\rgs
\rgs

12. Calculate the standard error of the sample mean difference.
\rgs

13. Calculate the t-score (the standardized statistic for the sample mean difference).
\rgs

14. What distribution should the t-score be compared to in order to calculate a p-value?
\rgs

15. What was the p-value of the test? 
\rgs
	
16. At the 5% significance level, what decision would you make?  What type of error might that be?
\rgs

17. What conclusion should the researcher make?
\rgs

18. Are the results in this example statistically significant?  Justify your answer.
\rgs

19. Using $t^\star=2.00$, calculate a 95% confidence interval for $\mu_d$.
\rgs
	
20. Interpret the interval calculated in the context of the problem.
\rgs
\rgs


\newpage

## Activity:  COVID-19 and Air Pollution

\setstretch{1}

### Learning outcomes

* Given a research question involving paired differences, construct the null and alternative hypotheses
  in words and using appropriate statistical symbols.
  
* Describe and perform a simulation-based hypothesis test for a paired mean difference.

* Interpret and evaluate a p-value for a simulation-based hypothesis test for a paired mean difference.

* Use bootstrapping to find a confidence interval for a paired mean difference.

* Interpret a confidence interval for a paired mean difference.

* Use a confidence interval to determine the conclusion of a hypothesis test.

### Terminology review

In this week's activity, we will analyze paired quantitative data using simulation-based methods. Some terms covered in this activity are:

* Mean difference

* Paired data

* Independent groups

* Shifted null distribution

To review these concepts, see Section 6.2 in the textbook.

### COVID-19 and air pollution

In June 2020, the social distancing efforts and stay-at-home directives to help combat the spread of COVID-19 appeared to help 'flatten the curve' across the United States, albeit at a high cost to many individuals and businesses. The impact of these measures, though, goes far beyond the infection and death rates from the disease. You may have seen images comparing air quality in large international cities like Rome, Milan, Wuhan, and New Delhi such as the one pictured in Figure \@ref(fig:covid), which seem to indicate, perhaps unsurprisingly, that fewer people driving and factories being shut down have reduced air pollutants. 

Have high population-density US cities seen the same improved air quality conditions? To study this question, data was gathered from the U.S. Environmental Protection Agency (EPA) AirData website which records the ozone (O3) and fine particulate matter (PM2.5) values for cities across the U.S. These measures are used to calculate an air quality index (AQI) score for each city each day of the year. Thirty-three of the most densely populated US cities were selected and the AQI score recorded for April 20, 2020 as well as the five-year median AQI score for April 20th (2015--2019). Note that higher AQI scores indicate worse air quality. A box plot of the differences in AQI scores for the 33 cities and a table of summary statistics are shown below.


\begin{figure}

{\centering \includegraphics[width=0.6\linewidth]{images/air_pollution_greyscale} 

}

\caption{The India Gate in New Delhi, India.}(\#fig:covid)
\end{figure}

\vspace{.05in}




\begin{center}\includegraphics[width=0.6\linewidth]{10-paired_files/figure-latex/unnamed-chunk-2-1} \end{center}

\vspace{.2in}


Table: Summary statistics for current AQI scores, median AQI scores from 2015--2019, and the differences in AQI scores.

|               |         Mean         | Standard deviation | Sample size |
|:-------------:|:--------------------:|--------------------|-------------|
| Current       | $\bar{x}_1$ = 47.394 | $s_1$ = 14.107     | $n_1$ = 33  |
| 5 Year Median | $\bar{x}_2$ = 51.545 | $s_2$ = 17.447     | $n_2$ = 33  |
| Differences   | $\bar{x}_d$ = -4.152 | $s_d$ = 17.096     | $n_d$ = 33  |

\newpage
#### Vocabulary review.  Complete Q1--Q5 before class.{-}

1. What is the sample size? 

\vspace{0.5in}

2.  Identify the variables in this study.  What role do each have?

\vspace{.8in}

3. Why is this treated as a paired study design and not two independent samples?

\vspace{1in}

4. Is this an experiment or observational study? Justify your answer.

\vspace{0.3in}

5.  Are the differences in AQI scores independent for each case (US city)?  Explain.

\vspace{0.3in}

#### Ask a research question {-}

6. What are the two competing possibilities to run a hypothesis test for this study?

\vspace{1in}

7. Write the null hypothesis in words.

\vspace{1in}

8. What is the research question?

\vspace{1in}

9. Write the alternative hypothesis in notation.

\vspace{1in}

#### Summarize and visualize the data  {-}

10. Report the summary statistic for the data.  

\vspace{0.3in}

11. What notation is used for the value in question 10? 

\vspace{0.3in}


#### Use statistical inferential methods to draw inferences from the data {-}

To simulate the null distribution we will use a bootstrapping method.  Recall that the null distribution must be created under the assumption that the null hypothesis is true.  Therefore, before bootstrapping we will need to shift each data point by the difference $\mu_0 - \bar{x}$.  This will ensure that the mean of the shifted data is $\mu_0$ and that the simulated null distribution will be centered at the null value.  

12. Calculate the difference $\mu_0 - \bar{x}$.  Will we need to shift the data up or down?

\vspace{.7in}

13.  We will use the `paired_test()` function in `R` (in the `catstats` package) to simulate the shifted bootstrap distribution of sample mean differences and compute a p-value. Use the provided `R` script file and enter the calculated value from question 12 for `xx` to simulate the null distribution and enter the summary statistic from question 10 for `yy` to find the p-value.  Highlight and run lines 1--21.


```r
    paired_test(data = Air$Difference,   # Vector of differences or data set with column for each group
            shift = xx,   # Shift needed for bootstrap hypothesis test
            as_extreme_as = yy,  # Observed statistic
            direction = "less",  # Direction of alternative
            number_repetitions = 1000,  # Number of simulated samples for null distribution
            which_first = 1)  # Not needed when using calculated differences
```
    

14. Sketch the null distribution created in question 13 here.

\vspace{2in}

15. Explain why the null distribution is centered at zero. 

\vspace{.5in}


16. What proportion of samples are at or less than the sample mean difference in AQI scores for current scores minus 5 year median scores?

\vspace{.3in}

17. Interpret the p-value in the context of the problem.

\vspace{.8in}

18. How much evidence does this provide for improved air quality in U.S. cities?

\vspace{.3in}

19. Write out the parameter of interest in context of the study.

\vspace{.6in}

20.  We will use the `paired_bootstrap_CI()` function in `R` (in the `catstats` package) to simulate the bootstrap distribution of sample mean differences and calculate a confidence interval. Using the provided `R` script file fill in the missing value at xx in the paired bootstrap CI to find a 99\% confidence interval, highlight and run lines 24--27.  Report the confidence interval in interval notation.


```r
paired_bootstrap_CI(data = Air$Difference, # Enter vector of differences
                    number_repetitions = 1000, # Number of bootstrap samples for CI
                    confidence_level = xx,  # Confidence level in decimal form
                    which_first = 1)  # Not needed when entering vector of differences
```

\vspace{.3in}


#### Communicate the results and answer the research question. {-}

21. Interpret the 99\% confidence interval in the context of the problem.

\vspace{.8in}


22. Do the results of your confidence interval and hypothesis test agree?  What does each tell you about the null hypothesis?

\vspace{.7in}


23.  Write a paragraph summarizes the results of this study as if you were describing the results to your roommate.  Be sure to describe:

* Summary statistic

* P-value and interpretation

* Conclusion (written to answer the research question)

* Confidence interval and interpretation

* Scope of inference

\vspace{3in}

#### Revisit and look forward {-}

24. Would it be possible to design an experiment to determine if the changed human behavior due to the COVID-19 pandemic causes a decrease in air pollution? Explain. 
\vspace{0.6in}




### Out-of-class activity

The remaining questions cover theory-based methods for testing paired quantitative data.  Use section 6.2.3 in the textbook and the OneMeanTheory video to complete the following questions.

The sampling distribution for $\bar{x}$ based on a sample of size $n$ from a population with a true mean $\mu$ and true standard deviation $\sigma$ can be modeled using a normal distribution when certain conditions are met.

Conditions for the sample distribution of $\bar{x}$.

* Independence: The sample’s observations are independent

* Normality: data should be approximately normal

    - n $<$ 30: If the sample size n is less than 30 and there are no clear outliers in the data, then we typically assume the data come from a nearly normal distribution to satisfy the condition.

    - n $\geq$ 30: If the sample size n is at least 30 and there are no particularly extreme outliers, then we typically assume the sampling distribution of $\bar{x}$ is nearly normal, even if the underlying distribution of individual observations is not.

1.  In the in-class activity we verified that the independence condition was satisfied.  Is the normality condition met to use the theory-based methods for analysis?  Explain your answer.

\vspace{1in}

To find the standardized statistic for the paired differences we will use the following formula:

$$T = \frac{\bar{x}_d}{SE(\bar{x}_d)}$$

where the standard error of the mean difference is:

$$SE(\bar{x}_d)=\frac{s_d}{\sqrt{n}}$$

2.  Calculate the standard error of the mean difference.

\vspace{0.5in}

3.  Calculate the standardized statistic.

\vspace{0.5in}

Using the provided `R` script file, enter the T score (for xx) into the pt function using a df = minimum(n - 1) = 33 - 1 = 32, and lower.tail = TRUE to find the p-value.  Highlight and run line 31.  


```r
pt(xx, df=32, lower.tail=TRUE)
```

4.  Is the p-value found using theory-based methods similar to the simulation p-value found in the in-class activity?

\vspace{0.5in}


To calculate the 99\% confidence interval use the following formula:

$$\bar{x}_d\pm t^* SE(\bar{x}_d)$$

We will need to find the $t^*$ multiplier using the function qt. For a 99\% confidence interval we are finding the $t^*$ value at the 99.5th percentile with df = n - 1 = 33 - 1 = 32.


```r
qt(0.995, df = 32, lower.tail=TRUE)
#> [1] 2.738481
```

5.  Calculate the 99\% confidence interval using theory-based methods.

\vspace{1in}

6.  Explain why the theory-based and simulation confidence intervals are not quite the same.

\vspace{1in}

### Take-home messages

1.	The differences in a paired data set is treated like a single quantitative variable when analyzing.  Paired data (or paired samples) occur when pairs of measurements are collected. We are only interested in the population (and sample) of differences, and not in the original data. 

2.  When using bootstrapping to create the null distribution centered at the null value for both paired data and a single quantitative variable we first need to shift the data by the difference, $\mu_0 - \bar{x}_d$ and then sample with replacement from the shifted data. 

3. When analyzing paired data the summary statistic is the mean difference NOT the difference in means.  This terminology will be *very* important in the interpretations.

### Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity.
