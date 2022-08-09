# Inference for a Single Categorical Variable: Theory-based Methods + Errors and Power

## Week 7 Reading Guide: Categorical Inference

### Section 5.1 (Foundations of inference: Hypothesis tests) {-}

Review section 5.1.2, specifically the notes about the theory-based approach and the Central Limit Theorem.

### Section 5.2 (The normal distribution) {-}

\setstretch{1}

**Videos**  

* 5.2

\setstretch{1.25}

#### Vocabulary {-}

Normal distribution (Also known as: normal curve, normal model, Gaussian distribution): 
\rgs

\rgi Notation:
\rgs

Standard normal distribution: 
\rgs

\rgi Notation:
\rgs

Z-score:
\rgs

$X$th percentile: 
\rgs

68-95-99.7 rule: 
\rgs

#### Notes {-}

Interpretation of a Z-score: 
\rgs

True or False: The more unusual observation will be the observation with the largest Z-score.
	
Approximately what percent of a normal distribution is in the interval

\rgi (mean – standard deviation, mean + standard deviation):
\rgs
 
\rgi (mean – 2$\times$(standard deviation), mean + 2$\times$(standard deviation)):
\rgs

\rgi (mean – 3$\times$(standard deviation), mean + 3$\times$(standard deviation)):
\rgs

#### Formulas {-}

Z =
\rgs

### R coding {-}

##### Calculating normal probabilities {-}

When using the `pnorm()` R function, you will need to enter values for the arguments `mean`, `sd`, and `q` to match the question.


```r
pnorm(mean = mu, sd = sigma, q = x, lower.tail = TRUE)
```

This function will return the proportion of the N(`mu`,`sigma`) distribution which is *below* the value `x`.

Example: `pnorm(mean = 5, sd = 2, q = 3, lower.tail = TRUE)` will give us the proportion of a N(5,2) distribution which is below 3, which equals 0.159:
 

```r
pnorm(mean = 5, sd = 2, q = 3, lower.tail = TRUE)
#> [1] 0.1586553
```

Changing to `lower.tail = FALSE` will give the proportion of the distribution which is *above* the value `x`.


```r
pnorm(mean = 5, sd = 2, q = 3, lower.tail = FALSE)
#> [1] 0.8413447
```

##### Displaying normal probabilities {-} 

When using the `normTail()` R function, you will need to enter values for the arguments `m`, `s`, and `L` (or `U`) to match the question.


```r
normTail(m = mu, s = sigma, L = x)
```

This function (in the `openintro` package) will plot a N(`mu`, `sigma`) distribution and shade the area that is below the value `x`.

Example: `normTail(m = 5, s = 2, L = 3)` creates the plot pictured below.

\begin{figure}

{\centering \includegraphics[width=0.6\linewidth]{07-RG-1cat_theory_files/figure-latex/normgt3-1} 

}

\end{figure}

Changing `L` to `U` will shade the area *above* `x`.  

Example: `normTail(m = 5, s = 2, U = 3)` plots a N(5,2) distribution with the area above 3 shaded.

##### Calculating normal percentiles {-}

When using the `qnorm()` R function, you will need to enter values for the arguments `mean`, `sd`, and `p` to match the question.


```r
qnorm(mean = mu, sd = sigma, p = x, lower.tail = TRUE)
```

This function will return the value on the N(`mu`, `sigma`) distribution which has `x` area of the distribution *below* it.

Example:  `qnorm(mean = 5, sd = 2, p = 0.159, lower.tail = TRUE)` will give us the value on a N(5,2) distribution which has 0.159 (15.9%) of the distribution below it, which equals 3 (from the R output above).

Changing to `lower.tail = FALSE` will give the value which has `x` area of the distribution *above* it.

We would recommend you work through each of the examples in Section 5.2.4 using R.


### Section 5.3.4 (Theory-based inferential methods for $\pi$) {-}

\setstretch{1}

**Videos**  

* 5.3TheoryInf

\setstretch{1.25}

#### Vocabulary {-}

#### Reminders from previous sections {-}

$n$ = sample size

$\hat{p}$ = sample proportion

$\pi$ = population proportion

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

Theory-based method: Develop a mathematical model for the sampling distribution of the statistic under the null hypothesis and use the model to calculate the probability of the observed sample statistic (or one more extreme) occurring.

Null hypothesis ($H_0$): the skeptical perspective; no difference; no change; no effect; random chance; what the researcher hopes to prove is **wrong**.

Alternative hypothesis ($H_A$): the new perspective; a difference/increase/decrease; an effect; not random chance; what the researcher hopes to prove is **correct**.

P-value: probability of seeing the observed sample data, or something more extreme, assuming the null hypothesis is true.

$\implies$ Lower the p-value the stronger the evidence AGAINST the null hypothesis and FOR the alternative hypothesis.

Decision: a determination of whether to 'reject' or 'fail to reject' a null hypothesis based on a p-value and a pre-set level of significance.

Significance level ($\alpha$): a threshold used to determine if a p-value provides enough evidence to reject the null hypothesis or not.

\rgi Common levels of $\alpha$ include 0.01, 0.05, and 0.10.

Statistically significant: results are considered statistically significant if the p-value is below the significance level.

Central Limit Theorem: For large sample sizes, the sampling distribution of a sample proportion (or mean) will be approximately normal (bell-shaped and symmetric).

Confidence interval: a process to determine how large an effect is; a range of plausible values for the parameter; also called 'estimation'.

Margin of error: the value that is added to and subtracted from the sample statistic to create a confidence interval; half the width of a confidence interval.

#### Vocabulary {-}


Standardized statistic:
\rgs

Confidence level: 
\rgs

		
#### Notes {-}

Conditions for the Central Limit Theorem to apply (for the sampling distribution of $\hat{p}$ to be approximately normal)

\rgi Independence: 
\rgs

\rgi \rgi Checked by: 
\rgs

\rgi Success-failure condition: 
\rgs

\rgi \rgi Checked by: 
\rgs

How can we determine the value of $z^⋆$ to use as the multiplier in a confidence interval?
\rgs

\rgi In R, use `qnorm(mean = __, sd = __, p = __)`.

Select one answer in each set of parentheses: The higher the confidence level, the (larger/smaller) the multiplier, meaning the confidence interval will be (wider/narrower).

If the success-failure condition for the Central Limit Theorem is not met, what is the appropriate method of analysis?  Select one:
\rgi A. Theory-based approach
\rgi B. Simulation based approach.


#### Formulas {-}

$SD(\hat{p})$ =
\rgs

Null standard error of the sample proportion:

$SE_0(\hat{p})$ = 
\rgs
	
Standardized statistic (in this case, standardized sample proportion):

$Z$ =
\rgs
	

Standard error of the sample proportion when we do not assume the null hypothesis is true:

$SE(\hat{p})$ = 
\rgs
	
Theory-based confidence interval for a sample proportion: 
\rgs

Margin of error of a confidence interval for a sample proportion: 
\rgs

#### Example: Organ donations {-}

1. What is the sample statistic presented in this example?  What notation would be used to represent this value?
\rgs

2. What is the sample size in this example?
\rgs

12.	Are the conditions met to use theoretical methods to analyze these data?  Show your calculations to justify your answer.
\rgs
\rgs


#### Example: Payday loans {-}

1. What is the parameter representing in the context of this problem?  What notation would be used to represent this parameter?
\rgs
\rgs

3. Write the null and alternative hypotheses in words.
\rgs
\rgs

4. Write the null and alternative hypotheses in notation.
\rgs
	
4. Are the conditions met to use theoretical methods to analyze these data?  Show your calculations to justify your answer.
\rgs
\rgs

5. Calculate the null standard error of the sample proportion.
\rgs
\rgs

6. What is the sample statistic presented in this example?  What notation would be used to represent this value?
\rgs

7. Calculate the standardized sample proportion.
\rgs
\rgs

8. How can we calculate a p-value from the normal distribution for this example?
\rgs
\rgs

9. What was the p-value of the test? 
\rgs
	
10. At the 5\% significance level, what decision would you make?
\rgs

11. What conclusion should the researcher make?
\rgs
\rgs

12. Are the results in this example statistically significant?  Justify your answer.
\rgs

13. Calculate the standard error of the sample proportion when we do not assume the null hypothesis is true.
\rgs
\rgs

14. Calculate the margin of error for a 95\% confidence interval for $\pi$ using 1.96 as the multiplier.
\rgs
\rgs

15. Calculate a 95\% confidence interval for $\pi$ using your margin of error calculated above.
\rgs
\rgs

16. Interpret the 95\% confidence interval provided in the textbook.
\rgs
\rgs

17. Are the results in this example statistically significant?  Justify your answer.
\rgs


### Section 5.4 (Errors, power, and practical importance) {-}

\setstretch{1}

**Videos**  

* 5.4

\setstretch{1.25}

#### Reminders from previous sections {-}

Decision: a determination of whether to reject or fail to reject a null hypothesis based on a p-value and a pre-set level of significance.

* If p-value $\leq \alpha$, then reject $H_0$.

* If p-value $> \alpha$, then fail to reject $H_0$.

Significance level ($\alpha$): a threshold used to determine if a p-value provides enough evidence to reject the null hypothesis or not.

\rgi Common levels of $\alpha$ include 0.01, 0.05, and 0.10.

Statistically significant: results are considered statistically significant if the p-value is below the significance level.

#### Vocabulary {-}

Type 1 error: 
\rgs

Type 2 error: 
\rgs

Confirmation bias: 
\rgs

Power: 
\rgs
		
Practical importance: 
\rgs

#### Notes {-}

Fill in the following table with whether the decision was correct or not, and if not, what type of error was made.
\begin{center}
\begin{tabular}{|p{2in}|p{2in}|p{2in}|}
\hline
 & \multicolumn{2}{|c|}{\textbf{Test conclusion (based on data)}} \\ \hline
 \textbf{Truth (unknown)} & Reject null hyp. & Fail to reject null hyp. \\ \hline
 $H_0$ is true && \\ 
   & & \\ 
   & & \\ \hline
 $H_A$ is true ($H_0$ is false)  && \\ 
   & & \\ 
   & & \\ \hline
\end{tabular}
\end{center}

\rgs

How are the significance level and type I error rate related?
\rgs

How are the significance level and type II error rate related?
\rgs


After collecting data, a researcher decides to change from a two-sided test to a one-sided test.  Why is this a bad idea?

1. It ____________ (increases/decreases) the chance of a type I error.

2. This can result in ________________________.
\rgs

How are power and type I error rate related?
\rgs

How are power and type II error rate related?
\rgs

How can we increase the power of a test?

1. ________ (Increase/Decrease) the significance level
\rgs

2. ________ (Increase/Decrease) the sample size
\rgs

3. Change from a ___ (one/two)-sided to a ___ (one/two)-sided test
\rgs

4. Have a ________ (larger/smaller) standard deviation of the statistic
\rgs

5. Have the alternative parameter value _______ (closer/farther) from the null value
\rgs

Results are likely to be statistically significant (but may not be practically important) if the sample size is __________(large/small).
\rgs

Results are unlikely to be statistically significant (but may be practically important) if the sample size is __________(large/small).
\rgs

#### Examples: {-} 

1. In the Martian Alphabet study in the textbook and presented as an example in Reading Guide 5.1,

\rgi a. What was the p-value of the test?
\rgs

\rgi b.	At the 5% significance level, what decision would you make?
\rgs

\rgi c. What type of error might have occurred in these data?
\rgs

\rgi d. Interpret that error in the context of the problem.
\rgs
\rgs

2. In the Medical Consultant study in the textbook and presented as an example in the reading guide for sections 5.3.1--5.3.3,

\rgi a. What was the p-value of the test?
\rgs

\rgi b. At the 5% significance level, what decision would you make?
\rgs

\rgi c. What type of error might have occurred in these data?
\rgs

\rgi d. Interpret that error in the context of the problem.
\rgs
\rgs

3. In the Payday Loans study in the textbook and presented as an example in the reading guide for section 5.3.4,

\rgi a. What was the p-value of the test?
\rgs

\rgi b. At the 5% significance level, what decision would you make?
\rgs

\rgi c. What type of error might have occurred in these data?
\rgs

\rgi d. Interpret that error in the context of the problem.
\rgs

\newpage