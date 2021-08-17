## Week 4 Lab:  IPEDs

\setstretch{1}

### Learning objectives

* Identify and create appropriate summary statistics and plots
  given a data set or research question for quantitative data.

* Interpret the following summary statistics in context:
  median, lower quartile, upper quartile,
  standard deviation, interquartile range.

* Given a plot or set of plots, describe and compare the distribution(s)
  of a single quantitative variable
  (center, variability, shape, outliers).
  
* Use `R` to create graphs of quantitative variables.

### IPEDS

Download and open the provided `R` script file for week 4 lab to answer the following questions.  **Remember that bolded questions will be answered on Gradescope for your group.**

These data are on a subset of institutions that met the following selection criteria:

*	Degree granting 

* United States only

* Title IV participating

* Not for profit

* 2-year or 4-year or above

* Has full-time first-time undergraduates

* Note that several variables have missing values for some institutions (denoted by “NA”).


\begin{center}\includegraphics[width=0.75\linewidth]{images/IPEDS_Description} \end{center}

1. What are the observational units for this study?

\vspace{0.3in}

2. Using the above table, which variables are categorical?  

\vspace{1in}

3. Which variables are quantitative? 

\vspace{1in}

4. What type of graph(s) could be used to plot retention rate?

\vspace{0.5in}

Upload and import the data set `IPEDS_Data_2018`. Enter the name of the data set (see the environment tab) for `datasetname` in the `R` script file in line 6.  We will look at the retention rates for the different institutions.  Enter the variable name `Retention` for `variable` in line 12.  Highlight and run lines 1 -- 12.


```r
datasetname -> IPEDS #Creates the object IPEDS 
IPEDS <- IPEDS %>%
  filter(Sector != "Public 2-year") #Filters the data set to remove Public 2-year
IPEDS <- IPEDS %>%
  filter(Sector != "Private 2-year") #Filters the data set to remove Private 2-year
IPEDS %>%
  summarise(favstats(variable)) #Gives the summary statistics
```

5.  **Report the value for quartile 3 and interpret this value in context of the study.**

\vspace{1in}

6.  Calculate the interquartile range for this study.

\vspace{0.5in}

7. Report and interpret the value of the standard deviation.

\vspace{1in}

8.  How many missing values are there?  What does this indicate?

\vspace{0.8in}

Next we will create both a histogram and a boxplot of the variable `Retention`.  Enter the name of the variable in both line 16 and line 23 for `variable` in the `R` script file.  **Give each plot a descriptive title.**  Highlight and run lines 15 -- 27 to give the histogram and boxplot. **Export and upload both plots to Gradescope for your group.**


```r
IPEDS %>% # Data set piped into...
ggplot(aes(x = variable)) +   # Name variable to plot
  geom_histogram(binwidth = 5) +  # Create dotplot
  labs(title = "Title", # Title for plot
       x = "Rentention Rate", # Label for x axis
       y = "Frequency") # Label for y axis
```


```r
IPEDS %>% # Data set piped into...
ggplot(aes(x = variable)) +   # Name variable to plot
  geom_boxplot() +  # Create dotplot
  labs(title = "Title", # Title for plot
       x = "Retention Rates", # Label for x axis
       y = "Frequency") # Label for y axis
```

9.  What is the shape of the distribution of retention rates?  

\vspace{0.3in}

10.  Identify any outliers in the data set.

\vspace{0.3in}

In the next part of the activity we will compare retention rates for public and private institutions.  Note that this variable (public or private) is `Control` in the data set.

11.  **Which variable will we treat as the explanatory variable?  Response variable?**

\vspace{0.8in}

Enter the name of the explanatory variable and the name of the response variable in lines 31 and 34 of the `R` script file.  Highlight and run lines 30 -- 38 to find the summary statistics and create side by side boxplots of the data.


```r
IPEDS %>%  # Data set piped into...
  summarise(favstats(response~explanatory)) # Apply favstats function to budget_mil and content rating
```


```r
IPEDS %>%  # Data set piped into...
  ggplot(aes(y = response, x = explanatory))+  # Identify variables
  geom_boxplot()+  # Tell it to make a box plot
  labs(title = "Side by side box plot of retention rates control",  # Title
       x = "Control",    # x-axis label
       y = "Retention Rates")  # y-axis label
```

12.  **Compare the two boxplots.**
    
     Which type of university has the highest center?
     \vspace{0.3in}
     
     Largest spread?
     \vspace{0.3in}
     
     What is the shape of each distribution?
     \vspace{0.3in}
     
     Does either distribution have outliers?
     \vspace{0.3in}
     
13. Report the difference in mean retention rates for private and public universities.  Use private minus public as the order of subtraction.  Use the appropriate notation.

\vspace{0.8in}

14.  Does there appear to be an association between retention rates and type of university?  Explain.

\vspace{0.8in}

The following set of code will create side by side boxplots of retention rates by size of the university.  Highlight and run lines 41--46 in the `R` script file.


```r
IPEDS %>%  # Data set piped into...
  ggplot(aes(y = Retention, x = Size))+  # Identify variables
  geom_boxplot()+  # Tell it to make a box plot
  labs(title = "Side by side box plot of retention rates by size",  # Title
       x = "Size",    # x-axis label
       y = "Retention Rates")  # y-axis label
```

15.  Is size a categorical or quantitative variable?  

\vspace{0.5in}

16.  Which university size has the highest center for retention rates?

\vspace{0.5in}

17.  **Which university size has the largest spread of retention rates?**

\vspace{0.5in}

\newpage