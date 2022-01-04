## Activity 9a:  Winter Sports Helmet Use and Head Injuries --- Theory HT

\setstretch{1}

### Learning objectives

* Given a research question involving two categorical variables, construct the null and alternative hypotheses
  in words and using appropriate statistical symbols.
  
* Assess the conditions to use the normal distribution model for a difference in proportions.

* Calculate the Z test statistic for a difference in proportions.

* Find, interpret, and evaluate the p-value for a theory-based hypothesis test for a difference in proportions.

### Terminology review
In today's activity, we will use theory-based methods to analyze two categorical variables. Some terms covered in this activity are:

* Conditional proportion

* Z test

* $z^*$ multiplier

* Null hypothesis

* Alternative hypothesis

* Test statistic

* Standard normal distribution

* Independence and success-failure conditions

* Relative risk

To review these concepts, see Chapter 5 in your textbook.

### Helmet use and head injuries

In "Helmet Use and Risk of Head Injuries in Alpine Skiers and Snowboarders" by Sullheim et. al., in the *Journal of the American Medical Association*, Vol. 295, No. 8 (2006), we can see the summary results from a random sample of 3562 skiers and snowboarders involved in accidents in the two-way table below. Is there evidence that safety helmet use is associated with a reduced risk of head injury for skiers and snowboarders? 

|                | Helmet Use | No Helmet Use | Total |
|:--------------:|:----------:|:-------------:|:-----:|
| Head Injury    |     96     |      480      |  576  |
| No Head Injury |     656    |      2330     |  2986 |
| Total          |     752    |      2810     |  3562 |

For this study the observational units are skiers and snowboarders involved in accidents.  A success will be considered a head injury in this context and we are comparing the groups helmet use (group 1) and no helmet use (group 2).  Use helmet use - no helmet use as the order of subtraction.

\newpage 

1.  Write the null and alternative hypotheses in notation. 

|    Ho: 
\vspace{0.2in}

|    Ha:
\vspace{0.2in}

2. Calculate the summary statistic (difference in proportions) for this study.  Use appropriate notation with clear subscripts.

\vspace{0.5in}

3. Interpret the difference in proportions in context of the study.
\vspace{0.8in}

#### Use statistical analysis methods to draw inferences from the data {-}

To test the null hypothesis, we could use simulation-based methods as we did in Activity 9a. In this activity, we will focus on theory-based methods.  Like with a single proportion, the sampling distribution of a difference in sample proportions can be mathematically modeled using the normal distribution if certain conditions are met.

Conditions for the sampling distribution of $\hat{p}_1-\hat{p}_2$ to follow an approximate normal distribution:

* **Independence**: The data are independent within and between the two groups. (*Remember*: This also must be true to use simulation methods!)

* **Success-failure condition**: The success-failure condition holds for each group.  Under the null hypothesis, the proportions $\pi_1$ and $\pi_2$ are equal, so we check the success-failure condition with our best estimate of these values under $H_0$, the pooled proportion from the two samples,

$$
\hat{p}_{pool} = \frac{\text{number of "successes"}}{\text{number of cases}} = \frac{\hat{p}_1 n_1+\hat{p}_2 n_2}{n_1+n_2}
$$
\newpage

We then check that all four of the following inequalities hold:

$$\hat{p}_{pool} \times n_1 \ge 10, \hspace{1cm} (1 - \hat{p}_{pool}) \times n_1 \geq 10,$$
$$\hat{p}_{pool} \times n_2 \ge 10, \hspace{1cm} (1 - \hat{p}_{pool}) \times n_2 \geq 10$$

\vspace{.1in}

4.  Is the independence condition met? Explain your answer.

\vspace{0.4in}

5. Is the success-failure condition met for each group?  Show your work to verify your answer.

\vspace{0.8in}

To calculate the standardized statistic we use: 

$$
Z = \frac{\text{point estimate} - \text{null value}}{SE},
$$

where the null standard error is calculated using the pooled proportion of successes:

$$
SE_0(\hat{p}_1-\hat{p}_2)=\sqrt{\hat{p}_{pool}(1-\hat{p}_{pool})\left(\frac{1}{n_1}+\frac{1}{n_2}\right)}.
$$


6. Calculate $SE_0(\hat{p}_1-\hat{p}_2)$.

\vspace{1in}

7. Calculate the standardized statistic.

\vspace{1in}

\newpage

\begin{figure}

{\centering \includegraphics[width=0.6\linewidth]{09-A13-inference-2cat_test-theory_files/figure-latex/simpleNormal-1} 

}

\caption{A standard normal curve.}(\#fig:simpleNormal)
\end{figure}

8. Mark the value of the standardized statistic on the standard normal distribution above and shade the area to find the p-value.

\vspace{0.1in}

We will use the `pnorm()` function in `R` to find the p-value. Use the provided `R` script file and enter the value of the standardized statistic found in question 8 at `xx` in line 1; highlight and run lines 1--3.


```r
pnorm(xx, # Enter value of standardized statistic
      m=0, s=1, # Using the standard normal mean = 0, sd = 1
      lower.tail=TRUE) # Gives a p-value less than the standardized statistic
```
    

9.  Report the p-value from the `R` output.
\vspace{0.2in}


10.  Interpret the p-value in context of the study.

\vspace{1in}

11. Write a conclusion to the research question based on the p-value found.

\newpage

### Impacts on the P-value {-}

Suppose that we want to show that there is a **difference** in true proportion of head injuries for those that wear helmets and those that do not. 

12.  Write out the alternative hypothesis in notation for this new research question.

\vspace{0.5in}

13.  How would this impact the p-value?  

\vspace{0.2in}

Suppose in another sample of skiers and snowboarders involved in accidents we saw these results:

|                | Helmet Use | No Helmet Use | Total |
|:--------------:|:----------:|:-------------:|:-----:|
|   Head Injury  |     135    |      674      |  809  |
| No Head Injury |     921    |      3270     |  4191 |
|      Total     |    1056    |      3944     |  5000 |

14. The standard error for the difference in proportions is 0.013 $SE(\hat{p}_h - \hat{p}_n) = 0.013$.  Calculate the standardized statistic for this new sample.

\vspace{0.8in}

Use Rstudio find the p-value for this new sample.  Enter the value of the standardized statistic found in question 14 for xx in line 7.  Highlight and run lines 7--9.


```r
pnorm(xx, # Enter value of standardized statistic
      m=0, s=1, # Using the standard normal mean = 0, sd = 1
      lower.tail=TRUE) # Gives a p-value greater than the standardized statistic
```

15.  How does the increase in sample size affect the p-value?

\vspace{0.3in}

16. Suppose another sample of 3562 skiers and snowboarders was taken.  In this new sample a difference in proportions of head injuries was found to be -0.009, $\hat{p}_h - \hat{p}_n = -0.009$ with $SE(\hat{p}_h - \hat{p}_n) = 0.015$.  Calculate the standardized statistic for this new sample.

\vspace{0.8in}

Use Rstudio find the p-value for this new sample.  Enter the value of the standardized statistic found in question 16 for xx in line 12.  Highlight and run lines 12--14.


```r
pnorm(xx, # Enter value of standardized statistic
      m=0, s=1 # Using the standard normal mean = 0, sd = 1
      lower.tail=TRUE) # Gives a p-value greater than the standardized statistic
```

17.  How does a statistic closer to the null value affect the p-value?  

\vspace{0.3in}

18.  Summarize how each of the following affected the p-value:

a) Switching to a two-sided test.

\vspace{0.4in}

b) Using a smaller sample size.

\vspace{0.4in}

c) Using a sample statistic closer to the null value.

\vspace{0.4in}


\newpage

### Take-home messages

1.	When comparing two groups, we are looking at the difference between two parameters.  In the null hypothesis, we assume the two parameters are equal, or that there is no difference between the two proportions.  

2.  The standardized statistic when the response variable is categorical is a Z-score and is compared to the standard normal distribution to find the p-value.  To find the standardized statistic, we take the value of the statistic minus the null value, divided by the null standard error of the statistic.  The standardized statistic measures the number of standard errors the statistic is from the null value. 

3.  The p-value for a two-sided test is approximately two times the value for a one-sided test.  A two-sided test provides less evidence against the null hypothesis.

4.  The larger the sample size, the smaller the sample to sample variability.  This will result in a larger standardized statistic and more evidence against the null hypothesis.

5.  The farther the statistic is from the null value, the larger the standardized statistic.  This will result in a smaller p-value and more evidence against the null hypothesis.

### Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity and material covered.

\newpage