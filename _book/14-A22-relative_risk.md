## Activity 14b:  Titanic Survivors - Relative Risk

\setstretch{1}

### Learning objectives

* Evaluate two categorical variables using relative risk.

### Terminology review
In today's activity, we will look another summary. Some terms covered in this activity are:

* Conditional proportion

* Relative risk

To review these concepts, see Chapter 5 in your textbook.

### Percent increase or percent decrease?

1.  Last season’s skis are 30\% off original sale price at REI. You want to buy a pair of skis that were originally \$100. How much will you pay? 

\vspace{0.5in}

2.  What about a pair of skis that were originally \$593 at REI?

\vspace{0.5in}

3.  The same pair of skis are selling for \$650 at Chalet Sports. What percent higher is this price compared to the \$593 at REI?

\vspace{0.5in}

4.  You’re on vacation in Spokane and decide to buy a \$450 pair of skis. The sales tax is 6.5\%. How much do you pay?

\vspace{0.5in}

### Titanic Survivors

A complete data set exists listing all those aboard HMS Titanic and including related facts about them including age, how much they paid for their ticket, which boat they survived in (if they survived), and their job if they were crew members. Stories, biographies and pictures can be found on the site: www.encyclopedia-titanica.org/.  Did all passengers aboard the Titanic have the same chance of survival?  Was the risk of death higher among 3rd class passengers compared to 1st class passengers?

These counts can be found in `R` by using the `count()` function:

```r
# Read data set in
survive <- Titanic %>%
  filter(Class_Dept == "1st Class Passenger" | Class_Dept == "3rd Class Passenger")
survive %>% group_by(Class_Dept) %>% count(Survived)
```

#### Data Exploration {-}

5.  Fill in the data from the `R` output to complete the two-way table.

|       	| 1st Class Passenger 	| 3rd Class Passenger 	| Total 	|
|-------	|---------------------	|---------------------	|-------	|
| Dead  	|                     	|                     	|       	|
| Alive 	|                     	|                     	|       	|
| Total 	|                     	|                     	|       	|

6.  Calculate the conditional proportion of 1st class passengers that died.

\vspace{0.8in}

7.  Calculate the conditional proportion of 3rd class passengers that died.

\vspace{0.8in}

8. Calculate the difference in conditional proportions of death for 3rd and 1st class passengers.  Use 3rd - 1st as the order of subtraction.

\vspace{0.8in}

9. Interpret the difference in proportions in context of the problem.

\vspace{0.8in}

#### Relative Risk {-}

Another summary statistic that can be calculated for two categorical variables is the relative risk.  The relative risk is calculated as the ratio of the conditional proportions:


$$\text{relative risk} = \frac{\hat{p}_1}{\hat{p}_2}.$$


10.  Calculate the relative risk of death for 3rd class passengers compared to 1st class passengers.

\vspace{0.8in}

11.  Interpret the value of relative risk in context of the problem.

\vspace{0.8in}

12. Calculate the percent increase or percent decrease in death.

\vspace{0.5in}

13. Interpret the value of relative risk as a percent increase or percent decrease in death.

\newpage


### Take-home messages

1.  Relative risk evaluates the percent increase or percent decrease in the response variable attributed to the explanatory variable.  To find the percent increase or percent decrease we calculate the following $\text{percent change}=(RR - 1)\times 100\%$. If relative risk is less than 1 there is a percent decrease.  If relative risk is greater than 1 there is a percent increase.

### Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity and material covered.

\newpage