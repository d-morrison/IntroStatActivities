## Activity 12b:  Construction Costs

\setstretch{1}

### Learning outcomes

* Given a research question involving paired differences, construct the null and alternative hypotheses
  in words and using appropriate statistical symbols.
  
* Describe and perform a theory-based hypothesis test for a paired mean difference.

* Interpret and evaluate a p-value for a theory-based hypothesis test for a paired mean difference.

* Use theory-based methods to find a confidence interval for a paired mean difference.

* Interpret a confidence interval for a paired mean difference.

* Use a confidence interval to determine the conclusion of a hypothesis test.

### Terminology review

In this week's activity, we will analyze paired quantitative data using simulation-based methods. Some terms covered in this activity are:

* Mean difference

* Paired data

* Independent groups

* Shifted bootstrap (null) distribution

To review these concepts, see Section 6.2 in the textbook.

### Out-of-class activity

The remaining questions cover theory-based methods for testing and estimating a paired mean difference (or single mean).  Use Section 6.2.3 in the textbook and the OneMeanTheory video to complete the following questions.

The sampling distribution for $\bar{x}$ based on a sample of size $n$ from a population with a true mean $\mu$ and true standard deviation $\sigma$ can be modeled using a normal distribution when certain conditions are met.

Conditions for the sampling distribution of $\bar{x}$ to follow an approximate normal distribution:

* **Independence**: The sample’s observations are independent

* **Normality**: The data should be approximately normal or the sample size should be large.

    - $n < 30$: If the sample size $n$ is less than 30 and there are no clear outliers in the data, then we typically assume the data come from a nearly normal distribution to satisfy the condition.

    - $n \geq 30$: If the sample size $n$ is at least 30 and there are no particularly extreme outliers, then we typically assume the sampling distribution of $\bar{x}$ is nearly normal, even if the underlying distribution of individual observations is not.

1.  In the in-class activity, we verified that the independence condition was satisfied.  Is the normality condition met to use the theory-based methods for analysis?  Explain your answer.

\vspace{1in}

To find the standardized statistic for the paired differences we will use the following formula:

$$T = \frac{\bar{x}_d}{SE(\bar{x}_d)},$$

where the standard error of the sample mean difference is:

$$SE(\bar{x}_d)=\frac{s_d}{\sqrt{n}}.$$

2.  Calculate the standard error of the sample mean difference.

\vspace{0.5in}

3.  Calculate the standardized statistic.

\vspace{0.5in}

Using the provided `R` script file, enter the T-score (for `xx`) into the `pt()` function using a `df` = $n_d-1 = 33 - 1 = 32$, and `lower.tail = TRUE` to find the p-value.  Highlight and run line 31.  


```r
pt(xx, df=32, lower.tail=TRUE)
```

4.  Is the p-value found using theory-based methods similar to the simulation p-value found in the in-class activity?

\vspace{0.5in}


To calculate the 99\% theory-based confidence interval for the paired mean difference, use the following formula:

$$\bar{x}_d\pm t^* SE(\bar{x}_d).$$

We will need to find the $t^*$ multiplier using the function `qt()`. For a 99\% confidence level, we are finding the $t^*$ value at the 99.5th percentile with `df` = $n_d - 1 = 33 - 1 = 32$.


```r
qt(0.995, df = 32, lower.tail=TRUE)
#> [1] 2.738481
```

5.  Calculate the 99\% confidence interval for the paired mean difference using theory-based methods.

\vspace{1in}

6.  Explain why the theory-based and simulation confidence intervals are not quite the same.

\vspace{1in}

\newpage
