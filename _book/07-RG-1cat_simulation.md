# Inference for a Single Categorical Variable: Hypothesis Testing

## Week 7 - Reading Guide: Categorical Inference

### Section 5.1 (Foundations of inference: Hypothesis tests) {-}

You may skip Section 5.1.4. This section will be covered next week.

**Videos**  

* 5.1

\setstretch{1.25}

#### Vocabulary {-}

Statistical inference: 
\rgs

Hypothesis test: 

\rgi Also called a ‘significance test’.
\rgs

Simulation-based method: 
\rgs

Theory-based method: 
\rgs

Central Limit Theorem:
\rgs

Sampling distribution: 
\rgs

Standard deviation of a statistic: 
\rgs

Standard error of a statistic: 
\rgs

Null hypothesis ($H_0$): 
\rgs

Alternative hypothesis ($H_A$): 
\rgs

P-value: 
\rgs

Point estimate: 
\rgs

Test statistic: 
\rgs

Decision: 
\rgs

Significance level ($\alpha$): 
\rgs 

Statistically significant: 
\rgs

#### Notes {-}

What ‘theory’ is behind the theory-based methods of analysis?
\rgs

Consider the US judicial system:

\rgi What is the null hypothesis?
\rgs

\rgi What is the alternative hypothesis?
\rgs

\rgi The jury is presented with evidence.

|          - If the evidence is strong (beyond a reasonable doubt), the jury will find the defendant: 
\rgs

|          - If the evidence is not strong (not beyond a reasonable doubt), the jury will find the defendant: 
\rgs

To create a simulation, which hypothesis (null or alternative) do we assume is true? 
\rgs

More on p-values: 

\rgi Lower the p-value: 
\rgs

\rgi Interpretations require: 
\rgs

General steps of a hypothesis test:
\rgs

Conclusions should include:
\rgs

Decision:

\rgi If p-value $\leq \alpha$, the decision is to: 

\rgi If p-value $> \alpha$, the decision is to: 

\newpage

True or False: If the p-value is above 0.10, that means the null hypothesis is true.


True or False:  When conducting a simulation-based hypothesis test, the null hypothesis is assumed to be true to create the simulation.
	

#### Formulas {-}

$SD(\hat{p})$ =
\rgs


#### Example: Martian alphabet {-} 

1. What is the sample statistic presented in this example?  What notation would be used to represent this value?
\rgs

2. What are the two possible explanations for how these data could have occurred? 
\rgs
\rgs

3. Of the two explanations, which is the null and which is the alternative hypothesis?
\rgs


4. How could coins be used to create a simulation of what should happen if everyone in the class was just guessing?
\rgs
\rgs
\rgs

5. How can we use the simulation to determine which of the two possibilities is more believable?
\rgs
\rgs

6. What decision should be made at an $\alpha = 0.05$ significance level?  Justify your answer.
\rgs

7. Are the results in this example statistically significant?  Justify your answer.
\rgs

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

\newpage

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

### `R` coding {-}

##### Calculating normal probabilities {-}

When using the `pnorm()` `R` function, you will need to enter values for the arguments `mean`, `sd`, and `q` to match the question.


```r
pnorm(mean = mu, sd = sigma, q = x, lower.tail = TRUE)
```

This function will return the proportion of the N(`mu`,`sigma`) distribution which is *below* the value `x`.

Example: `pnorm(mean = 5, sd = 2, q = 3, lower.tail = TRUE)` will give us the proportion of a N(5,2) distribution which is below 3, which equals 0.159:
 

```r
pnorm(mean = 5, sd = 2, q = 3, lower.tail = TRUE)
#> [1] 0.1586553
```

\newpage

Changing to `lower.tail = FALSE` will give the proportion of the distribution which is *above* the value `x`.


```r
pnorm(mean = 5, sd = 2, q = 3, lower.tail = FALSE)
#> [1] 0.8413447
```

##### Displaying normal probabilities {-} 

When using the `normTail()` `R` function, you will need to enter values for the arguments `m`, `s`, and `L` (or `U`) to match the question.


```r
normTail(m = mu, s = sigma, L = x)
```

This function (in the `openintro` package) will plot a N(`mu`, `sigma`) distribution and shade the area that is below the value `x`.

Example: `normTail(m = 5, s = 2, L = 3)` creates the plot pictured below.

\begin{figure}

{\centering \includegraphics[width=0.6\linewidth]{07-RG-1cat_simulation_files/figure-latex/normgt3-1} 

}

\end{figure}

Changing `L` to `U` will shade the area *above* `x`.  

Example: `normTail(m = 5, s = 2, U = 3)` plots a N(5,2) distribution with the area above 3 shaded.

##### Calculating normal percentiles {-}

When using the `qnorm()` `R` function, you will need to enter values for the arguments `mean`, `sd`, and `p` to match the question.


```r
qnorm(mean = mu, sd = sigma, p = x, lower.tail = TRUE)
```

This function will return the value on the N(`mu`, `sigma`) distribution which has `x` area of the distribution *below* it.

Example:  `qnorm(mean = 5, sd = 2, p = 0.159, lower.tail = TRUE)` will give us the value on a N(5,2) distribution which has 0.159 (15.9%) of the distribution below it, which equals 3 (from the `R` output above).

Changing to `lower.tail = FALSE` will give the value which has `x` area of the distribution *above* it.

We would recommend you work through each of the examples in Section 5.2.4 using `R`.


### Section 5.3 (Inference for one proportion) {-}

\setstretch{1}

You may skip Section 5.3.2 and stop before the "Confidence interval for $\pi$" sub-section in Section 5.3.3. These sections will be covered next week.

\newpage

**Videos**  

* 5.3
* OnePropTheory


\setstretch{1.25}

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

Simulation-based method: Simulate lots of samples of size $n$ under assumption of the null hypothesis, then find the proportion of the simulations that are at least as extreme as the observed sample statistic.

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

#### Vocabulary {-}

Point estimate: 
\rgs

Test statistic:
\rgs

Null value:
\rgs

Null distribution:
\rgs

Standardized statistic:
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

#### Formulas {-}

$SD(\hat{p})$ =
\rgs

Null standard error of the sample proportion:

$SE_0(\hat{p})$ = 
\rgs
	
Standardized statistic/standardized sample proportion:

$Z$ =
\rgs
	

#### Example: Organ donations {-}

1. What is the sample statistic presented in this example?  What notation would be used to represent this value?
\rgs

2. What is the parameter representing in the context of this problem?  What notation would be used to represent this parameter?
\rgs
\rgs

3. Write the null and alternative hypotheses in words.
\rgs
\rgs

4. Write the null and alternative hypotheses in notation.
\rgs


5. To simulate the null distribution, we would not be able to use coins.  Why or why not?
\rgs
\rgs


6. How could we use cards to simulate 1 sample which assumes the null hypothesis is true?  How many blue cards --- to represent what?  How many red cards --- to represent what?  How many times would we draw a card and replace it back in the deck?  What would you record once you completed the draw-with-replacement process?
\rgs
\rgs
\rgs

7. How can we calculate a p-value from the simulated null distribution for this example?
\rgs
\rgs


8. What was the p-value of the test? 
\rgs

9. At the 5% significance level, what decision would you make?
\rgs

10. What conclusion should the researcher make?
\rgs
\rgs

11. Are the results in this example statistically significant?  Justify your answer.
\rgs

12.	Are the conditions met to use theoretical methods to analyze these data?
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
	
4. Are the conditions met to use theoretical methods to analyze these data?
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

# Inference for a Single Categorical Variable: Confidence Intervals

## Reading Guide: Categorical Inference

### Section 5.1.4 (Foundations of inference: Confidence intervals) {-}

**Videos**  

* 5.1

\setstretch{1.25}

#### Vocabulary {-}

Confidence interval: 
\rgs

Margin of error: 
\rgs

#### Formulas {-}

General form of a theory-based confidence interval: 
\rgs

Margin of error: 
\rgs

#### Example: Martian Alphabet {-} 
1. What is the sample statistic presented in this example?  What notation would be used to represent this value?
\rgs

2. Interpret the 95% confidence interval provided in the textbook.
\rgs
\rgs

3. The formula for the interval is 34/38 $\pm$ (2$\times$0.08) = 0.89 $\pm$ 0.16.  Calculating that, you should get (0.73, 1.05).  Why was the interval shown in the textbook (0.73, 1) instead of (0.73, 1.05)?
\rgs

### Sections 5.3.2 and 5.3.3 (One proportion: Bootstrap confidence intervals and Theory-based inferential methods) {-}

\setstretch{1}

In Section 5.3.3, read only the sub-section on "Confidence interval for $\pi$". The other sections were covered last week.

\newpage

**Videos**  

* 5.3
* OnePropTheory

\setstretch{1.25}

#### Reminders from previous sections {-}

$n$ = sample size

$\hat{p}$ = sample proportion

$\pi$ = population proportion

Confidence interval: a process to determine how large an effect is; a range of plausible values for the parameter; also called 'estimation'.

Margin of error: the value that is added to and subtracted from the sample statistic to create a confidence interval; half the width of a confidence interval.

Parameter: a value summarizing a variable(s) for a population.

Statistic: a value summarizing a variable(s) for a sample.

Sampling distribution: plot of statistics from 1000s of samples of the same size taken from the same population.

Standard deviation of a statistic: the variability of statistics from 1000s of samples; how far, on average, each statistic is from the true value of the parameter.

Standard error of a statistic: estimated standard deviation of a statistic.

Central Limit Theorem: For large sample sizes, the sampling distribution of a sample proportion (or mean) will be approximately normal (bell-shaped and symmetric).


#### Vocabulary {-}

Point estimate: 
\rgs

Test statistic:
\rgs

Bootstrapping: 
\rgs

Bootstrapped resample: 
\rgs

Bootstrapped statistic: 
\rgs

Confidence level: 
\rgs
		
#### Notes {-} 

Purpose of bootstrapping: 
\rgs

How is bootstrapping used?  
\rgs

If we want to find a 90% confidence interval, what percentiles of the bootstrap distribution would we need?  
\rgs

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

\rgi In `R`, use `qnorm(mean = __, sd = __, p = __)`.

Select one answer in each set of parentheses: The higher the confidence level, the (larger/smaller) the multiplier, meaning the confidence interval will be (wider/narrower).

#### Formulas {-}

$SD(\hat{p})$ =
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

2. What is the parameter representing in the context of this problem?  What notation would be used to represent this parameter?
\rgs
\rgs

3. How could we use cards to simulate **one** bootstrapped resample?  How many blue cards --- to represent what?  How many red cards --- to represent what?  How many times would we draw a card and replace it back in the deck?  What would you record once you completed the draw-with-replacement process?
\rgs
\rgs
\rgs

4.	Interpret the 95\% confidence interval provided in the textbook.
\rgs
\rgs

5.	Are the results in this example statistically significant?  Justify your answer.
\rgs

6.	Are the conditions met to use theoretical methods to analyze these data?
\rgs
\rgs

#### Example: Payday loans {-}

1. What is the parameter representing in the context of this problem?  What notation would be used to represent this parameter?
\rgs
\rgs

2. Are the conditions met to use theoretical methods to analyze these data?
\rgs
\rgs

3. What is the sample statistic presented in this example?  What notation would be used to represent this value?
\rgs

4. Calculate the standard error of the sample proportion when we do not assume the null hypothesis is true.
\rgs
\rgs

5. Calculate the margin of error for a 95\% confidence interval for $\pi$ using 1.96 as the multiplier.
\rgs
\rgs

6. Calculate a 95\% confidence interval for $\pi$ using your margin of error calculated above.
\rgs
\rgs

7. Interpret the 95\% confidence interval provided in the textbook.
\rgs
\rgs

8. Are the results in this example statistically significant?  Justify your answer.
\rgs
