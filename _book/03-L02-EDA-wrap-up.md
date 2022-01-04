## Week 3 Lab:  IPEDs

\setstretch{1}

### Learning objectives

* Identify and create appropriate summary statistics and plots
  given a data set or research question for data.

* Interpret the following summary statistics in context:
  median, lower quartile, upper quartile,
  standard deviation, interquartile range.

* Given a plot or set of plots, describe and compare the distribution(s)
  of a single quantitative variable
  (center, variability, shape, outliers).
  
* Use `R` to create graphs of variables.

### IPEDS

Download and open the provided `R` script file for the week 3 lab to answer the following questions.  **Remember that bolded questions will be answered on Gradescope for your group.**

These data are on a subset of institutions that met the following selection criteria:

*	Degree granting 

* United States only

* Title IV participating

* Not for profit

* 2-year or 4-year or above

* Has full-time first-time undergraduates

* Note that several variables have missing values for some institutions (denoted by “NA”).


\begin{center}\includegraphics[width=0.75\linewidth]{images/IPEDS_Description} \end{center}

#### Summarizing a single quantitative variable

1. What are the observational units for this study?

\vspace{0.3in}

2. Identify in the chart above which variables are categorical (C) and which variables are quantitative (Q).

\newpage

Upload the data set `IPEDS_Data_2018` Click on Import Dataset in the Environment tab in the upper right hand corner.  Choose `From Text(base)` and select the correct csv file.  Be sure that `Yes` is selected next to `Heading` in the pop-up screen.  Click `Import`.

Enter the name of the data set (see the environment tab) for `datasetname` in the `R` script file in line 6.  We will look at the retention rates for the 4-year institutions.  Enter the variable name `Retention` for `variable` in line 12.  Highlight and run lines 1 -- 12.  Note that the two lines of code (lines 8 and 10) are filtering to remove the 2-year institutions so we are only assessing Public 4-year and Private 4-year institutions.  


```r
IPEDS <- datasetname #Creates the object IPEDS 
IPEDS <- IPEDS %>%
  filter(Sector != "Public 2-year") #Filters the data set to remove Public 2-year
IPEDS <- IPEDS %>%
  filter(Sector != "Private 2-year") #Filters the data set to remove Private 2-year
IPEDS %>%
  summarise(favstats(variable)) #Gives the summary statistics
```

3.  **Report the value for quartile 3 and interpret this value in context of the study.**

\vspace{1in}

4.  Calculate the interquartile range for this study.

\vspace{0.5in}

5. Report and interpret the value of the standard deviation.

\vspace{1in}

6.  How many missing values are there?  What does this indicate?

\vspace{0.8in}

Next we will create both a histogram and a boxplot of the variable `Retention`.  Enter the name of the variable in both line 16 and line 23 for `variable` in the `R` script file.  **Give each plot a descriptive title.**  Highlight and run lines 15 -- 27 to give the histogram and boxplot. **Export and upload both plots to Gradescope for your group.**  To export the graphs:  in the bottom right corner in the Plots tab, click on `Export`, then choose `Save as Image`.  Save the image as a png.  This will save your graph to the server.  In the Files tab, click on the box next to your saved image file, click `More` and choose `Export`.  This will save your file to your downloads folder on your computer.


```r
IPEDS %>% # Data set piped into...
ggplot(aes(x = variable)) +   # Name variable to plot
  geom_histogram(binwidth = 5) +  # Create histogram with specified binwidth 
  labs(title = "Title", # Title for plot
       x = "Rentention Rate", # Label for x axis
       y = "Frequency") # Label for y axis
```


```r
IPEDS %>% # Data set piped into...
ggplot(aes(x = variable)) +   # Name variable to plot
  geom_boxplot() +  # Create boxplot 
  labs(title = "Title", # Title for plot
       x = "Retention Rates", # Label for x axis
       y = "Frequency") # Label for y axis
```

7.  What is the shape of the distribution of retention rates?  

\vspace{0.3in}

8.  Identify any outliers in the data set.

\vspace{0.3in}

#### Robust Statistics {-}

Let's examine how the presence of outliers affect the values of center and spread. 

9.  Report the two measures of center for retention given in the `R` output.

\vspace{0.8in}

10.  Report the two measures of spread for retention.

\vspace{0.8in}

\newpage

To show the effect of outliers on the measures of center and spread, the smallest values of retention rate in the data set were increased by 30%. Highlight and run lines 30--38.  


```r
IPEDS %>% # Data set piped into...
  summarise(favstats(Retention_Inc))
```


```r
IPEDS %>% # Data set piped into...
  ggplot(aes(x = Retention_Inc)) +   # Name variable to plot
  geom_boxplot() +  # Create boxplot
  labs(title = "Boxplot of Adjusted Revenue of Movies in 2016", # Title for plot
       x = "Revenue (in Millions)", # Label for x axis
       y = "Frequency") # Label for y axis
```

11. Report the two measures of center for this new data set.

\vspace{0.8in}

12. Report the two measures of spread for this new data set.

\vspace{0.8in}

13. **Which measure of center is robust to outliers? Explain your answer.**

\vspace{0.5in}

14.  Which measure of spread is robust to outliers?  Explain your answer.

\vspace{0.5in}

#### Summarizing a single categorical and single quantitative varible

Is there a difference in retention rates for public and private 4-year institutions?  In the next part of the activity we will compare retention rates for public and private 4-year institutions.  Note that this variable (public or private) is `Control` in the data set.

15.  **Which variable will we treat as the explanatory variable?  Response variable?**

\vspace{0.8in}

Enter the name of the explanatory variable and the name of the response variable in lines 53 and 56 of the `R` script file.  Highlight and run lines 52 -- 60 to find the summary statistics and create side by side boxplots of the data.


```r
IPEDS %>%  # Data set piped into...
  summarise(favstats(response~explanatory)) # Summary statistics for retention rates by sector
```


```r
IPEDS %>%  # Data set piped into...
  ggplot(aes(y = response, x = explanatory))+  # Identify variables
  geom_boxplot()+  # Create box plot
  labs(title = "Side by side box plot of retention rates by control",  # Title
       x = "Control",    # x-axis label
       y = "Retention Rates")  # y-axis label
```

16.  **Compare the two boxplots.**
    
     Which type of university has the highest center?
     \vspace{0.3in}
     
     Largest spread?
     \vspace{0.3in}
     
     What is the shape of each distribution?
     \vspace{0.3in}
     
     Does either distribution have outliers?
     \vspace{0.3in}
     
17. Report the difference in mean retention rates for private and public universities.  Use private minus public as the order of subtraction.  Use the appropriate notation.

\vspace{0.8in}

18.  Does there appear to be an association between retention rates and type of university?  Explain.

\newpage

####  Summarizing two categorical variables

Are private 4-year institutions smaller than public one? The following set of code will create a segmented bar plot of size of the institution by sector.  Enter the variable `Sector` for explanatory and `Size` for response in line 64. Highlight and run lines 63--69 in the `R` script file.


```r
IPEDS %>%
  ggplot(aes(x=explanatory, fill = response)) + # Enter the explanatory and response variables
  geom_bar(stat = "count", position = "fill") + # Create a segmented bar plot
  labs(title = "Segmented Bar Plot of Sector by Size", # Title
       x = "Sector", # x-axis label
       y = "") + # remove y-axis label
  scale_fill_grey()
```


19.  **Does there appear to be an association between sector and size of 4-year institutions?** 
\vspace{0.5in}


\newpage