---
title: "Activity: Graphing and Summarizing Quantitative Variables"
name: 
output: pdf_document
---



These data are on a subset of institutions that met the following selection criteria:
•	Degree granting 
•	United States only
•	Title IV participating
•	Not for profit
•	2-year or 4-year or above
•	Has full-time first-time undergraduates

* Note that several variables have missing values for some institutions (denoted by “NA”).


```r
include_graphics("images/IPEDS_Description.png")
```



\begin{center}\includegraphics[width=0.75\linewidth]{images/IPEDS_Description} \end{center}

1. What are the observational units for this study?

\vspace{0.5in}

2. Using the above table, which variables are categorical?  

\vspace{1in}

3. Which variables are quantitative? 

\vspace{1in}

4. What type of graph(s) could be used to plot retention rate?

\vspace{0.5in}

Upload and import the data set IPEDS_Data_2018. Enter the name of the data set (see the environment tab) for `datasetname` in the `R` code chunk below.  We will look at the retention rates for the different institutions.  Enter the variable name `Retention` for `variable` in the `R` code chunk below.  Run this chunk of code by clicking on the green play arrow below. 


```r
IPEDS <- read.csv("data/IPEDS_Data_2018.csv")
IPEDS %>%
  summarise(favstats(Retention)) #Gives the summary statistics
```

```
#>   min Q1 median Q3 max     mean       sd    n missing
#> 1   0 60     70 80 100 69.34096 15.08526 2754     165
```

5.  Report the value for quartile 3 and interpret this value in context of the study.

\vspace{1in}

6.  Calculate the interquartlie range for this study.

\vspace{0.5in}

7. Report and interpret the value of the standard deviation.

\vspace{1in}

Next we will create both a histogram and a boxplot of the variable `Retention`.  Enter the name of the variable in both sets of `R` code chunks below for `variable`.  Give each plot a descriptive title.  Run the two chunks of code to give the histogram and boxplot.


```r
IPEDS %>% # Data set piped into...
ggplot(aes(x = Retention)) +   # Name variable to plot
  geom_histogram(binwidth = 5) +  # Create dotplot
  labs(title = "Histogram of Rentention Rate for Universities in 2018", # Title for plot
       x = "Rentention Rate", # Label for x axis
       y = "Frequency") # Label for y axis
```


```r
IPEDS %>% # Data set piped into...
ggplot(aes(x = Retention)) +   # Name variable to plot
  geom_boxplot() +  # Create dotplot
  labs(title = "Boxplot of Rentention Rates for Universities in 2018", # Title for plot
       x = "Retention Rates", # Label for x axis
       y = "Frequency") # Label for y axis
```

8.  What is the shape of the distribution of retention rates?  

\vspace{0.3in}

9.  Identify any outliers in the data set.

\vspace{0.3in}

In the next part of the activity we will compare retention rates for public and private institutions.  Notice that this variable is `Control` in the data set.

10.  Which variable will we treat as the explanatory variable?  Response variable?

\vspace{0.8in}

Enter the name of the explanatory variable and the name of the response variable in the following `R` code to find the summary statistics and create the side by side boxplots of the data.


```r
IPEDS %>%  # Data set piped into...
  summarise(favstats(Retention~Control)) # Apply favstats function to budget_mil and content rating
#>   Control min Q1 median Q3 max     mean       sd    n missing
#> 1 Private   0 65     76 85 100 73.11975 17.15953 1286      61
#> 2  Public  26 58     65 74 100 66.03065 12.06858 1468     104
```


```r
IPEDS %>%  # Data set piped into...
  ggplot(aes(y = Retention, x = Control))+  # Identify variables
  geom_boxplot()+  # Tell it to make a box plot
  labs(title = "Side by side box plot of retention rates control",  # Title
       x = "Control",    # x-axis label
       y = "Retention Rates")  # y-axis label
```
11.  Compare the two boxplots.
    
     Which type of university has the highest center?
     \vspace{0.3in}
     
     Largest spread?
     \vspace{0.3in}
     
     What is the shape of each distribution?
     \vspace{0.3in}
     
     Does either distribution have outliers?
     \vspace{0.3in}
     
12. Report the difference in mean retention rates for private and public universities.  Use private minus public as the order of subtraction.  Use the appropriate notation.

\vspace{0.8in}

13.  Does there appear to be an association between retention rates and type of university?  Explain.

\vspace{0.8in}


```r
IPEDS %>%  # Data set piped into...
  ggplot(aes(y = Retention, x = Size))+  # Identify variables
  geom_boxplot()+  # Tell it to make a box plot
  labs(title = "Side by side box plot of retention rates by size",  # Title
       x = "Size",    # x-axis label
       y = "Retention Rates")  # y-axis label
```

14.  Is size a categorical or quantitative variable?  

\vspace{0.5in}

15.  Which university size has the highest center for retention rates?

\vspace{0.5in}

16.  Which university size has the largest spread of retention rates?

\vspace{0.5in}
