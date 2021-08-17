## Week 13 Lab :  The Triple Crown

\setstretch{1}

### Learning objectives

* Given a research question involving one categorical explanatory variable and one quantitative response variable, construct the null and alternative hypotheses
  in words and using appropriate statistical symbols.

* Describe and perform a simulation-based hypothesis test for a difference in means.

* Interpret and evaluate a p-value for a hypothesis test for a difference in means.

* Use bootstrapping methods to find a confidence interval for a difference in means.

* Interpret a confidence interval for a difference in means.

### The triple crown 

The Triple Crown of "Thru" hiking consists of hiking the Appalachian Trail, the Pacific Crest Trail (PCT), and the Continental Divide Trail (CDT). Each year halfwayanywhere.com conducts a survey to better understand the people who hike these trails. One variable which is queried in the survey is the pre-hike "base weight" of a hiker's pack which is the total weight of gear without food, water, and worn gear. The 131 hikers surveyed who completed the CDT had a mean base weight of 15.266 lbs (sd = 5.128 lbs).  The 484 hikers surveyed who completed the PCT had a mean base weight of 17.837 lbs (sd = 7.823 lbs). Is there a difference in average base weight for PCT hikers and CDT hikers?  Use order of subtraction CDT - PCT.  

1. What is the explanatory variable for this study?
\vspace{0.2in}

2. What is the response variable for this study?
\vspace{0.2in}

3. **Write out the parameter of interest for this study.**

\vspace{0.8in}

4.  Write out the null hypothesis in notation for this study.  Be sure to clearly identify the subscripts.

\vspace{0.5in}

5. Write out the alternative hypothesis in words for this study.

\vspace{0.8in}

Upload and open the `R` script file for Week 13 lab. Upload and import the csv file, `Baseweight`. Enter the name of the data set (see the environment tab) for datasetname in the `R` script file in line 7. Write a title for the boxplots in line 11. Highlight and run lines 1--13 to load the data and create plots of the data.


```r
datasetname <- hikes 
hikes %>%  # Data set piped into...
  ggplot(aes(y = Baseweight, x = Trail))+  # Identify variables
  geom_boxplot()+  # Tell it to make a box plot
  labs(title = "xx",  # Title
       x = "Trail",    # x-axis label
       y = "Baseweight(lbs)")  # y-axis label
```

6. Based on the plots, which trail has the highest median baseweight?
\vspace{0.2in}

Enter the name of the explanatory variable for `explanatory` and the name of the response variable for `response` in line 17.  Highlight and run lines 16--17 to get the summary statistics for the data.


```r
hikes %>%
  summarize(favstats(response~explanatory))
```
7. **Calculate the summary statistic for this study.  Use appropriate notation.**

\vspace{1in}

### Use statistical inferential methods to draw inferences from the data {-}

8.  **Using the provided graphs and summary statistics, determine if it would make the most sense to use theory-based methods or simulation methods.  Explain your reasoning.**

\vspace{0.8in}

### Hypothesis test {-}

Remember that the null distribution is created based on the assumption the null hypothesis is true.  In this study, the null hypothesis states that there is no association between the two variables.  This means that the base weight observed in the data set would have been the same regardless of the type of trails.

We will use the `two_mean_test()` function in `R` (in the `catstats` package) to simulate the null distribution of differences in sample means and compute a p-value. 

9.  When using the `two_mean_test()` function, we need to enter the name of the response variable, `Baseweight`, and the name of the explanatory variable, `Trail`, for the formula.  The name of the data set as shown above is `hikes`.  What values should be entered for each of the following to create 1000 simulated samples?

\vspace{1mm}
* First in subtraction (What is the outcome for the explanatory variable that is used as first in the order of subtraction? `"CDT"` or `"PCT"`):

\vspace{.2in}
* Number of repetitions:
    
\vspace{.2in}
* As extreme as:
    
\vspace{.2in}
* Direction (`"greater"`, `"less"`, or `"two-sided"`):

\vspace{.2in}

10.  Simulate a null distribution and compute the p-value. Using the `R` script file for this activity, enter your answers for question 9 in place of the `xx`'s to produce the null distribution with 1000 simulations.  Highlight and run lines 20--25.  **Upload a copy of the null distribution created to Gradescope for your group.**


```r
two_mean_test(Baseweight~Trail, 
         data = hikes,  # Variables and data
         first_in_subtraction = "xx", # First outcome in order of subtraction
         number_repetitions = 1000,  # Number of simulations
         as_extreme_as = xx,  # Observed statistic
         direction = "xx")  # Direction of alternative: "greater", "less", or "two-sided"
```

|        Sketch the null distribution created using the code above.
\vspace{1.5in}

### Communicate the results and answer the research question {-}

11.  **Report the p-value. Based off of this p-value, write a conclusion to the hypothesis test.**

\vspace{0.8in}

12. Do you expect the 95\% confidence interval to contain the null value of zero?  Explain.

\vspace{0.8in}

### Confidence interval {-}

We will use the `two_mean_bootstrap_CI()` function in `R` (in the `catstats` package) to simulate the bootstrap distribution of differences in sample means and calculate a confidence interval. 

13. Using bootstrapping find a 95\% confidence interval. Using the provided `R` script file, enter the variable names and data set name as in the `two_mean_test()` function, outcome name for the first in subtraction, number of repetitions, and the confidence level as a decimal.  Highlight and run lines 28--32. Report the 95\% confidence interval in interval notation.

```r
two_mean_bootstrap_CI(RESPONSE ~ EXPLANATORY, 
                      data = DATASET,  # Variables and data
                      first_in_subtraction = "xx", # First value in order of subtraction
                      number_repetitions = 1000,  # Number of simulations
                      confidence_level = xx)
```

\vspace{0.3in}

14. Interpret the interval you calculated in question 13. 

\vspace{0.8in}

15.  What type of error may be possible?
\vspace{0.2in}

16.  Write a paragraph summarizing the results of the study as if you are reporting the results to your supervisor.  **Upload a copy of your paragraph to Gradescope for your group.**  Be sure to describe:

* Summary statistic

* P-value and interpretation

* Conclusion (written to answer the research question)

* Confidence interval and interpretation

* Scope of inference

\vspace{3in}


