## Activity:  Weather Patterns and Record Snowfall

\setstretch{1}

### Learning objectives

* Given a research question involving one categorical explanatory variable and one quantitative response variable, construct the null and alternative hypotheses
  in words and using appropriate statistical symbols.

* Describe and perform a simulation-based hypothesis test for a difference in means.

* Interpret and evaluate a p-value for a simulation-based hypothesis test for a difference in means.

* Use theory-based methods to find a confidence interval for a difference in means.

* Interpret a confidence interval for a difference in means.

* Use a confidence interval to determine the conclusion of a hypothesis test.

### Terminology review

In today's activity, we will use theory-based methods to analyze the association between one categorical explanatory variable and one quantitative response variable, where the groups formed by the categorical variable are independent. Some terms covered in this activity are:

* Independent groups

* Difference in means

To review these concepts, see Section 6.3 in the textbook.

###The triple crown

The Triple Crown of "Thru" hiking consists of hiking the Appalachian Trail, the Pacific Crest Trail (PCT), and the Continental Divide Trail (CDT). Each year halfwayanywhere.com conducts a survey to better understand the people who hike these trails. One variable which is queried in the survey is the pre-hike "base weight" of a hiker's pack which is the total weight of gear without food, water, and worn gear. The 131 hikers surveyed who completed the CDT had a mean base weight of 15.266 lbs (sd = 5.128 lbs).  The 484 hikers surveyed who completed the PCT had a mean base weight of 17.837 lbs (sd = 7.823 lbs). Is there a difference in average base weight for PCT hikers and CDT hikers?  Use order of subtraction CDT - PCT.

1. Write out the null hypothesis in notation for this study.  Be sure to identify the subscripts.

\vspace{0.5in}

2. Write out the alternative hypothesis in words for this study.

\vspace{0.8in}

The sampling distribution for $\bar{x}_1-\bar{x}_2$ can be modeled using a normal distribution when certain conditions are met.

Conditions for the sampling distribution of $\bar{x}_1-\bar{x}_2$ to follow an approximate normal distribution:

* **Independence**: The sample’s observations are independent

* **Normality**: Each sample should be approximately normal or have a large sample size. For *each* sample:

    - $n < 30$: If the sample size $n$ is less than 30 and there are no clear outliers in the data, then we typically assume the data come from a nearly normal distribution to satisfy the condition.

    - $n \ge 30$: If the sample size $n$ is at least 30 and there are no particularly extreme outliers, then we typically assume the sampling distribution of $\bar{x}$ is nearly normal, even if the underlying distribution of individual observations is not.
    

\begin{center}\includegraphics[width=0.7\linewidth]{29-inference-1ofeach-theory_files/figure-latex/unnamed-chunk-1-1} \end{center}

3.  Check the conditions to use theory-based methods.....

\vspace{1in}

4. Calculate the summary statistic for this study.  Use appropriate notation.

\vspace{1in}

To find the standardized statistic for the difference in means we will calculate:

$$T = \frac{\bar{x}_1-\bar{x}_2}{SE(\bar{x}_1-\bar{x}_2)},$$

where the standard error of the difference in means is calculated using:

$$SE(\bar{x}_1 -\bar{x}_2)=\sqrt{\frac{s_1^2}{n_1}+\frac{s_2^2}{n_2}}.$$

5.  Calculate the standard error of the difference in sample means.

\vspace{0.5in}

6.  Calculate the standardized statistic for the difference in sample eans.

\vspace{0.5in}

Using the provided `R` script file, enter the T-score (for `xx`) into the `pt()` function using a `df` = minimum($n_1 - 1, n_2 - 1$) = $131 - 1$ = 130, and `lower.tail = TRUE` to find the p-value.  Highlight and run line 39.


```r
2*pt(xx, df=130, lower.tail=TRUE)
```

7. Explain why we multiplied by 2 in the code above.

\vspace{0.3in}

8. Report the p-value from the `R` output.

\vspace{0.3in}

9.  Write a conclusion to the research question for this study?

\vspace{0.5in}

10.  Do you expect the 95\% confidence interval to contain the null value of zero?  Explain.

\vspace{0.8in}


To calculate a theory-based 95\% confidence interval for a difference in means, use the formula:

$$\bar{x}_1- \bar{x}_2\pm t^* SE(\bar{x}_1- \bar{x}_2).$$

We will need to find the $t^*$ multiplier using the function `qt()`.  For a 95% confidence level, we are finding the $t^*$ value at the 97.5th percentile with `df` = minimum($n_1 - 1, n_2 - 1$) = 130.


```r
qt(0.975, df = 130, lower.tail=TRUE)
#> [1] 1.97838
```

11.  Calculate the 95\% confidence interval using theory-based methods.

\vspace{1in}

12.  Interpret the 95\% confidence interval in context of the study.

\vspace{1in}

13.  Do the results of the CI agree with the p-value??...

\vspace{0.5in}

