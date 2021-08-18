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

In today's activity, we will analyze paired quantitative data using theory-based methods. Some terms covered in this activity are:

* Paired data

* Mean difference

* Independent observational units

* Normality

* $t$-distribution

* Degrees of freedom

* T-score

To review these concepts, see Sections 6.1 and 6.2 in the textbook.

### Constructions costs

The year 2021 has seen massive fluctuations in construction costs.  Lumber futures alone soared from roughly 700 USD/1,000 board feet in January to a peak of 1711 USD/1,000 board feet in May, only to plummet back to 500 USD/1,000 board feet by August. Researchers would like to determine how these wildly variable costs have impacted the accuracy of construction cost estimates.  They collect a random sample of 372 construction projects from 20 randomly selected U.S. zip codes to investigate if current construction cost estimates (in 1,000 U.S. Dollars) match, on average, the actual construction cost (in 1,000 U.S. dollars). 

#### Identify the scenario {-}

1. Should these observations be considered paired or independent?  Explain your answer.
\vspace{0.5in}

2.  Determine the appropriate summary measure to be used to analyze these data.
\vspace{0.25in}

#### Ask a research question {-}

3. Write out the null hypothesis in words, in the context of this study.  

\vspace{0.8in}

4. Write out the alternative hypothesis in proper notation for this study.

\vspace{0.5in}

The sampling distribution for $\bar{x}$ based on a sample of size $n$ from a population with a true mean $\mu$ and true standard deviation $\sigma$ can be modeled using a Normal distribution when certain conditions are met.

Conditions for the sampling distribution of $\bar{x}$ to follow an approximate Normal distribution:

* **Independence**: The sample’s observations are independent.  For paired data, that means each pairwise difference should be independent.

* **Normality**: The data should be approximately normal or the sample size should be large.

    - $n < 30$: If the sample size $n$ is less than 30 and there are no clear outliers in the data, then we typically assume the data come from a nearly normal distribution to satisfy the condition.

    - $n \geq 30$: If the sample size $n$ is at least 30 and there are no particularly extreme outliers, then we typically assume the sampling distribution of $\bar{x}$ is nearly normal, even if the underlying distribution of individual observations is not.
 
\begin{figure}

{\centering \includegraphics[width=0.7\linewidth]{12-A18-paired-theory_files/figure-latex/tdist-1} 

}

\caption{Comparison of the standard Normal vs t-distribution with various degrees of freedom}(\#fig:tdist)
\end{figure}
    
 
Like we saw in Chapter 5, we will not know the values of the parameters and must use the sample data to estimate them.  Unlike with proportions, in which we only needed to estimate $\pi$, quantitative sample data must be used to estimate both $\mu$ and $\sigma$. This additional uncertainty will require us to use a theoretical distribution that is just a bit wider than the Normal distribution.  Enter the **$t$-distribution**!


As you can seen from Figure \@ref(fig:tdist) on the previous page, the $t$-distributions (dashed and dotted lines) are centered at 0 just like a standard Normal distribution (solid line), but are slightly wider.  The variability of a $t$-distribution depends on the degrees of freedom, which is calculated from the sample size of a study.  Recall from previous classes that larger sample sizes tend to result in narrower sampling distributions?  We see that here as well.  The larger the sample size, the larger the degrees of freedom, the narrower the $t$-distribution.  (In fact, a $t$-distribution with infinite degrees of freedom actually IS the standard Normal distribution!)


#### Summarize and visualize the data {-}

The following code plots each construction project's estimated (bottom) and actual (top) cost connected by a grey line and also creates a boxplot displaying the pair-wise differences in costs (actual - estimated).


```r
costs <- read.csv("https://math.montana.edu/courses/s216/data/ConstructionCosts.csv")
paired_observed_plot(costs)

costs_diff <- costs %>% 
  mutate(differences = Actual - Estimate)
costs_diff %>%
  ggplot(aes(x = differences))+
  geom_boxplot()+
  labs(title="Boxplot of the pairwise differences",
       x = "Differences in construction cost (actual - estimated)")
```



\begin{center}\includegraphics[width=0.7\linewidth]{12-A18-paired-theory_files/figure-latex/unnamed-chunk-1-1} \includegraphics[width=0.7\linewidth]{12-A18-paired-theory_files/figure-latex/unnamed-chunk-1-2} \end{center}

The following code gives the summary statistics for the pairwise differences.


```r
costs_diff %>% 
  summarise(favstats(differences))
#>   min Q1 median  Q3 max     mean       sd   n missing
#> 1 -25 20     60 100 600 69.52957 62.01345 372       0
```

#### Check theoretical conditions

5.  How do you know the independence condition is met for these data?
\vspace{0.8in}

6. Is the normality condition met to use the theory-based methods for analysis?  Explain your answer.
\vspace{1in}



#### Use statistical inferential methods to draw inferences from the data {-}


To find the standardized statistic for the paired differences we will use the following formula:

$$T = \frac{\bar{x}_d}{SE(\bar{x}_d)},$$
\newpage
where the standard error of the sample mean difference is:

$$SE(\bar{x}_d)=\frac{s_d}{\sqrt{n}}.$$

7.  Calculate the standard error of the sample mean difference.

\vspace{0.5in}

8.  How many standard errors is the observed mean difference from the null mean difference?

\vspace{0.5in}

Using the provided `R` script file, enter the T-score (for `xx`) into the `pt()` function.  For single sample or paired data, degrees of freedom are found by subtracting 1 from the sample size.  You should therefore use `df` = $n_d-1 = 372 - 1 = 371$ and `lower.tail = FALSE` to find the p-value.  Highlight and run line 31.  


```r
2*pt(xx, df=371, lower.tail=FALSE)
```
9. Explain why we multiplied by 2 in the code above.
\vspace{0.3in}

10. Explain why we found the area above the T-score using `lower.tail = FALSE` in the code above.
\vspace{0.3in}

11.  What does this p-value mean, in the context of the study?  It is the probability of what...assuming what?
\vspace{0.8in}


To calculate a theory-based confidence interval for the paired mean difference, use the following formula:

$$\bar{x}_d\pm t^* SE(\bar{x}_d).$$

We will need to find the $t^*$ multiplier using the function `qt()`. The code below will return the 95th percentile of the $t$ distribution with `df` = $n_d - 1 = 372 - 1 = 371$. 


```r
qt(0.95, df = 371, lower.tail=TRUE)
#> [1] 1.648971
```

\begin{figure}

{\centering \includegraphics[width=0.7\linewidth]{12-A18-paired-theory_files/figure-latex/tstar-1} 

}

\caption{t-distribution with 371 degrees of freedom}(\#fig:tstar)
\end{figure}
13.  In Figure \@ref(fig:tstar), you see a t-distribution with 371 degrees of freedom. Label $t^\star$ and $-t^\star$ on that distribution.  Write on the plot the percent of the $t_{371}$-distribution that is below $-t^\star$, between $-t^\star$ and $t^\star$, and above $t^\star$.  Then use your plot to determine the confidence level associated with the $t^\star$ value obtained.
\vspace{0.3in}


14.  Calculate the margin of error for the true paired mean difference using theory-based methods.

\vspace{0.8in}

15.  Calculate the confidence interval for the true paired mean difference using theory-based methods.

\vspace{0.8in}


15.  Interpret the confidence interval in context of the study.

\vspace{1in}

16.  Do the results of the CI agree with the p-value?  Explain your answer.

\vspace{0.5in}

17.  Write a conclusion to the test in context of the study.
\vspace{0.8in}

### Take-home messages

1.  In order to use theory-based methods for dependent groups (paired data), the independent observational units and normality conditions must be met.  

2.  A T-score is compared to a $t$-distribution with $n - 1$ df in order to calculate a one-sided p-value. To find a two-sided p-value using theory-based methods we need to multiply the one-sided p-value by 2.  

3.  A $t^*$ multiplier is found by obtaining the bounds of the middle X% (X being the desired confidence level) of a $t$-distribution with $n - 1$ df.


### Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity and material covered

\newpage
