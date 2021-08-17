## Activity 13b:  Homeless Housing Stability

\setstretch{1}

### Learning objectives

* Given a research question involving one categorical explanatory variable and one quantitative response variable, construct the null and alternative hypotheses
  in words and using appropriate statistical symbols.

* Describe and perform a theory-based hypothesis test for a difference in means.

* Interpret and evaluate a p-value for a theory-based hypothesis test for a difference in means.

* Use theory-based methods to find a confidence interval for a difference in means.

* Interpret a confidence interval for a difference in means.

* Use a confidence interval to determine the conclusion of a hypothesis test.

### Terminology review

In today's activity, we will use theory-based methods to analyze the association between one categorical explanatory variable and one quantitative response variable, where the groups formed by the categorical variable are independent. Some terms covered in this activity are:

* Difference in means

* Independence within and between groups

* Normality

To review these concepts, see Section 6.3 in the textbook.

### Homeless Housing Stability

Homeless people with substance abuse disorders (SUD) have high disease risk, poor access to health care, and are frequent users of Medicaid and other social services.  Low-demand supportive housing with no prerequisites for treatment or sobriety has been shown to improve housing stability and decrease public service use for chronically homeless people with serious mental illness.  Researchers in New York investigated if low-demand housing would also prove beneficial to chronic homeless people with SUD who do not suffer from serious mental illness or if pre-housing SUD treatments were required to improve outcomes.  Between 2007 and 2012, 1937 chronic homeless people with SUD and without serious mental illness applying for low-demand housing were recruited to participate in the study.  Researchers randomly assigned 1425 participants to receive SUD treatment prior to obtaining housing, the other 512 did not undergo SUD treatment.  One of several outcomes measured was the length of stay in supportive housing used as a measure of housing stability.  The length of stay for treatment groups is summarized in the `R` output provided.  Is there evidence that SUD treatment affects the length of stay in supportive housing? 

#### Ask a research question {-}

1. Write out the null hypothesis in notation for this study.  Be sure to clearly identify the subscripts.

\vspace{0.5in}

2. Write out the alternative hypothesis in words for this study.

\vspace{0.8in}

The sampling distribution for $\bar{x}_1-\bar{x}_2$ can be modeled using a normal distribution when certain conditions are met.

Conditions for the sampling distribution of $\bar{x}_1-\bar{x}_2$ to follow an approximate normal distribution:

* **Independence**: The sample’s observations are independent

* **Normality**: Each sample should be approximately normal or have a large sample size. For *each* sample:

    - $n < 30$: If the sample size $n$ is less than 30 and there are no clear outliers in the data, then we typically assume the data come from a nearly normal distribution to satisfy the condition.

    - $n \ge 30$: If the sample size $n$ is at least 30 and there are no particularly extreme outliers, then we typically assume the sampling distribution of $\bar{x}$ is nearly normal, even if the underlying distribution of individual observations is not.
    

```r
SUD <- read.csv("https://math.montana.edu/courses/s216/data/SUD.csv")
SUD %>%  # Data set piped into...
  ggplot(aes(y = stay, x = group))+  # Identify variables
  geom_boxplot()+  # Tell it to make a box plot
  labs(title = "Length of Stay with and without SUD Treatment",  # Title
       x = "Group",    # x-axis label
       y = "Length of Stay (days)")  # y-axis label
```



\begin{center}\includegraphics[width=0.7\linewidth]{13-A20-inference-1ofeach-theory_files/figure-latex/unnamed-chunk-1-1} \end{center}
    

The following code gives the summary statistics for the data.


```r
SUD %>%
  summarize(favstats(stay ~ group))
#>       group min     Q1 median      Q3  max     mean       sd    n missing
#> 1   treated  20 904.00   1140 1401.00 2360 1144.948 365.7267 1425       0
#> 2 untreated  23 827.75   1016 1274.25 2226 1043.355 350.1818  512       0
```

3.  Is the independence condition met?  Explain your answer.
\vspace{0.4in}

4. Check that the normality condition is met to use theory-based methods to analyze these data.

\vspace{0.8in}

#### Summarize and visualize the data {-}

5. Calculate the summary statistic for this study.  Use treated minus untreated as the order of subtraction.  Give the appropriate notation with clearly defined subscripts.

\vspace{0.8in}

#### Use statistical inferential methods to draw inferences from the data {-}

To find the standardized statistic for the difference in means we will calculate:

$$T = \frac{\bar{x}_1-\bar{x}_2}{SE(\bar{x}_1-\bar{x}_2)},$$

where the standard error of the difference in means is calculated using:

$$SE(\bar{x}_1 -\bar{x}_2)=\sqrt{\frac{s_1^2}{n_1}+\frac{s_2^2}{n_2}}.$$

6.  Calculate the standard error for the difference in sample means.

\vspace{0.5in}
\newpage

7.  Calculate the standardized statistic for the difference in sample means.

\vspace{0.5in}

8.  We will use the t-distribution with degrees of freedom smallest sample size minus 1 (`df` = minimum($n_1 - 1, n_2 - 1$).  Calculate the `df` for this study.

\vspace{0.2in}

9. Using the provided `R` script file, enter the T-score (for `xx`) and the `df` calculated in question 8 for yy into the `pt()` function to find the p-value.  Highlight and run line 20.  Report the p-value calculated. 


```r
2*pt(xx, df=yy, lower.tail=TRUE)
```
\vspace{0.2in}

10. Explain why we multiplied by 2 in the code above.
\vspace{0.3in}

11.  Interpret the p-value in context of the study.
\vspace{0.8in}

12.  Do you expect the 95\% confidence interval to contain the null value of zero?  Explain your answer.
\vspace{0.8in}


To calculate a theory-based 95\% confidence interval for a difference in means, use the formula:

$$\bar{x}_1- \bar{x}_2\pm t^* SE(\bar{x}_1- \bar{x}_2).$$

We will need to find the $t^*$ multiplier using the function `qt()`.  For a 95\% confidence level, we are finding the $t^*$ value at the 97.5th percentile with `df` = minimum($n_1 - 1, n_2 - 1$).

Enter the appropriate percentile value (as a decimal) for xx and degrees of freedom for yy into the `qt()` function at line 23 to find the appropriate $t^*$ multiplier


```r
qt(xx, df = yy, lower.tail=TRUE)
```
13. Report the $t^*$ multiplier for the 95\% confidence interval.

\newpage

14.  Calculate the 95\% confidence interval using theory-based methods.

\vspace{1in}

15.  Interpret the 95\% confidence interval in context of the study.

\vspace{1in}

16.  Do the results of the CI agree with the p-value?  Explain your answer.

\vspace{0.5in}

17.  Write a conclusion to the test in context of the study.
\vspace{0.8in}

### Take-home messages

1.  In order to use theory-based methods for independent groups the independence and normality conditions must be met.  

2. To find a two-sided p-value using theory-based methods we need to multiply the p-value by 2.  



### Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity and material covered

\newpage