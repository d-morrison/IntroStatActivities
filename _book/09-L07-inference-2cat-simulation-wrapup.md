## Week 9 Lab:  COVID Infection and Vaccination Rates

\setstretch{1}

### Learning objectives

* Given a research question involving two categorical variables, construct the null and alternative hypotheses
  in words and using appropriate statistical symbols.
  
* Describe and perform a simulation-based hypothesis test for a difference in proportions.

* Interpret and evaluate a p-value for a simulation-based hypothesis test for a difference in proportions.

* Interpret and evaluate a confidence interval for a simualtion-based confidence interval for a difference in proportions.

### COVID Infection and Vaccination Rates

According to the *Washington Post* "States with higher vaccination rates now have markedly fewer coronavirus cases, as infections are dropping in places where most residents have been immunized and are rising in many places people have not."  In this article they found that there are differences in infection rates for different counties within a specific state.  To check this claim, a random sample of 125 counties from different states was assessed.  Vaccination rates were found for each county and broken up into groups, high and low, based on a vaccination rate of 40\%.  Those counties with a vaccination rate of greater than 40\% was considered a high vaccination rate.  The 2nd variable measured on these counties was whether the number of cases per 100,000 residents was less than or greater than 4.25, the national rate at that time.  Researchers want to assess if counties with a high vaccination rate are more likely to have lower coronavirus cases.

Upload and open the `R` script file for Week 9 lab. Upload and import the csv file, `covid_vaccinations`. Enter the name of the data set (see the environment tab) for datasetname in the R script file in line 6. Highlight and run lines 1--7 to get the counts for each combination of categories.


```r
# Read data set in
datasetname -> covid
covid %>% group_by(vaccination_rate) %>% count(cases)
```

1. What is the explanatory variable?

\vspace{0.5in}

2. What is the response variable?

\vspace{0.5in}

3. What is the scope of inference for this study?

\newpage

4. Fill in the following two-way table using the `R` output.

|                           | High Vaccination | Low Vaccination |    Total   |
|---------------------------|------------------|-----------------|------------|
| Higher than National Rate |                  |                 |            |
| Lower than National Rate  |                  |                 |            |
| Total                     |                  |                 |            |

5. Write the parameter of interest for this study.

\vspace{1in}

**6. Calculate the difference in proportion of counties with a lower than the national average of cases for those with a high and low vaccination rate.  Use high - low for the order of subtraction.  Use appropriate notation.**

\vspace{0.8in}

Use the provided `R` script file to create a segmented bar plot of the data.


```r
covid %>% # Data set piped into...
ggplot(aes(x = explanatory, fill = response)) +   # This specifies the variables
  geom_bar(stat = "count", position = "fill") +  # Tell it to make a stacked bar plot
  labs(title = "Title",  # Make sure to title your plot 
       x = "Level of Light",   # Label the x axis
       y = "") +  # Remove y axis label
    scale_fill_grey()  # Make figure black and white
```
7.  Does there appear to be an association between variables based on the plot?  Explain your answer.

\vspace{1in}

8.  Write the null hypothesis for this study in notation.

\vspace{0.5in}

**9.  Using the research question, write the alternative hypothesis in words.**

\vspace{1in}

Fill in the missing values/names in the `R` script file in the two-proportion_test function to create the null distribution and find the p-value for the test.


```r
two_proportion_test(formula = response~explanatory, # response ~ explanatory
    data= covid, # Name of data set
    first_in_subtraction = "xx", # Order of subtraction: enter the name of Group 1
    number_repetitions = 1000, # Always use a minimum of 1000 repetitions
    response_value_numerator = "xx", # Define which outcome is a success 
    as_extreme_as = xx, # Calculated observed statistic (difference in sample proportions)
    direction="xx") # Alternative hypothesis direction ("greater","less","two-sided")
```

**10.  Interpret the p-value in context of the problem.**

\vspace{0.8in}

11.  Do you expect that a 90\% confidence interval would contain the null value of zero?  Explain your answer.

\vspace{0.8in}

Fill in the missing values/names in the `R` script file in the two-proportion_bootstrap_CI function to create a simulation 90\% confidence interval.


```r
two_proportion_bootstrap_CI(formula = response~explanatory, 
        data=covid, # Name of data set
        first_in_subtraction = "xx", # Order of subtraction: enter the name of Group 1
        response_value_numerator = "xx", # Define which outcome is a success 
        number_repetitions = 1000, # Always use a minimum of 1000 repetitions
        confidence_level = 0.9) # Enter the level of confidence as a decimal
```

12.  Report and interpret the 90\% confidence interval.

\vspace{0.8in}

13.  Write a conclusion to the research question in context of the study.

\vspace{0.8in}

**14.  What type of error could have occurred?**

\vspace{0.2in}

|    Interpret this error in context of the study.

\vspace{0.8in}

15.  Write a paragraph summarizing the results of the study as if writing a press release.  **Upload a copy of your group's summary paragraph to Gradescope.** Be sure to describe:

* Summary statistic and interpretation

* P-value and interpretation

* Confidence interval and interpretation

* Conclusion (written to answer the research question)

* Scope of inference

\vspace{2in}

