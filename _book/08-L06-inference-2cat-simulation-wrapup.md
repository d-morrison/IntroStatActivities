## Week 8 Lab:  Fatal Injuries in the Iliad

\setstretch{1}

### Learning objectives

* Given a research question involving two categorical variables, construct the null and alternative hypotheses
  in words and using appropriate statistical symbols.
  
* Describe and perform a simulation-based hypothesis test for a difference in proportions.

* Interpret and evaluate a p-value for a simulation-based hypothesis test for a difference in proportions.

* Interpret and evaluate a confidence interval for a simualtion-based confidence interval for a difference in proportions.

### Fatal Injuries in the Iliad

Homer’s Iliad is an epic poem, compiled around 800 BCE, that describes several weeks of the last year of the 10-year siege of Troy (Ilion) by the Achaeans. The story centers on the rage of the great warrior Achilles. But it includes many details of injuries and outcomes, and is thus the oldest record of Greek medicine. The data report 146 recorded injuries for which both injury site and outcome are provided in the Illiad. For this activity we will focus on comparing injuries to the body and injuries to a limb and whether the injury resulted in a fatality.  Are injuries to the body more lethal than injuries to a limb?

Upload and open the `R` script file for Week 8 lab. Upload and import the csv file, `iliad`. Enter the name of the data set (see the environment tab) for datasetname in the R script file in line 5. Highlight and run lines 1--10 to get the counts for each combination of categories.


```r
iliad <- datasetname# Read data set in
iliad <- iliad %>%
  filter(Injury.Site != "Head/neck") #Removes the injuries to head and neck
iliad <- iliad %>%
  filter(Location != "Unknown") #Removes the unknown locations of injuries
iliad %>% group_by(Injury.Site) %>% count(Lethal) #finds the counts in each group
```

1. What is the explanatory variable?

\vspace{0.5in}

2. What is the response variable?

\vspace{0.5in}

3. What is the scope of inference for this study?

\newpage

4. Fill in the following two-way table using the `R` output.

|                           |       Body       |      Limb       |    Total   |
|---------------------------|------------------|-----------------|------------|
|       Fatal               |                  |                 |            |
|     Non-fatal             |                  |                 |            |
|       Total               |                  |                 |            |

5. Write the parameter of interest for this study.

\vspace{1in}

6. **Calculate the difference in proportion of fatal injuries for those inflicted on the body and those inflicted on a limb.  Use body - limb for the order of subtraction.  Use appropriate notation.**

\vspace{0.8in}

Use the provided `R` script file to create a segmented bar plot of the data.  Highlight and run lines 12--18.


```r
iliad %>% # Data set piped into...
ggplot(aes(x = Injury.Site, fill = Lethal)) +   # This specifies the variables
  geom_bar(stat = "count", position = "fill") +  # Tell it to make a stacked bar plot
  labs(title = "Title",  # Make sure to title your plot 
       x = "Location of Injury",   # Label the x axis
       y = "") +  # Remove y axis label
    scale_fill_grey()  # Make figure black and white
```
7.  Does there appear to be an association between the variables based on the plot?  Explain your answer.

\vspace{1in}

8.  Write the null hypothesis for this study in notation.

\vspace{0.5in}
\newpage

9.  **Using the research question, write the alternative hypothesis in words.**

\vspace{1in}

Fill in the missing values/names in the `R` script file in the two-proportion_test function to create the null distribution and find the p-value for the test.


```r
two_proportion_test(formula = response~explanatory, # response ~ explanatory
                    data= iliad, # Name of data set
                    first_in_subtraction = "xx", # Order of subtraction: enter the name of Group 1
                    number_repetitions = 1000, # Always use a minimum of 1000 repetitions
                    response_value_numerator = "xx", # Define which outcome is a success 
                    as_extreme_as = xx, # Calculated observed statistic (difference in sample proportions)
                    direction="xx") # Alternative hypothesis direction ("greater","less","two-sided")

```

10.  **Report and interpret the p-value in context of the problem.**

\vspace{0.8in}

11.  Do you expect that a 90\% confidence interval would contain the null value of zero?  Explain your answer.

\vspace{0.8in}

Fill in the missing values/names in the `R` script file in the two-proportion_bootstrap_CI function to create a simulation 90\% confidence interval.  **Upload a copy of the bootstrap distribution to Gradescope.**


```r
two_proportion_bootstrap_CI(formula = response~explanatory, 
                            data=iliad, # Name of data set
                            first_in_subtraction = "xx", # Order of subtraction: enter the name of Group 1
                            response_value_numerator = "xx", # Define which outcome is a success 
                            number_repetitions = 1000, # Always use a minimum of 1000 repetitions
                            confidence_level = 0.9) # Enter the level of confidence as a decimal
```

12.  Report and interpret the 90\% confidence interval.

\vspace{0.8in}

13.  Write a conclusion to the research question in context of the study.

\vspace{0.8in}

14.  **What type of error could have occurred?**

\vspace{0.2in}

15. Interpret this error in context of the study.

\vspace{0.8in}

16.  Write a paragraph summarizing the results of the study as if writing a press release.  Be sure to describe:

* Summary statistic and interpretation

* P-value and interpretation

* Confidence interval and interpretation

* Conclusion (written to answer the research question)

* Scope of inference

**Upload your group's confidence interval interpretation and conclusion to Gradescope.** 

\newpage
