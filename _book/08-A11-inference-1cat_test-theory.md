## Activity 8a:  Handedness of Male Boxers --- Theory HT

\setstretch{1}

### Learning objectives

* Describe and perform a theory-based hypothesis test for a single proportion.

* Check the appropriate conditions to use a theory-based hypothesis test.

* Calculate and interpret the standardized sample proportion.

* Interpret and evaluate a p-value for a theory-based hypothesis test for a single proportion.

* Use the normal distribution to find the p-value.


### Terminology review

In today's activity, we will introduce theory-based confidence intervals for a single categorical variable. Some terms covered in this activity are:

* Parameter of interest

* Standardized Statistic

* Normal distribution

* p-value

To review these concepts, see Chapter 5 in your textbook, focusing on Sections 5.1 through 5.3.

Activity 7a covered simulation-based methods for hypothesis tests involving a single categorical variable. This activity covers theory-based methods for testing a single categorical variable.  

### Handedness of Male Boxers

Left-handedness is a trait that is found in about 10\% of the general population. Past studies have shown that left-handed men are over-represented among professional boxers. The fighting claim states that left-handed men have an advantage in competition.  In this random sample of 500 male professional boxers, we want to see if there is an over-prevalence of left-handed fighters.  In the sample of 500 male boxers, 81 were left-handed.



```r
 # Read in data set
boxers <- read.csv("https://math.montana.edu/courses/s216/data/Male_boxers_sample.csv")
boxers %>% count(Stance)  # Count number in each Stance category
```

```
#>         Stance   n
#> 1  left-handed  81
#> 2 right-handed 419
```

### Review of Summary Stats {-}

1.  Write out the parameter of interest for this study.  

\vspace{0.8in}

2.  Write out the null hypothesis in words.
\vspace{0.8in}

3. Write out the alternative hypothesis in notation.
\vspace{0.3in}

4. Give the value of the summary statistic for this study.  Use proper notation.

\vspace{0.3in}

### Theory-based Methods {-}

The sampling distribution of a single proportion --- how that proportion varies from sample to sample --- can be mathematically modeled using the normal distribution if certain conditions are met.

Conditions for the sampling distribution of $\hat{p}$ to follow an approximate normal distribution:

* **Independence**: The sample’s observations are independent, e.g., are from a simple random sample. (*Remember*: This also must be true to use simulation methods!)

* **Success-failure condition**: We *expect* to see at least 10 successes and 10 failures in the sample, $n\pi≥10$  and $n(1-\pi)≥10$.

5. Verify that the independence condition is satisfied.

\vspace{0.5in}

6. Is the success-failure condition met to model the data with the normal distribution?  Show your work to support your answer. Hint: We don't know the true value of the parameter, $\pi$, so we use the null value, $\pi_0$, to check the success-failure condition.

\vspace{1in}

To calculate the standardized statistic we use the general formula 

$$
Z = \frac{\text{point estimate} - \text{null value}}{SE_0(\text{point estimate})}.
$$
For a single categorical variable the standardized sample proportion is calculated using

$$
Z = \frac{\hat{p} - \pi_0}{SE_0(\hat{p})},
$$
where the standard error is calculated using the null value:

$$SE_0(\hat{p})=\sqrt{\frac{\pi_0(1-\pi_0)}{n}}$$.
\vspace{0.5mm}

\newpage

7.  Calculate the null standard error of the sample proportion.

\vspace{1in}

8.  Calculate the standardized sample proportion.  

\vspace{1in}


The standardized statistic is used as a ruler to measure how far the sample statistic is from the null value.  Essentially, we are converting the sample proportion into a measure of standard errors to compare to the standard normal distribution.  

\begin{figure}

{\centering \includegraphics[width=0.6\linewidth]{08-A11-inference-1cat_test-theory_files/figure-latex/simpleNormalcurve-1} 

}

\caption{A standard normal curve.}(\#fig:simpleNormalcurve)
\end{figure}
9.  Using the 68-95-99.7 rule in Section 5.2.5 to guide you, fill in the percentages on the standard normal distribution displayed in Figure \@ref(fig:simpleNormalcurve), and also mark the value of the standardized statistic calculated in question 8.

\vspace{0.2in}

The standardized statistic measures the *number of standard errors the sample statistic is from the null value*.

10.  Interpret the standardized sample proportion from question 8 in context of the problem.

\vspace{.8in}

\newpage

We will use the `pnorm()` function in `R` to find the p-value. Use the provided `R` script file and enter the value of the standardized statistic calculated in question 8 at `xx` in line 7; highlight and run lines 7--9.  Notice that in line 9 it says `lower.tail = FALSE`.  `R` will calculate the p-value *greater* than the value of the standardized statistic.  

Notes:

* Use `lower.tail = TRUE` when doing a left-sided test.
* Use `lower.tail = FALSE` when doing a right-sided test.
* To find a two-sided p-value, use a left-sided test for negative Z or a right-sided test for positive Z, then multiply the value found by 2 to get the p-value.


```r
pnorm(xx, # Enter value of standardized statistic
      m=0, s=1, # Using the standard normal mean = 0, sd = 1
      lower.tail=FALSE) # Gives a p-value greater than the standardized statistic
```
  
  
11.  Report the p-value obtained from the `R` output.
\vspace{0.2in}

12.  Write a conclusion based on the value of the p-value.
\vspace{0.8in}

### Impacts on the P-value {-}

Suppose that we want to show that the true proportion of male boxers **differs** from that in the general population. 

13.  Write out the alternative hypothesis in notation for this new research question.

\vspace{0.5in}

14.  How would this impact the p-value?  

\vspace{0.2in}

15.  How much evidence would this p-value provide against the null hypothesis?

\vspace{0.3in}

16. Suppose instead of 500 male boxers the researchers only took a sample of 300 male boxers and found the same proportion of male boxers that are left-handed.  Calculate the standardized statistic for this new sample.

\vspace{1in}

Use Rstudio find the p-value for this new sample.  Enter the value of the standardized statistic found in question 14 for xx in line 12.  Highlight and run lines 12--14.


```r
pnorm(xx, # Enter value of standardized statistic
      m=0, s=1, # Using the standard normal mean = 0, sd = 1
      lower.tail=FALSE) # Gives a p-value greater than the standardized statistic
```

17.  How does the decrease in sample size affect the p-value?

\vspace{0.3in}

18. Suppose another sample of 500 male boxers was taken and 68 were found to be left-handed.  Calculate the standardized statistic for this new sample.

\vspace{1in}

Use Rstudio find the p-value for this new sample.  


```r
pnorm(xx, # Enter value of standardized statistic
      m=0, s=1 # Using the standard normal mean = 0, sd = 1
      lower.tail=FALSE) # Gives a p-value greater than the standardized statistic
```

19.  How does a statistic closer to the null value affect the p-value?  

\vspace{0.3in}

20.  Summarize how each of the following affected the p-value?

a) Switching to a two-sided test.

\vspace{0.5in}

b) Using a smaller sample size.

\vspace{0.5in}

c) Using a sample statistic closer to the null value.

\vspace{0.5in}

### Take-home messages

1.	Both simulation and theory-based methods can be used to find a p-value for a hypothesis test.  In order to use theory-based methods we need to check that both the independence and the success-failure conditions are met. 

2.  The standardized statistic measures how many standard errors the statistic is from the null value. The larger the standardized statistic the more evidence there is against the null hypothesis.

3.  The p-value for a two-sided test is approximately two times the value for a one-sided test.  A two-sided test provides less evidence against the null hypothesis.

4.  The larger the sample size, the smaller the sample to sample variability.  This will result in a larger standardized statistic and more evidence against the null hypothesis.

5.  The farther the statistic is from the null value, the larger the standardized statistic.  This will result in a smaller p-value and more evidence against the null hypothesis.


### Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity and material covered.

\newpage