## Activity 7B:  Handedness of Male Boxers --- Theory-based Methods

\setstretch{1}

### Learning objectives

* Describe and perform a theory-based hypothesis test for a single proportion.

* Check the appropriate conditions to use a theory-based methods.

* Calculate and interpret the standardized sample proportion.

* Interpret and evaluate a p-value for a theory-based hypothesis test for a single proportion.

* Use the normal distribution to find the p-value.

* Calculate a theory-based confidence interval for a single proportion.

* Interpret a confidence interval for a single proportion.

* Use the normal distribution to find the multiplier needed for a confidence interval

### Terminology review

In this activity, we will introduce theory-based hypothesis tests and confidence intervals for a single proportion. Some terms covered in this activity are:

* Parameter of interest

* Standardized Statistic

* Normal distribution

* p-value

* Multiplier

* Normal distribution

To review these concepts, see Chapters 11 & 14 in your textbook.


Activities 6A, 6B, and 7A covered simulation-based methods for hypothesis tests involving a single categorical variable. This activity covers theory-based methods for testing a single categorical variable.  

### Handedness of male boxers

Left-handedness is a trait that is found in about 10\% of the general population. Past studies have shown that left-handed men are over-represented among professional boxers [@richardson2019]. The fighting claim states that left-handed men have an advantage in competition.  In this random sample of 500 male professional boxers, we want to see if there is an over-prevalence of left-handed fighters.  In the sample of 500 male boxers, 81 were left-handed.


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

### Review of summary statistics {-}

1.  Write out the parameter of interest for this study.  

\vspace{0.6in}

2.  Write out the null hypothesis in words.
\vspace{0.6in}

3. Write out the alternative hypothesis in notation.
\vspace{0.3in}

4. Give the value of the summary statistic (sample proportion) for this study.  Use proper notation.

\vspace{0.3in}

### Theory-based methods {-}

The sampling distribution of a single proportion --- how that proportion varies from sample to sample --- can be mathematically modeled using the normal distribution if certain conditions are met.

Conditions for the sampling distribution of $\hat{p}$ to follow an approximate normal distribution:

* **Independence**: The sample’s observations are independent, e.g., are from a simple random sample. (*Remember*: This also must be true to use simulation methods!)

* **Success-failure condition**: We *expect* to see at least 10 successes and 10 failures in the sample, $n\hat{p}≥10$  and $n(1-\hat{p})≥10$.

5. Verify that the independence condition is satisfied.

\vspace{0.8in}

6. Is the success-failure condition met to model the data with the normal distribution?  Show your work to support your answer.

\vspace{1in}
\newpage

To calculate the standardized statistic we use the general formula 

$$
Z = \frac{\text{point estimate} - \text{null value}}{SE_0(\text{point estimate})}.
$$
For a single categorical variable the standardized sample proportion is calculated using

$$
Z = \frac{\hat{p} - \pi_0}{SE_0(\hat{p})},
$$
where the standard error is calculated using the null value:

$$SE_0(\hat{p})=\sqrt{\frac{\pi_0 \times (1-\pi_0)}{n}}$$.

The standard error of the sample proportion measures the variability of possible sample proportions from the actual proportion.  In other words, how far each possible sample proportion is from the actual proportion on average.  For this study, the null standard error of the sample proportion is calculated using the null value, 0.1.

$$SE_0(\hat{p})=\sqrt{\frac{0.1 \times (1-0.1)}{500}} = 0.013$$.

7.  Interpret the null standard error of the sample proportion in context of the problem.

\vspace{0.5in}

8. Label the standard normal distribution (figure 7.1) with the null value as the center value (below the value of zero).  Label the tick marks to the right of the null value by adding 1 standard error to the null value to represent 1 standard error, 2 standard errors, and 3 standard errors from the null.  Repeat this process to the left of the null value by subtracting 1 standard error for each tick mark.

\vspace{2mm}

\begin{figure}

{\centering \includegraphics[width=0.5\linewidth]{07-A10-inference-1cat-theory_files/figure-latex/Normalcurve-1} 

}

\caption{Standard Normal Distribution}(\#fig:Normalcurve)
\end{figure}

\newpage

9.  Using the null standard error of the sample proportion, calculate the standardized sample proportion (Z). Mark this value on the standard normal distribution above.

\vspace{0.6in}

The standardized statistic is used as a ruler to measure how far the sample statistic is from the null value.  Essentially, we are converting the sample proportion into a measure of standard errors to compare to the standard normal distribution.  

The standardized statistic measures the *number of standard errors the sample statistic is from the null value*.

10.  Interpret the standardized sample proportion from question 9 in context of the problem.

\vspace{.8in}

We will use the `pnorm()` function in R to find the p-value. Use the provided R script file and enter the value of the standardized statistic calculated in question 8 at `xx` in line 7; highlight and run lines 7--9.  Notice that in line 9 it says `lower.tail = FALSE`.  R will calculate the p-value *greater* than the value of the standardized statistic.  

Notes:

* Use `lower.tail = TRUE` when doing a left-sided test.
* Use `lower.tail = FALSE` when doing a right-sided test.
* To find a two-sided p-value, use a left-sided test for negative Z or a right-sided test for positive Z, then multiply the value found by 2 to get the p-value.


```r
pnorm(xx, # Enter value of standardized statistic
      m=0, s=1, # Using the standard normal mean = 0, sd = 1
      lower.tail=FALSE) # Gives a p-value greater than the standardized statistic
```
  
  
11.  Report the p-value obtained from the R output.
\vspace{0.3in}

\newpage

#### Theory-based confidence interval {-}

To calculate a theory-based 95\% confidence interval for $\pi$, we will first find the **standard error** of $\hat{p}$ by plugging in the value of $\hat{p}$ for $\pi$ in $SD(\hat{p})$:

$$SE(\hat{p}) = \sqrt{\frac{\hat{p} \times (1-\hat{p})}{n}}.$$
Note that we do not include a "0" subscript, since we are not assuming a null hypothesis. 

12.  Calculate the standard error of the sample proportion to find a 95\% confidence interval.

\vspace{0.5in}

To find the confidence interval, we will add and subtract the **margin of error** to the point estimate:

$$\text{point estimate}\pm\text{margin of error}$$
$$\hat{p}\pm z^* \times SE(\hat{p})$$
$$ME = z^* \times SE(\hat{p})$$

The $z^*$ multiplier is the percentile of a standard normal distribution that corresponds to our confidence level. If our confidence level is 95\%, we find the Z values that encompass the middle 95\% of the standard normal distribution.  If 95\% of the standard normal distribution should be in the middle, that leaves 5\% in the tails, or 2.5\% in each tail.  
 

13. Fill in the normal distribution shown in figure 7.2 to show how R found the $z^*$ multiplier.

\begin{figure}

{\centering \includegraphics[width=0.5\linewidth]{07-A10-inference-1cat-theory_files/figure-latex/StandardNormal-1} 

}

\caption{Standard Normal Distribution}(\#fig:StandardNormal)
\end{figure}

\newpage 

The `qnorm()` function in R will tell us the $z^*$ value for the desired percentile (in this case, 95\% + 2.5\% = 97.5\% percentile). Enter the value of 0.975 for xx in the provided R script file. This will give the value of the multiplier for a 95\% confidence interval.


```r
qnorm(xx) # Multiplier for 95% confidence interval
```

14. Report the value of the multiplier ($z^*$) found from the R code needed to calculate the 95\% confidence interval for the true proportion of male boxers that are left-handed?
\vspace{0.3in}

15.  Calculate the margin of error for the 95\% confidence interval.
\vspace{0.8in}

16.  Calculate the 95\% confidence interval for the parameter of interest.
\vspace{0.5in}

17.  Interpret the 95\% confidence interval in the context of the problem.
\vspace{0.5in}

18.  Write a conclusion to the study in context of the problem.
\vspace{0.5in}

19. Is the null value, 0.1, contained in the 95\% confidence interval?  Explain, based on the p-value from the earlier in activity, why you expected this to be true.
\vspace{0.5in}


\newpage

### Take-home messages

1.	Both simulation and theory-based methods can be used to find a p-value for a hypothesis test.  In order to use theory-based methods we need to check that both the independence and the success-failure conditions are met. 

2.  The standardized statistic measures how many standard errors the statistic is from the null value. The larger the standardized statistic the more evidence there is against the null hypothesis.

3.  In theory-based methods, we add and subtract a margin of error to the sample statistic.  The margin of error is calculated using a multiplier that corresponds to the level of confidence times the variability (standard error) of the statistic.

4. The confidence interval calculated using theory-based methods should be similar to the confidence interval found using simulation methods provided the success-failure condition is met.

<!-- 3.  A smaller sample size will increase the margin of error which results in a wider confidence interval.  -->

<!-- 3. If repeat samples of the same size are selected from the population, approximately 95\% of samples will create a 95\% confidence interval that contains the parameter of interest. -->


### Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity and material covered.


\newpage
