# Record Snowfall



## Learning objectives

* Write out the null and alternative hypothesis for one categorical and one quantitative Variable

* Calculate and carry-out simulation based hypothesis test for a difference in means

* Interpret and evaluate a p-value

* Find a bootstap confidence interval for the difference in means

* Use a confidence interval to determine the conclusion of a hypothesis test

## Record snowfall

In the winter of 2018-2019, Bozeman had a record snowfall which resulted in the collapse of two flat-roofed buildings on the MSU campus.  A writer for the Washington Post predicted the heavy snowfall for 2018-2019 due to the El Nino weather pattern that occurred in that season. A meteorologist in Montana wanted to see if the weather pattern really was associated with total snowfall. She obtained historical data from 44 years on the weather pattern (El Nino or La Nina) and snowfall (in inches) at the Billings Weather Station.  






```r
ggplot(data = Snow,
       aes(x = WeatherPattern, y = Snowfall)) +
    geom_boxplot() + 
    labs(title = "Snowfall by weather pattern",
         x = "Weather pattern") +
    coord_flip()
```



\begin{center}\includegraphics[width=0.6\linewidth]{09-inference-2quant_files/figure-latex/unnamed-chunk-2-1} \end{center}



```r
favstats(Snowfall~WeatherPattern, data=Snow)
```

```
#>   WeatherPattern  min   Q1 median   Q3   max     mean       sd  n missing
#> 1        El_Nino 31.9 46.4   57.7 64.3  87.9 56.23043 13.00823 23       0
#> 2        La_Nina 44.5 51.4   60.9 70.3 107.2 63.13333 15.48626 21       0
```

### Quantitative variables review

1. The two variables assessed in this study are the type of weather pattern and snowfall.  Identify the role for each variable (explanatory, response).

\vspace{1in}

2. Which group (El Nino or La Nina) has the highest center? Explain what measure you are using?

\vspace{1in}

3.  Using the side-by-side boxplots, which group has the largest spread?  How did you make that choice?

\vspace{1in}

4.  Is this an experiment or an observational study? Explain your reasoning.

\vspace{1in}

5.  Is this a paired data set or independent groups?  Explain your answer.

\vspace{1in}

### Ask a research question.

6.  Write out the parameter of interest in context of the study.  Use proper notation and be sure to define your subscripts.  Use El Nino minus La Nina as the order of subtraction.

\vspace{1in}

7.  What are the two competing possibilities we will evaluate in this study?

\vspace{1in}

8.  Identify which is the null hypothesis and which is the alternative hypothesis. 

\vspace{1in}

### Summarize and visualize the data

9. Calculate the summary statistic.  Use El Nino minus La Nina as the order of subtraction. What is the appropriate notation for the statistic?

\vspace{0.5in}

### Use statistical inferential methods to draw inferences from the data

Remember that the null distribution is created based on the assumption the null hypothesis is true.  In this study, we asssume there is no association between variables.  This means that a snowfall value could be in either an El Nino year or a La Nina year.

To demonstrate this your instructor will use cards to represent the sample.  

10.  How many cards will we start with?

\vspace{0.5in}

11.  What will we write on each card?

\vspace{0.5in}

12.  Next we will mix the cards together and shuffle into two piles.  How many cards will go into each pile?  What should we label the piles?

\vspace{1in}

13.  What value is calculated from the cards and plotted on the null distribution?

\vspace{1in}

14.  Once we create a null distribution of 1000 simulations, at what value do you expect the distribution to be centered at?  Explain your answer.

\vspace{1in}

**simulation**

15.  Load the package CatStats.  Using the ....Enter the values for the ....

\vspace{1in}


16.  Report the p-value. How much evidence does the p-value provide against the null hypothesis?

\vspace{1in}

17. Using bootstrapping find a 90% confidence interval.  

**bootstrapping simulation**

18. Interpret the interval you calculated in Question 17. 

\vspace{1in}

### Communicate the results and answer the research question

19.  Write a paragraph summarizing the results of the study.  Be sure to include:

* Summary statistic

* P-value

* Conclusion (written to answer the research question)

* Confidence interval

* Interpretation of the confidence interval

* Scope of inference

\vspace{3in}

### Revisit and look rorward

20.  Would the results from the theory-based test match the results we saw with the simulation?  Explain why or why not.

\vspace{1in}

21. If we had data on 45 La Nina years and 47 El Nino years and found a similar summary statistic, what would happen to the p-value?  The width of the confidence interval?  The power?

\vspace{1in}




## Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity.


