## Activity:  Handedness of Male Boxers --- Testing using Theory-based Methods

\setstretch{1}

### Learning objectives

* Describe and perform a theory-based hypothesis test for a single proportion.

* Check the appropriate conditions to use a theory-based hypothesis test.

* Calculate and interpret the standardized sample proportion.

* Interpret and evaluate a p-value for a theory-based hypothesis test for a single proportion.

* Use the normal distribution to find the p-value.


### Terminology review

In today's activity, we will introduce theory-based hypothesis testing for a single categorical variable. Some terms covered in this activity are:

* Parameter of interest

* Standardized statistic

* Normal distribution

* p-value

To review these concepts, see Chapter 5 in your textbook, focusing on Sections 5.1 through 5.3.

The last activity covered simulation-based methods for hypothesis tests involving a single categorical variable. This activity covers theory-based methods for testing a single categorical variable.  

As a reminder: left-handedness is a trait that is found in about 10\% of the general population. Past studies have shown that left-handed men are over-represented among professional boxers. The fighting claim states that left-handed men have an advantage in competition.  In this random sample of 500 male professional boxers, we want to see if there is an over-prevalence of left-handed fighters.

Recall from the last activity that in the sample of 500 male boxers, 81 were left-handed.

###Review of Summary Stats

1.  Write out the parameter of interest for this study.  

\vspace{0.8in}

2. Give the value of the summary statistic for this study.  Use proper notation.

\vspace{0.3in}

###Theory-based Methods

The sampling distribution of a single proportion --- how that proportion varies from sample to sample --- can be mathematically modeled using the normal distribution if certain conditions are met.

Conditions for the sampling distribution of $\hat{p}$ to follow an approximate normal distribution:

* **Independence**: The sample’s observations are independent, e.g., are from a simple random sample. (*Remember*: This also must be true to use simulation methods!)

* **Success-failure condition**: We *expect* to see at least 10 successes and 10 failures in the sample, $n\pi≥10$  and $n(1-\pi)≥10$.

3.  We already verified that the independence condition is satisfied in the last activity, since the independence condition is required for both simulation-based and theory-based methods. Is the success-failure condition met to model the data with the normal distribution?  Show your work to support your answer. Hint: We don't know the true value of the parameter, $\pi$, so we use the null value, $\pi_0$, to check the success-failure condition.

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

4.  Calculate the null standard error of the sample proportion.

\vspace{1in}

5.  Calculate the standardized sample proportion.  

\vspace{1in}

\newpage

The standardized statistic is used as a ruler to measure how far the sample statistic is from the null value.  Essentially, we are converting the sample proportion into a measure of standard errors to compare to the standard normal distribution.  

\begin{figure}

{\centering \includegraphics[width=0.6\linewidth]{14-inference-1cat_test-theory_files/figure-latex/simpleNormal-1} 

}

\caption{A standard normal curve.}(\#fig:simpleNormal)
\end{figure}

6.  Using the 68-95-99.7 rule in Section 5.2.5 to guide you, fill in values on the $x$-axis of the standard normal distribution displayed in Figure \@ref(fig:simpleNormal), and also mark the value of the standardized statistic calculated in question 3.

\vspace{0.2in}

The standardized statistic measures the *number of standard errors the sample statistic is from the null value*.

7.  Interpret the standardized sample proportion from question 5 in context of the problem.

\vspace{.8in}

We will use the `pnorm()` function in `R` to find the p-value. Use the provided `R` script file and enter the value of the standardized statistic calculated in question 3 at `xx` in line 18; highlight and run lines 18--20.  Notice that in line 20 it says `lower.tail = FALSE`.  `R` will calculate the p-value *greater* than the value of the standardized statistic.  

Notes:

* Use `lower.tail = TRUE` when doing a left-sided test.
* Use `lower.tail = FALSE` when doing a right-sided test.
* To find a two-sided p-value, use a left-sided test for negative Z or a right-sided test for positive Z, then multiply the value found by 2 to get the p-value.


```r
pnorm(xx, # Enter value of standardized statistic
      m=0, s=1 # Using the standard normal mean = 0, sd = 1
      lower.tail=FALSE) # Gives a p-value greater than the standardized statistic
```
  
  

\begin{center}\includegraphics[width=0.7\linewidth]{14-inference-1cat_test-theory_files/figure-latex/unnamed-chunk-2-1} \end{center}

8.  Report the p-value obtained from the `R` output.
\vspace{0.2in}

9.  Is the p-value found in question 8 similar to the p-value found using the simulation test in the last activity?  Explain why you would expect this to be true.

\vspace{0.5in}

###Impact of ...on the P-value

Suppose that we want to show that the true proportion of male boxers differs from that in the general population. 

10.  Write out the alternative hypothesis in notation for this new research question.

\vspace{0.5in}

11.  How would this impact the p-value?  

\vspace{0.2in}

12.  How much evidence would this///

\vspace{0.3in}

13. Suppose instead of 500 male boxers the researchers only took a sample of 300 male boxers and found the same proportion of male boxers that are left-handed.  Calculate the standardized statistic for this new sample.

\vspace{1in}

Use Rstudio find the p-value for this new sample.  


```r
pnorm(xx, # Enter value of standardized statistic
      m=0, s=1 # Using the standard normal mean = 0, sd = 1
      lower.tail=FALSE) # Gives a p-value greater than the standardized statistic
```

14.  How does the decrease in sample size affect the p-value?

\vspace{0.3in}

15. Suppose another sample of 500 male boxers was take and 68 were found to be left-handed.  Calculate the standardized statistic for this new sample.

Use Rstudio find the p-value for this new sample.  


```r
pnorm(xx, # Enter value of standardized statistic
      m=0, s=1 # Using the standard normal mean = 0, sd = 1
      lower.tail=FALSE) # Gives a p-value greater than the standardized statistic
```

16.  How does the a statistic closer to the null value affect the p-value?  

\vspace{0.3in}

17.  Summarize how each of the following affected the p-value?

a) Switching to a two-sided test.

\vspace{0.5in}

b) Using a smaller sample size.

\vspace{0.5in}

c) Using a sample statistic closer to the null value.

\vspace{0.5in}

### Take-home messages

1.	In a hypothesis test we have two competing hypotheses, the null hypothesis and the alternative hypothesis.  The null hypothesis represents either a skeptical perspective or a perspective of no difference or no effect. The alternative hypothesis represents a new perspective such as the possibility that there has been a change or that there is a treatment effect in an experiment.  

2.  In a simulation-based test, we create a distribution of possible simulated statistics for our sample if the null hypothesis is true.  Then we see if the calculated observed statistic from the data is likely or unlikely to occur when compared to the null distribution.  

3.  The p-value is the probability of the observed statistic occurring or more extreme if the null hypothesis is true.  The farther in the tail of the distribution the observed statistic is, the smaller the probability is (smaller the p-value!).  The **smaller** the p-value, the **more** evidence the statistic provides **against** the null hypothesis. (Think carefully about why this makes sense!) 

4.  A **decision** is a statement about strength of evidence against the null hypothesis: reject the null if the p-value is below a pre-set significance level, and fail to reject the null if the p-value is above a pre-set significance level. When writing a **conclusion** to a hypothesis test, on the other hand, we are answering the research question.  Thus, a conclusion is a statement about strength of evidence *for the alternative hypothesis*. Use the guidelines for the strength of evidence throughout this course to assess the evidence against the null hypothesis.  


### Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity and material covered.
