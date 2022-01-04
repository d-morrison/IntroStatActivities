## Activity 11b:  Color Interference

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

### Color Interference

In this study pairs of conflicting stimuli, both being inherent aspects of the same symbols, were presented simultaneously (a name of one color printed in the ink of another color—a word stimulus and a color stimulus). Seventy college undergraduates were used as subjects in this study.  Subjects were given a form with 100 names of colors written either in black ink or in ink of another color (i.e. the word purple written in green ink).  The difference in time for reading the words printed in colors and the same words printed in black is the measure of the interference of color stimuli upon reading words. The order in which the forms (black or color) were given was randomized to the subjects.  Does printing the name of colors in a different color increase the time it takes to read the words?

#### Identify the scenario {-}

1. Should these observations be considered paired or independent?  Explain your answer.
\vspace{0.5in}

2.  Based on your answer to question 1, is the appropriate summary measure to be used to analyze these data the difference in means or the mean difference?
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

{\centering \includegraphics[width=0.7\linewidth]{11-A16-paired-theory_files/figure-latex/tdist-1} 

}

\caption{Comparison of the standard Normal vs t-distribution with various degrees of freedom}(\#fig:tdist)
\end{figure}
    
 
Like we saw in Chapter 5, we will not know the values of the parameters and must use the sample data to estimate them.  Unlike with proportions, in which we only needed to estimate $\pi$, quantitative sample data must be used to estimate both $\mu$ and $\sigma$. This additional uncertainty will require us to use a theoretical distribution that is just a bit wider than the Normal distribution.  Enter the **$t$-distribution**!


As you can seen from Figure \@ref(fig:tdist) on the previous page, the $t$-distributions (dashed and dotted lines) are centered at 0 just like a standard Normal distribution (solid line), but are slightly wider.  The variability of a $t$-distribution depends on the degrees of freedom, which is calculated from the sample size of a study.  Recall from previous classes that larger sample sizes tend to result in narrower sampling distributions?  We see that here as well.  The larger the sample size, the larger the degrees of freedom, the narrower the $t$-distribution.  (In fact, a $t$-distribution with infinite degrees of freedom actually IS the standard Normal distribution!)


#### Summarize and visualize the data {-}

The following code plots each subject's time to read the black words (above) and time to read the colored words (below) connected by a grey line and also creates a boxplot displaying the pair-wise differences in time (color - black).


```r
color <- read.csv("https://math.montana.edu/courses/s216/data/interference.csv")
paired_observed_plot(color)

color_diff <- color %>% 
  mutate(differences = DiffCol - Black)
color_diff %>%
  ggplot(aes(x = differences))+
  geom_boxplot()+
  labs(title="Boxplot of the pairwise differences",
       x = "Differences in time to read words (Color - Black)")
```



\begin{center}\includegraphics[width=0.7\linewidth]{11-A16-paired-theory_files/figure-latex/unnamed-chunk-1-1} \includegraphics[width=0.7\linewidth]{11-A16-paired-theory_files/figure-latex/unnamed-chunk-1-2} \end{center}

The following code gives the summary statistics for the pairwise differences.


```r
color_diff %>% 
  summarise(favstats(differences))
#>      min     Q1 median     Q3   max mean       sd  n missing
#> 1 -16.42 -2.925   2.15 7.0325 17.27  2.3 7.810196 70       0
```

#### Check theoretical conditions {-}

5.  How do you know the independence condition is met for these data?
\vspace{0.8in}

6. Is the normality condition met to use the theory-based methods for analysis?  Explain your answer.
\vspace{1in}

#### Use statistical inferential methods to draw inferences from the data {-}


To find the standardized statistic for the paired differences we will use the following formula:

$$T = \frac{\bar{x}_d}{SE(\bar{x}_d)},$$
where the standard error of the sample mean difference is:

$$SE(\bar{x}_d)=\frac{s_d}{\sqrt{n}}.$$

7.  Calculate the standard error of the sample mean difference.

\vspace{0.5in}

8.  How many standard errors is the observed mean difference from the null mean difference?

\vspace{0.5in}

Using the provided `R` script file, enter the T-score (for `xx`) into the `pt()` function.  For single sample or paired data, degrees of freedom are found by subtracting 1 from the sample size.  You should therefore use `df` = $n_d-1 = 70 - 1 = 69$ and `lower.tail = TRUE` to find the p-value.  Highlight and run line 31.  


```r
pt(xx, df=69, lower.tail=TRUE)
```
9. Explain why we found the area above the T-score using `lower.tail = TRUE` in the code above.
\vspace{0.3in}

10.  What does this p-value mean, in the context of the study?  It is the probability of what...assuming what?
\vspace{0.8in}


To calculate a theory-based confidence interval for the paired mean difference, use the following formula:

$$\bar{x}_d\pm t^* SE(\bar{x}_d).$$
\newpage

We will need to find the $t^*$ multiplier using the function `qt()`. The code below will return the 95th percentile of the $t$ distribution with `df` = $n_d - 1 = 70 - 1 = 69$. 


```r
qt(0.95, df = 69, lower.tail=TRUE)
#> [1] 1.667239
```

\begin{figure}

{\centering \includegraphics[width=0.7\linewidth]{11-A16-paired-theory_files/figure-latex/tstar-1} 

}

\caption{t-distribution with 69 degrees of freedom}(\#fig:tstar)
\end{figure}

11.  In Figure \@ref(fig:tstar), you see a t-distribution with 69 degrees of freedom. Label $t^\star$ and $-t^\star$ on that distribution.  Write on the plot the percent of the $t_{69}$-distribution that is below $-t^\star$, between $-t^\star$ and $t^\star$, and above $t^\star$.  Then use your plot to determine the confidence level associated with the $t^\star$ value obtained.
\vspace{0.3in}


12.  Calculate the margin of error for the true paired mean difference using theory-based methods.

\vspace{0.6in}

13.  Calculate the confidence interval for the true paired mean difference using theory-based methods.

\vspace{0.6in}


14.  Interpret the confidence interval in context of the study.

\vspace{1in}

15.  Do the results of the CI agree with the p-value?  Explain your answer.

\vspace{0.5in}

16.  Write a conclusion to the test in context of the study.
\vspace{0.6in}

### Take-home messages

1.  In order to use theory-based methods for dependent groups (paired data), the independent observational units and normality conditions must be met.  

2.  A T-score is compared to a $t$-distribution with $n - 1$ df in order to calculate a one-sided p-value. To find a two-sided p-value using theory-based methods we need to multiply the one-sided p-value by 2.  

3.  A $t^*$ multiplier is found by obtaining the bounds of the middle X% (X being the desired confidence level) of a $t$-distribution with $n - 1$ df.


### Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity and material covered

\newpage