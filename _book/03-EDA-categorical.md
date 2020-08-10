# Current Population Survey

## Learning outcomes

* Identify and create appropriate summary statistics and plots
  given a data set or research question
  
* Plots for a single categorical variable: bar plot

* Plots for association between two categorical variables:
  segmented bar plot, mosaic plot

* Recognize and simulate probabilities as long-run frequencies

* Construct two-way tables to evaluate conditional probabilities

## Terminology review

In today's activity, we will review summary measures and plots for categorical variables.  Some terms covered in this activity are:

* Proportions 

* Bar plots

* Segmented bar plots

* Probability

* Conditional probability

* Two-way tables

To review these concepts see Sections 2.1 and 2.2 in the textbook.  

\newpage
## "Current" Population Survey: 1985
The data set we will use for this activity is from the Current Population Survey in 1985.  The CPS is a survey sponsored by the Census Bureau and the Bureau of Labor Statistics to track labor force statistics for the United States population.  The following table summarizes the data:


\begin{center}\includegraphics[width=0.7\linewidth]{images/cps} \end{center}

### Vocabulary review

1. What are the observational units?

\vspace{0.2in}

2.  Which variables are categorical?

\vspace{0.4in}

3.  What types of plots can be used to display categorical data?

\vspace{0.5in}


An important part of understanding data is to create visual pictures of what the data represent.  In this activity we will create graphical representations of categorical data.

### `R` code

Throughout these activities, we will often include the `R` code
you would use in order to produce output or plots. These
"code chunks" appear in gray. In the code chunk below, we
demonstrate how to read the data set into `R` using the `read.csv()` function, and tell `R` to treat the `sector` and `sex` variables as categorical variables ("factors").

```r
cps <- read.csv("data/cps.csv") #This will read in the dataset
cps$sector <- factor(cps$sector) #When a variable is categorical, need to make it a factor
cps$sex <- factor(cps$sex)
```

\newpage

### Displaying a single categorical variable

If we wanted to know how many people in our data set were in each sector, we would create a bar plot of the variable sector.



```r
ggplot(data = cps,   #This specifies the dataset
       aes(y = sector)) +   #This specifies the variable
  geom_bar(stat = "count") +  #Tell it to make a bar plot
  labs(title = "Frequency Bar Plot of Sector",  #Give your plot a title
       x = "Frequency",   #Label the x axis
       y = "Sector")  + #Label the y axis
  coord_flip()  #Turn the bars so they are vertical
```



\begin{center}\includegraphics[width=0.5\linewidth]{03-EDA-categorical_files/figure-latex/unnamed-chunk-3-1} \end{center}
4.  Which Sector has the largest number of people in it?

\vspace{0.3in}

We could also choose to display the data as a proportion in a relative frequency bar plot. To find the relative frequency divide the count in each sector by the sample size.  These are sample proportions. 

```r
ggplot(data = cps,   #This specifies the dataset
       aes(x = sector)) +   #This specifies the variable
  geom_bar(aes(y = ..prop.., group = 1)) +  #Tell it to make a bar plot with proportions
  labs(title = "Relative Frequency Bar Plot of Sector",  #Give your plot a title
       x = "Sector",   #Label the x axis
       y = "Relative Frequency")  #Label the y axis
```



\begin{center}\includegraphics[width=0.5\linewidth]{03-EDA-categorical_files/figure-latex/unnamed-chunk-4-1} \end{center}

5.  Which features in the relative frequency bar plot are the same as the frequency bar plot?  Which are different?

\vspace{1in}

### Displaying two categorical variables

To see the differences in proportion of each sector between males and females we would create a segmented bar plot of sector segmented by sex.


```r
ggplot(data = cps,   #This specifies the dataset
       aes(x = sector, fill = sex)) +   #This specifies the variables
  geom_bar(stat = "count", position = "fill") +  #Tell it to make a stacked bar plot
  labs(title = "Segmented Bar Plot of Sector by Sex",  #Make sure to title your plot 
       x = "Sector",   #Label the x axis
       y = "") +  #Remove y axis label
    scale_fill_grey()  #Make figure black and white
```



\begin{center}\includegraphics[width=0.6\linewidth]{03-EDA-categorical_files/figure-latex/unnamed-chunk-5-1} \end{center}

6.  Using the segmented bar plot, which sector has about the same proportion of males and females?

\vspace{0.5in}

7. Which sector has the highest proportion of females?

\vspace{0.5in}

8. Which variable is the explanatory variable?  Which is the response variable?

\newpage

## Probability 

9. A study was reported in which ninth grade Minnesota teens were asked whether they had gambled at least once a week in the past year.  The sample consisted of 49.1% boys.  The proportion of boys who had gambled at least once per week during the past year was 0.229, while among non-boys this proportion was only 0.045.  
    Let B = the event the person is a boy, and C = the event the person is a weekly gambler.
\vspace{0.1in}

a. Draw a segmented bar plot of sex segmented by gambling.
\vspace{2in}

b. Identify what each numerical value represents in probability notation.
\vspace{.1in}

|                 0.491 =  
 \vspace{.2in}
 
|                 0.229 =  
\vspace{.2in}

|                 0.045 =  
\vspace{.2in}

c. Create a two-way hypothetical table to represent the situation.  Recall that in a two-way table, the explanatory variable should be your column headers (similar to the x-axis in a segmented bar graph!) while the response variable becomes the row headers.

| \hspace{1in}      |\hspace{1in}     |\hspace{1in}     | Total        |
|-------|---|---|---------|
|    \hspace{1in}     |   |   |         |
|    \hspace{1in}     |   |   |         |
|    \hspace{1in}     |   |   |         |
| Total |   |   | 100,000 |

d. Find $P(\mbox{B and C})$. What does this probability represent in the context of the problem?
\vspace{1in}

e. Find the probability that a selected non-gambler is a non-boy. What is the notation used for this probability?

\newpage

10. In a computer store, 30% of the computers in stock are laptops and 70% are desktops.  Five percent of the laptops are on sale, while 10% of the desktops are on sale.  Let L = the event the computer is a laptop, and S = the event the computer is on sale.
\vspace{0.1in}

   a. Identify what each numerical value represents in probability notation.
\vspace{.1in}

|                 0.30 =  
 \vspace{.2in}
 
|                 0.70 =  
\vspace{.2in}

|                 0.05 =  
\vspace{.2in}

|                 0.10 =  
\vspace{.2in}

   b. Create a two-way table to represent the situation.

| \hspace{1in}      |\hspace{1in}     |\hspace{1in}     | Total        |
|-------|---|---|---------|
|    \hspace{1in}     |   |   |         |
|    \hspace{1in}     |   |   |         |
|    \hspace{1in}     |   |   |         |
| Total |   |   | 100,000 |

   c. Calculate the probability that a randomly selected computer will be a desktop, given that the computer is on sale. What is the notation used for this probability?
\vspace{1in}


   d. Find $P(S | L^C)$. What does this probability represent in context of the problem?
\vspace{1in}


## Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity.


