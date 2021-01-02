# Inference for a Single Categorical Variable: Hypothesis Testing

## Reading Guide: Categorical Inference

\setstretch{1.25}

### Vocabulary {-}

Statistical inference: 
\rgs

Hypothesis test: 

\rgi Also called a ‘significance test’
\rgs

Simulation-based method: 
\rgs

Theory-based method: 
\rgs

Confidence interval: 
\rgs

Margin of error: 
\rgs

Central Limit Theorem:
\rgs

Sampling distribution: 
\rgs

Standard deviation of a statistic: 
\rgs

Standard error of a statistic: 
\rgs

Null hypothesis: 
\rgs

Alternative hypothesis: 
\rgs

P-value: 
\rgs

Test statistic/point estimate: 
\rgs

Decision: 
\rgs

Significance level: 
\rgi Typically use α=0.05
\rgs

Statistically significant: 
\rgs

#### Notes {-}

What ‘theory’ is behind the theory-based methods of analysis?
\rgs

Consider the US judicial system:
\rgi What is the null hypothesis?  
\rgs

\rgi	What is the alternative hypothesis? 
\rgs

\rgi The jury is presented with evidence.  
\rgs

If the evidence is strong (beyond a reasonable doubt), the jury will find the defendant: 
If the evidence is not strong (not beyond a reasonable doubt), the jury will find the defendant: 
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

Decisions:
\rgi If p-value≤α, the decision is to: 

\rgi If p-value>α, the decision is to: 

True or False: If the p-value is above 0.10, that means the null hypothesis is true.


True or False:  When conducting a simulation-based hypothesis test, the null hypothesis is assumed to be true to create the simulation.
	

#### Formulas {-}

$SD(\hat{p})$ =
\rgs

General form of a theory-based confidence interval: 
\rgs

Margin of error: 
\rgs

#### Example: Martian Alphabet {-} 

1. What is the sample statistic presented in this example?  What notation would be used to represent this value?
\rgs

2. What are the two possible explanations for how these data could have occurred? 
\rgs


3. Of the two explanations, which is the null and which is the alternative hypothesis?
\rgs


4. How could coins be used to create a simulation of what should happen if everyone in the class was just guessing?
\rgs

5. How can we use the simulation to determine which of the two possibilities is more believable?
\rgs

6. Interpret the 95% confidence interval provided in the textbook.
\rgs

7. The formula for the interval is $\frac{34}{38}\pm (2×0.08) = 0.89 \pm 0.16$.  Calculating that, you should get (0.73, 1.05).  Why was the interval shown in the textbook (0.73, 1) instead of (0.73, 1.05)?
\rgs

8. What decision should be made at the $\alpha = 0.05$ level?  Justify your answer.
\rgs

9. Are the results in this example statistically significant?  Justify your answer.
\rgs

### Section 5.2 (The Normal Distribution) {-}

#### Vocabulary {-}

Normal distribution: 
\rgs

\rgi Notation:
\rgs

\rgi Also known as: normal curve, normal model

\rgi Standard Normal distribution: 
\rgs

\rgi Notation:
\rgs

Z-score:
\rgs

Xth percentile: 
\rgs

68-95-99.7 rule: 
\rgs

#### Notes {-}

Interpretation of a z-score: 
\rgs

True or False: The more unusual observation will be the observation with the largest z-score.
	
Approximately what percent of a Normal distribution is in the interval

\rgi (mean – standard deviation, mean + standard deviation) 
\rgs
 
\rgi (mean – 2*(standard deviation), mean + 2*(standard deviation)) 
\rgs

\rgi (mean – 3*(standard deviation), mean + 3*(standard deviation)) 
\rgs

#### Formulas {-}

z =
\rgs

#### R Coding {-}
Will need to change the value of the mean, sd, and q to match the question


```r
pnorm(mean = μ, sd = σ, q = x, lower.tail = TRUE)
```

This function will return the percent of the N(μ,σ) distribution which is below the value x.

i.e.: pnorm(mean = 5, sd = 2, q = 3, lower.tail = TRUE)will give us the percent of a N(5,2) distribution which is below 3, which equals 0.159.
 
\begin{figure}

{\centering \includegraphics[width=0.6\linewidth]{images/Norm_lessthan_3} 

}

\end{figure}

Changing to lower.tail = FALSE will give the percent of the distribution which is above x.


```r
normTail(m = μ, s = σ, L = x)
```

This function will plot a $N(\mu, \sigma)$ distribution and shade the area that is below the value x.

i.e.: normTail(m = 5, s = 2, L = 3)creates the plot pictured above.
		Changing L to U will shade the area above x.  normTail(m = 5, s = 2, U = 3) plots
		
\begin{figure}

{\centering \includegraphics[width=0.6\linewidth]{images/Norm_greaterthan_3} 

}

\end{figure}


```r
qnorm(mean = μ, sd = σ, p = x, lower.tail = TRUE)
```

This function will return the value on the $N(\mu,\sigma)$ distribution which has x area of the distribution below it.

i.e.: qnorm(mean = 5, sd = 2, p = 0.159, lower.tail = TRUE) will give us the value on a N(5,2) distribution which has 0.159 (15.9%) of the distribution below it, which equals 3 (from above).

Changing to lower.tail = FALSE will give the value which has x area of the distribution **above** it.

We would recommend you work through each of the examples in section 5.2.4 using `R`.

\newpage

## Activity:  Handedness of Male Boxers - Testing

\setstretch{1}

### Learning objectives

* Identify the two possible explanations (one assuming the null hypothesis, and one assuming the alternative hypothesis) for a relationship seen in sample data

* Given a research question, construct the null and alternative hypotheses
  in words and using appropriate statistical symbols
  
* Describe and perform simulation-based hypothesis tests for a single proportion

* Interpret and evaluate a p-value

### Terminology review

In this week's in-class activity, we will introduce simulation hypothesis testing for a single categorical variable. Some terms covered in this activity are:

* Parameter of interest

* Null hypothesis

* Alternative hypothesis

* Simulation

* Null distribution

* p-value

To review these concepts, see Chapter 5 in your textbook, focusing on Sections 5.1 through 5.3.

### Steps of the statistical investigation process

We will work through a six-step process to complete a hypothesis test for a single proportion.

* **Ask a research question** that can be addressed by collecting data. What are the researchers trying to show?

* **Design a study and collect data**. This step involves selecting the people or objects to be studied and how to gather relevant data on them.

* **Summarize and visualize the data**. Calculate summary statistics and create graphical plots that best represent the research question.

* **Use statistical analysis methods to draw inferences from the data**. Choose an analysis technique appropriate for the data and identify the p-value. In this study, we will focus on using randomization.

* **Communicate the results and answer the research question**. Using the p-value and confidence interval from the analysis, determine whether the data provide statistical evidence against the null hypothesis. 

* **Revisit and look forward** to point out limitations of the study and suggest new studies that could be performed to build on the findings of the study 

### Handedness of male boxers

Left-handedness is a trait that is found in about 10% of the population. Past studies have shown that left-handed men are over-represented among professional boxers. The fighting claim states that left-handed men have an advantage in competition.  In this random sample of 500 male professional boxers we want to see if there is an over-prevalence of left-handed fighters.


#### Summary statistics review: Complete Q1 - 4 before class {-}

1.  What are the observational units?

\vspace{0.5in}

2.  What variable are we testing?  Is it categorical or quantitative?

\vspace{0.5in}

3. What type of plot would be appropriate to visually display the data?

\vspace{0.5in}

4. Write out in context the statistic we will calculate to summarize the data.  

\vspace{0.5in}

#### Ask a research question {-}

5. Identify the research question for this study.

\vspace{1in}

#### Design a study and collect data {-}

Before completing the hypothesis test, we must check that the cases are independent.  The sample observations are independent if the outcome of one observation does not influence the outcome of another. One way this condition is met is if data come from a simple random sample of the target population.

6.  Are the cases independent? Justify your answer.

\vspace{1in}

#### Summarize and visualize the data {-}

<!-- ```{r, echo=TRUE, collapse=FALSE} -->
<!-- # Counts for Handedness -->
<!-- # Tally creates a table with a count for each level of the variable -->
<!-- tally(~Stance, data=handedness_sub, margins=T)  -->
<!-- ``` -->


```r
handedness <- read.csv("data/Male_boxers_sample.csv") # Read in data set
handedness %>% count(Stance)  # Count number in each Stance category
```

```
#>         Stance   n
#> 1  left-handed  81
#> 2 right-handed 419
```

7.  Using the output above, calculate the appropriate summary statistic to represent the research question.  Use appropriate notation.

\vspace{0.5in}


#### Use statistical analysis methods to draw inferences from the data {-}

When testing data we must first identify the null hypothesis.  The null hypothesis is written about the parameter of interest, or the true value of interest.  *For example, in the Martian Alphabet Activity the parameter of interest is the true proportion of statistic students who correctly identify Bumba.*

8.  Write out the parameter of interest for this study. 

\vspace{0.8in}

9.  Using the parameter of interest in question 8, write out the null hypothesis in words.  What do we assume to be true about the parameter of interest?

\newpage

The notation used for a true proportion is $\pi$.  Since this summarizes a population, it is a parameter. When writing the **null hypothesis** in notation we set the parameter equal to the null value, $H_0: \pi = \pi_0$

10. Write the null hypothesis in notation using the null value of 0.1 in place of $\pi_0$ in the equation given above.

\vspace{0.5in}

The **alternative hypothesis** is the claim to be tested and the direction is based on the research question.  

11.  Based on the research question from question 5, are we testing that the parameter is greater than 0.1, less than 0.1 or different than 0.1? 

\vspace{0.5in}

12. Write out the alternative hypothesis in words.

\vspace{1in}

13.  Write out the alternative hypothesis in notation.

\vspace{0.5in}

Remember that when utilizing a hypothesis test, we are evaluating two competing possibilities. For this study the **two possibilities** are either...

* The true proportion of male boxers who are left handed is 0.1 and our results just occurred by random chance or
  
* The true proportion of male boxers who are left handed is greater than 0.1 and our results reflect this
  
Notice that these two competing possibilities represent the null and alternative hypotheses.
  
The null distribution is created under the assumption the null hypothesis is true.  In this case, we assume the true proportion of male boxers who are left handed is 0.1 so we will create 1000 different simulations of 500 boxers under this assumption.

\newpage

Let's think about how to use red and blue cards to create one simulation of 500 boxers under the assumption the null hypothesis is true.  Suppose blue cards represents left-handed and red cards represents right-handed.

14.  How many cards total do we need?  How many blue ones?  How many red ones?

\vspace{0.5in}

15.  Next, we would mix the cards together and draw 1 card, write down if it's red or blue, and replace the card.  How many times would we need to repeat this process to simulate our sample?

\vspace{0.5in}

16.  Once we have one simulated sample, what would we calculate and plot on the null distribution?  *Hint*: What statistic are we calculating from the data?

\vspace{1in}

We will use the computer to simulate a null distribution of 1000 different samples of 500 male boxers, plotting the proportion who are left handed in each sample, based on the assumption that the true proportion of male boxers who are left handed is 0.1 (or that the null hypothesis is true).  

To use the computer simulation, we will need to enter the "probability of success" ($\pi_0$), "sample size" (the number of observational units or cases in the sample), "number of repetitions" (the number of samples to be generated), "as extreme as" (the observed statistic), and the "direction" (matches the direction of the alternative hypothesis).

\newpage

17.  What values should be entered for each of the following into the one proportion test to create 1000 simulations?

\vspace{1mm}

* Probability of success:

\vspace{.2in}
* Sample size:
    
\vspace{.2in}
* Number of repetitions:
    
\vspace{.2in}
* As extreme as:
    
\vspace{.2in}
* Direction (`"greater"`, `"less"`, or `"two-sided"`):

\vspace{.2in}

Using the provided `R` script file, fill in the values/words for xx with your answers from question 17 in the one proportion test to create a null distribution with 1000 simulations, highlight and run lines 1 - 14.


```r
one_proportion_test(probability_success = xx, # Null hypothesis value
                    sample_size = xx, # Enter sample size
                    number_repetitions = 1000, # Enter number of simulations
                    as_extreme_as = xx, # Observed statistic
                    direction = "xx", # Specify direction of alternative hypothesis
                    report_value = "proportion") # Reporting proportion or number of successes?
```

18.  Sketch the null distribution created from the R code here.

\vspace{1.8in}

19. Around what value is the null distribution centered?  Why does that make sense?

\vspace{1in}

20. Circle the statistic (value from question 7) on the distribution you drew in question 18.  Where does the statistic fall in the null distribution?  Is it near the center of the distribution (near 0.1) or in one of the tails of the distribution?  

\vspace{1in}

21.  Is the statistic likely to happen or unlikely to happen if the true proportion of male boxers who are left-handed is 0.1?  Explain your answer using the plot.

\vspace{1in}

22.  Using the simulation, what is the proportion of simulated samples at the summary statistic or greater, if the true proportion of male boxers who are left-handed is 0.1? *Hint*: Look under the simulation.

\vspace{1in}
|         This is the **p-value**.  The smaller the p-value the more evidence we have against the null hypothesis.

23. Using the following guidelines for the strength of evidence, how much evidence do the data provide against the null hypothesis? (Circle one.)


\begin{center}\includegraphics[width=0.9\linewidth]{images/soe_gradient_grayscale} \end{center}

\newpage

24.  What does the p-value measure?  Interpret the p-value in context of the problem.

\vspace{1in}

#### Communicate the results and answer the research question {-}

When we write a conclusion we answer the research question by stating how much evidence there is for the alternative hypothesis.

25. Write a conclusion in context of the study.

\vspace{1in}

26.  Write a paragraph summarizing the results.  Be sure to describe:

* Summary statistic

* P-value and interpretation

* Conclusion (written to answer the research question)

* Generalization - to what group do the results apply?

\vspace{3in}

#### Revisit and look forward {-}

27. Suggest a new research question that you might investigate, building on what you learned in this study.

\vspace{.6in}

### Out-of-class activity

The remaining questions cover theory-based methods for testing a single categorical variable.  Use section 5.3.3 in the textbook and the OnePropTheory video to complete the following questions.

A single proportion can be mathematically modeled using the normal distribution if certain conditions are met.

Conditions for the sample distribution of $\hat{p}$.

* Independence: The sample’s observations are independent, e.g., are from a simple random sample

* Success-Failure Condition: We *expect* to see at least 10 successes and 10 failures in the sample, $n\pi≥10$  and $n(1-\pi)≥10$

1.  We already verified that the independence condition is satisfied in question 6. Is the success-failure condition met to model the data with the Normal distribution?  Show your work to support your answer.

\vspace{1in}

To calculate the standardized statistic we use: 

$$
Z = \frac{\text{point estimate} - \text{null value}}{SE}
$$
For a single categorical variable the standardized sample proportion is calculated using:

$$
Z = \frac{\hat{p} - \pi_0}{SE_0(\hat{p})}
$$
where the standard error is calculated using the null value.

$$SE_0(\hat{p})=\sqrt{\frac{\pi_0(1-\pi_0)}{n}}$$
\vspace{0.5mm}

2.  Calculate the null standard error of the sample proportion.

\vspace{1in}

3.  Calculate the standardized sample proportion.  

\vspace{1in}

The standardized statistic is used as a ruler to measure how far the sample statistic is from the null value.  Essentially we are converting the sample proportion into a measure of standard errors to compare to the standard normal distribution.  

\begin{figure}

{\centering \includegraphics[width=0.7\linewidth]{06-inference-1cat_test_files/figure-latex/simpleNormal-1} 

}

\caption{A normal curve.}(\#fig:simpleNormal)
\end{figure}

4.  Using the 68-95-99.7 rule in Section 5.2.5 to guide you, mark on the standard normal distribution above the value of the standardized statistic calculated in question 3.

\vspace{0.2in}

The standardized statistic measures the number of standard errors the sample statistic is from the null value.

5.  Interpret the standardized sample proportion from question 3 in context of the problem.

\vspace{1in}

We will use the pnorm function in `R` to find the p-value. Use the provided `R` script file and enter the value of the standardized statistic calculated in question 3 at xx in line 18, highlight and run lines 18 - 20.  Notice that in line 20 it says `lower.tail = FALSE`.  `R` will calculate the p-value greater than the value of the standardized statistic.  Use `lower.tail = TRUE` when doing a left-sided test and `lower.tail = FALSE` when doing a right-sided test.  To find a two-sided p-value use a left-sided test and multiply the p-value found by 2.


```r
pnorm(xx, # Enter value of standardized statistic
      m=0, s=1 # Using the standard normal mean = 0, sd = 1
      lower.tail=FALSE) # Gives a p-value greater than the standardized statistic
```
  

6.  Report the p-value obtained from the `R` output.
\vspace{0.2in}

7.  Is the p-value found in question 6 similar to the p-value found using the simulation test?  Explain why you would expect this to be true.

\vspace{0.5in}

### Take-home messages

1.	In a hypothesis test we have two competing hypotheses, the null hypothesis and the alternative hypothesis.  The null hypothesis represents either a skeptical perspective or a perspective of no difference or no effect, and an alternative hypothesis, which represents a new perspective such as the possibility that there has been a change or that there is a treatment effect in an experiment.  

2.  In a simulation test, we create a distribution of possible simulated statistics for our sample if the null hypothesis is true.  Then we see if the calculated observed statistic from the data is likely or unlikely to occur when compared to the null distribution.  

3.  The p-value is the probability of the observed statistic occurring or more extreme if the null hypothesis is true.  The farther in the tail of the distribution the observed statistic is the smaller the probability is (smaller the p-value!).  The **smaller** the p-value the **more** evidence the statistic provides **against** the null hypothesis.  

4.  When writing a conclusion to a test, we are answering the research question.  How much evidence does the statistic provide in support of the alternative hypothesis?  Use the guidelines for the strength of evidence throughout this course to assess the evidence against the null hypothesis.  

### Additional notes

Use this space to summarize your thoughts and take additional notes on this week's activity and material covered.