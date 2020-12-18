# COVID-19 and Air Pollution

## Learning outcomes

* Given a research question, construct the null and alternative hypotheses
  in words and using appropriate statistical symbols
  
* Describe and perform a simulation-based hypothesis test for paired quantitative data

* Interpret and evaluate a p-value

* Find a confidence interval for the mean difference using bootstrapping

* Interpret a confidence interval

* Use a confidence interval to determine the conclusion of a hypothesis test

## Terminology review

In today's activity, we will analyze paired quantitative data using simulation-based methods. Some terms covered in this activity are:

* Mean difference

* Paired data

* Independent groups

* Shifted null distribution

To review these concepts, see Section 6.2 in the textbook.

## COVID-19 and air pollution

In June 2020, the social distancing efforts and stay-at-home directives to help combat the spread of COVID-19 appeared to help 'flatten the curve' across the United States, albeit at a high cost to many individuals and businesses. The impact of these measures, though, goes far beyond the infection and death rates from the disease. You may have seen images comparing air quality in large international cities like Rome, Milan, Wuhan, and New Delhi such as the one pictured in Figure \@ref{fig:covid}, which seem to indicate, perhaps unsurprisingly, that fewer people driving and factories being shut down have reduced air pollutants. 

Have high population-density US cities seen the same improved air quality conditions? To study this question, data was gathered from the U.S. Environmental Protection Agency (EPA) AirData website which records the ozone (O3) and fine particulate matter (PM2.5) values for cities across the U.S. These measures are used to calculate an air quality index (AQI) score for each city each day of the year. Thirty-three of the most densely populated US cities were selected and the AQI score recorded for April 20, 2020 as well as the five-year median AQI score for April 20th (2015--2019). Note that higher AQI scores indicate worse air quality. A box plot of the differences in AQI scores for the 33 cities and a table of summary statistics are shown below.


\begin{figure}

{\centering \includegraphics[width=0.6\linewidth]{images/air_pollution_greyscale} 

}

\caption{The India Gate in New Delhi, India.}(\#fig:covid)
\end{figure}

\vspace{.05in}




\begin{center}\includegraphics[width=0.6\linewidth]{10-paired_files/figure-latex/unnamed-chunk-2-1} \end{center}

\vspace{.2in}


Table: Summary statistics for current AQI scores, median AQI scores from 2015--2019, and the differences in AQI scores.

|               |         Mean         | Standard deviation | Sample size |
|:-------------:|:--------------------:|--------------------|-------------|
| Current       | $\bar{x}_1$ = 47.394 | $s_1$ = 14.107     | $n_1$ = 33  |
| 5 Year Median | $\bar{x}_2$ = 51.545 | $s_2$ = 17.447     | $n_2$ = 33  |
| Differences   | $\bar{x}_d$ = -4.152 | $s_d$ = 17.096     | $n_d$ = 33  |

\newpage
### Vocabulary review.  Complete questions 1 - 4 before class.{-}

1. What is the sample size? 

\vspace{0.5in}

2.  Identify the variables in this study.  What role do each have?

\vspace{.8in}

3. Why is this treated as a paired study design and not two independent samples?

\vspace{1in}

4. Is this an experiment or observational study? Justify your answer.

\vspace{0.3in}

5.  Are the differences in AQI scores independent for each case (US city)?  Explain.

\vspace{0.3in}

### Ask a research question {-}

6. What are the two competing possibilities to run a hypothesis test for this study?

\vspace{1in}

7. Write the null hypothesis in words.

\vspace{1in}

8. What is the research question?

\vspace{1in}

9. Write the alternative hypothesis in notation.

\vspace{1in}

\newpage
### Summarize and visualize the data  {-}

10. Report the summary statistic for the data.  

\vspace{0.3in}

11. What notation is used for the value in question 10? 

\vspace{0.3in}


### Use statistical inferential methods to draw inferences from the data {-}

To simulate the null distribution we will use a bootstrapping method.  Recall that the null distribution must be created under the assumption that the null hypothesis is true.  Therefore, before bootstrapping we will need to shift each data point by the difference $\mu_0 - \bar{x}$.  This will ensure that the mean of the shifted data is $\mu_0$ and that the simulated null distribution will be centered at the null value.  

12. Calculate the difference $\mu_0 - \bar{x}$.  Will we need to shift the data up or down?

\vspace{.7in}

13.  Use the provided `RScript` file and enter the calculated value from question 12 for xx to simulate the null distribution and enter the summary statistic from question 10 for yy to find the p-value.  Highlight and run lines 1 - 21.


```r
    paired_test(data = Air$Difference,   #Vector of differences or data set with column for each group
            shift = xx,   #Shift needed for bootstrap hypothesis test
            as_extreme_as = yy,  #Observed statistic
            direction = "less",  #Direction of alternative
            number_repetitions = 1000,  #Number of simulated samples for null distribution
            which_first = 1)  #Not needed when using calculated differences
```
    

14. Sketch the null distribution created in question 13 here.

\vspace{2in}

15. Explain why the null distribution is centered at zero. 

\vspace{.5in}


16. What proportion of samples are at or less than the sample mean difference in AQI scores for current scores minus 5 year median scores?

\newpage

17. Interpret the p-value in the context of the problem.

\vspace{.8in}

18. How much evidence does this provide for improved air quality in U.S. cities?

\vspace{.3in}

19. Write out the parameter of interest in context of the study.

\vspace{.6in}

20.  Using the provided `RScript` file fill in the missing value at xx in the paired bootstrap CI to find a 99\% confidence interval, highlight and run lines 24 - 27.  Report the confidence interval in interval notation.


```r
paired_bootstrap_CI(data = Air$Difference, #Enter vector of differences
                    number_repetitions = 1000, #Number of bootstrap samples for CI
                    confidence_level = xx,  #Confidence level in decimal form
                    which_first = 1)  #Not needed when entering vector of differences
```

\vspace{.3in}


### Communicate the results and answer the research question. {-}

21. Interpret the 99\% confidence interval in the context of the problem.

\vspace{.8in}

\newpage

22. Do the results of your confidence interval and hypothesis test agree?  What does each tell you about the null hypothesis?

\vspace{.7in}


23.  Write a paragraph summarizes the results of this study.  Be sure to describe:

* Summary statistic

* P-value and interpretation

* Conclusion (written to answer the research question)

* Confidence interval and interpretation

* Scope of inference

\vspace{3in}

### Revisit and look forward {-}

24. Would it be possible to design an experiment to determine if the changed human behavior due to the COVID-19 pandemic causes a decrease in air pollution? Explain. 
\vspace{0.6in}

## Out of Class Activity

The remaining questions cover theory-based methods for testing paired quantitative data.  Use section 6.2.3 in the textbook and the OneMeanTheory video to complete the following questions.

The sampling distribution for $\bar{x}$ based on a sample of size $n$ from a population with a true mean $\mu$ and true standard deviation $\sigma$ can be modeled using a normal distribution when certain conditions are met.

Conditions for the sample distribution of $\bar{x}$.

* Independence: The sample’s observations are independent

* Normality: data should be approximately normal

** n < 30: If the sample size n is less than 30 and there are no clear outliers in the data, then we typically assume the data come from a nearly normal distribution to satisfy the condition.

** n ≥ 30: If the sample size n is at least 30 and there are no particularly extreme outliers, then we typically assume the sampling distribution of $\bar{x}$ is nearly normal, even if the underlying distribution of individual observations is not.

1.  In the in-class activity we verified that the independence condition was satisfied.  Is the normality condition met to use the theory-based methods for analysis?  Explain your answer.

\vspace{1in}

To find the Standardized Statistic for the paired differences:

|     $T = \frac{\bar{x}_d}{SE(\bar{x}_d)}$

where the standard error of the mean difference

|     $SE(\bar{x}_d)=\frac{s_d}{\sqrt{n}}$

2.  Calculate the standard error of the mean difference.

\vspace{0.5in}

3.  Calculate the standardized statistic.

\vspace{0.5in}

Using the provided `RScript` file, enter the T score (for xx) into the pt function using a df = minimum(n - 1) = 33 - 1 = 32, and lower.tail = TRUE to find the p-value.  Highlight and run line 31.  


```r
pt(xx, df=32, lower.tail=TRUE)
```

4.  Is the p-value found using theory-based methods similar to the simulation p-value found in the in-class activity?

\vspace{0.5in}


To calculate the 99\% confidence interval use the following formula:

|    $\bar{x}_d\pm t^* SE(\bar{x}_d)$ we will need to find the $t^*$ multiplier using the function qt.  

For a 99\% confidence interval we are finding the $t^*$ value at the 99.5th percentile with df = n - 1 = 33 - 1 = 32.


```r
qt(0.995, df = 32, lower.tail=TRUE)
#> [1] 2.738481
```

5.  Calculate the 99\% confidence interval using theory-based methods.

\vspace{1in}

6.  Explain why the theory-based and simulation confidence intervals are not quite the same.

\vspace{1in}

## Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity.