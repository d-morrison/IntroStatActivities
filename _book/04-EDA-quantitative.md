# Exploring Quantitative Data

## Reading Guide: Quantitative Data

### Section 2.3 (Exploring quantitative data) {-}

**Videos**  

* 2.3

\setstretch{1.25}

### Types of plots {-}

Scatterplot:
\rgs

Dot plot:
\rgs

Histogram:
\rgs

Density plot:
\rgs

Box plot:
\rgs


#### Vocabulary {-}

Four characteristics of a scatterplot:

\rgi Form:
\rgs

\rgi Strength:
\rgs

\rgi Direction:
\rgs

\rgi Unusual observations or outliers:
\rgs

Data density:
\rgs

Tail:
\rgs

Skew:
\rgs

Symmetric:
\rgs

Modality:
\rgs

Distribution (of a variable):
\rgs

\rgi Four characteristics of the distribution of 1 quantitative variable:
	
\rgi Center:
\rgs

\rgi Variability:
\rgs

\rgi Shape:
\rgs

\rgi Outliers:
\rgs

Point estimate:
\rgs

Deviation:
\rgs

Five number summary:
\rgs

$X^{th}$ percentile:
\rgs

	E.g. if the value 6 is 10th percentile, then 10% of the data have values 6 or below.

Interquartile range (IQR):
\rgs

Robust statistics:
\rgs

#### Notes {-}

What type of plot(s) are appropriate for displaying one quantitative variable?
\rgs

What type of plot(s) are appropriate for displaying two quantitative variables?
\rgs

What type of plot(s) are appropriate for displaying one quantitative variable and one categorical variable?
\rgs

What are the two ways to measure the ‘center’ of a distribution?  Which one is considered robust to skew/outliers?
\rgs

What are the three ways to measure the ‘variability’ of a distribution?  Which one is considered robust to skew/outliers?
\rgs

How are variance and standard deviation related?
\rgs

Fill in the following table with the appropriate notation.
\begin{center}
\begin{tabular}{|l|p{2in}|p{2in}|} \hline
Summary Measure & Parameter & Statistic \\ \hline
Mean & & \\ 
& & \\ \hline
Variance & & \\ 
& & \\ \hline
Standard deviation & & \\ 
& & \\ \hline
\end{tabular}
\end{center}

How are outliers denoted on a box plot?  How can you mathematically determine if a data set has outliers?
\rgs


### Section 2.4 (`R`: Exploratory data analysis) and Section 2.5 (Chapter 2 review) {-}

Section 2.4 presents four tutorials on analyzing quantitative data in `R`.  We recommend you complete all four.

#### Notes {-}

Statistics summarize _____________ .

Parameters summarize _____________.

Fill in the following table with the appropriate notation for each summary measure.

\begin{center}
\begin{tabular}{|l|p{2in}|p{2in}|}\hline
Summary measure & Statistic & Parameter \\ \hline
Sample size & & \\ 
& & \\ 
& & \\ \hline
Proportion & & \\ 
(used to summarize & & \\ 
1 categorical variable) & & \\ \hline
Mean & & \\ 
(used to summarize & & \\ 
1 quantitative variable)& & \\ \hline
Correlation & & \\ 
(used to summarize & & \\ 
two quantitative variables)& & \\ \hline
Regression line slope & & \\ 
(used to summarize & & \\ 
two quantitative variables)& & \\ \hline
\end{tabular}
\end{center}

Look at the table of vocabulary terms.  If there are any you do not know, be sure to review the appropriate section of your text.

#### Data visualization summary {-}

Fill in the following table to help associate type of plot for each of several scenarios.

\begin{center}
\begin{tabular}{|l|p{3in}|} \hline
 & Appropriate plot(s) \\ \hline
1 categorical variable & \\
(categorical response, no explanatory) & \\ \hline
1 quantitative variable  & \\
(quantitative response, no explanatory) & \\ \hline
Two categorical variables  & \\
(categorical response, categorical explanatory) & \\ \hline
One of each  & \\
(quantitative response, categorical explanatory) & \\ \hline
Two quantitative variables  & \\
(quantitative response, quantitative explanatory) & \\ \hline
\end{tabular}
\end{center}

\rgs
Decision tree for determining an appropriate plot  given a number of variables and their types from Chapter 2 review:


\begin{center}\includegraphics[width=0.7\linewidth]{04-EDA-quantitative_files/figure-latex/decision-tree-plots-1} \end{center}


\newpage

## Activity:  IMDb Movie Reviews

\setstretch{1}

### Learning objectives

* Identify and create appropriate summary statistics and plots
  given a data set or research question for quantitative data

* Interpret the following summary statistics in context:
  median, lower quartile, upper quartile,
  standard deviation, inter-quartile range

* Given a plot or set of plots, describe and compare the distribution(s)
  of a single quantitative variable
  (center, variability, shape, outliers)

### Terminology review

In this week's activity, we will review summary measures and plots for quantitative variables.  Some terms covered in this activity are:

* Two measures of center: mean, median

* Two measures of spread (variability): standard deviation, inter-quartile range (IQR)

* Types of graphs: box plots, dot plots, histograms

To review these concepts, see Section 2.3 in the textbook.

### Movies released in 2016

A data set was collected on movies released in 2016.  Here is a list of some of the variables collected on these movies.

| **Variable** 	| **Description** |
|----	|-------------	|
| `budget_mil` | Amount of money (in US $ millions) budgeted for the production of the movie |
| `revenue_mil` | Amount of money (in US $ millions) the movie made after release|
| `duration` | Length of the movie (in minutes)|
| `content_rating` | Rating of the movie (`G`, `PG`, `PG-13`, `R`, `Not Rated`)|
| `imdb_score` | IMDb user rating score from 1 to 10 |
| `genres` | Categories the movie falls into (e.g., Action, Drama, etc.) |
| `movie_facebook_likes` | Number of likes a movie receives on Facebook |

\newpage

#### Vocabulary review. Complete Q1 - 3 before class. {-}

1. What are the observational units in this data set?

\vspace{0.1in}

2. Which of the above listed variables are categorical?

\vspace{.5in}

3. Which of the above listed variables are quantitative?

\vspace{.5in}

#### Summarizing a single quantitative variable {-}

The `favstats` function from the `mosaic` package gives the summary statistics for a quantitative variable. Here we have the summary statistics for the variable `imdb_score`.


```r
movies <- read.csv("data/Movies2016.csv") # Read in data set
movies %>% # Data set piped into...
  summarise(favstats(imdb_score)) # Apply favstats function to imdb_score
```

```
#>   min   Q1 median  Q3 max     mean       sd  n missing
#> 1 3.4 5.65    6.4 7.1 8.2 6.309783 1.086689 92       0
```

4. Give the values for the two measures of center.

\vspace{0.5in}

5. Calculate the Interquartile range (IQR = Q3 - Q1).

\vspace{0.5in}

6. Report the value of the standard deviation and interpret this value in context of the problem.
\vspace{1in}

#### Displaying a single quantitative variable {-}

7. What are the three types of plots used to plot a single quantitative variable?

\newpage

To create a histogram of the IMDb scores, enter the variable name, `imdb_score` in the provided `R` script file for xx at line 12, highlight and run lines 1 - 16.  Visually, this shows us the range of IMDb scores for Movies released in 2016.

Notice that the **bin width** is 0.5.  For example the first bin consists of the number of movies in the data set with an IMDb score of 3.25 to 3.75.  It is important to note that a movie with a IMDb score on the boundary of a bin will fall into the bin above it; for example, 4.76 would be counted in the bin 4.75--5.25.  


```r
movies %>% # Data set piped into...
ggplot(aes(x = xx)) +   # Name variable to plot
  geom_histogram(binwidth = 0.5) +  # Create histogram with specified binwidth
  labs(title = "Histogram of IMDb Score of Movies in 2016", # Title for plot
       x = "IMDb Score", # Label for x axis
       y = "Frequency") # Label for y axis
```


8. Sketch the histogram created here.

\vspace{1in}

9. Which range of IMDb scores have the highest frequency?

\vspace{0.4in}

10. What is the shape of the distribution of IMDb scores?

\vspace{0.4in}

11. Which five summary statistics are used in creating a box plot? *Hint*: Together they are called the **five-number summary** of the variable.

\vspace{0.4in}

12. Using the code below we see that the three smallest IMDb scores in the data set are 3.4, 3.5, and 3.7 and the three largest IMDb scores are 8.0, 8.1, and 8.2:  

    
    ```r
    movies %>% # Data set pipes into...
      select(imdb_score) %>% # Select imdb_score variable
      slice_min(imdb_score, n = 3)  # Show 3 smallest values
    ```
    
    ```
    #>   imdb_score
    #> 1        3.4
    #> 2        3.5
    #> 3        3.7
    ```

    
    ```r
    movies %>% # Data set pipes into...
      select(imdb_score) %>% # Select imdb_score variable
      slice_max(imdb_score, n = 3)  # Show 3 largest values
    ```
    
    ```
    #>   imdb_score
    #> 1        8.2
    #> 2        8.1
    #> 3        8.0
    ```

    Using the summary statistics above, and the smallest and largest values of the variable to check for outliers, sketch a box plot of IMDb Score.  Be sure to label the axes.

\vspace{1.5in}

#### Displaying a single categorical and single quantitative variable {-}

The box plot of movie budgets (in millions) by content rating is plotted using the code below.  Enter the variable `budget_mil` for yy and the variable `content_rating` for xx at line 31, highlight and run code lines 29 - 35. This plot helps to compare the budget for different levels of content rating.


```r
movies %>%  # Data set piped into...
  filter(content_rating != "Not Rated") %>% # Remove Not Rated movies
  ggplot(aes(y = yy, x = xx))+  # Identify variables
  geom_boxplot()+  # Tell it to make a box plot
  labs(title = "Side by side box plot of budget by content rating",  # Title
       x = "Content Rating",    # x-axis label
       y = "Budget (in Millions)")  # y-axis label
```

13. Sketch the box plots created using the `R` code.

\vspace{1.5in}

\newpage

14. Answer the following questions about the box plots created.

   a. Which content rating has the highest center?
\vspace{0.2in}

   b. Which content rating has the largest spread?
\vspace{0.2in}

   c. Which content rating has the most skewed distribution?
\vspace{0.2in}

   d. Fifty percent of movies in 2016 with a PG-13 content rating fall below what value?  What is the name of this value?
\vspace{0.4in}

   e.  What is the value for the third quartile (Q3) for the PG-13 rating?  Interpret this value in context.
\vspace{.8in}


### Out-of-class activity

For a little more practice using `Rstudio` to create graphs of quantitative variables we will look at some other variables in the `Movies` data set.  Download and open the provided `R` script file, highlight and run the first 8 lines of code.

To use the favstats function in the mosaic package with two variables, we will enter the variables as a formula, response~explanatory.


```r
movies %>% # Data set piped into...
  summarise(favstats(imdb_score~content_rating)) # Apply favstats function to imdb_score
```

```
#>   content_rating min    Q1 median    Q3 max     mean        sd  n missing
#> 1      Not Rated 3.7 4.700    5.7 6.700 7.7 5.700000 2.8284271  2       0
#> 2             PG 3.4 6.150    6.8 7.225 7.8 6.425000 1.2757351 12       0
#> 3          PG-13 4.0 5.800    6.5 7.100 8.2 6.367391 0.9477586 46       0
#> 4              R 3.5 5.375    6.3 7.050 8.1 6.221875 1.1335740 32       0
```

Using the provided `R` script file, we will create side-by-side histograms of IMDb by movie content rating. Enter the variable name, `imdb_score` for yy and `content_rating` for xx at line 44, highlight and run lines 39 - 48.


```r
movies %>%  # Data set piped into...
  filter(content_rating != "Not Rated") %>% # Remove Not Rated movies
  ggplot(aes(y = yy, x = xx))+  # Identify variables
  geom_boxplot()+  # Tell it to make a box plot
  labs(title = "Side by side box plot of budget by content rating",  # Title
       x = "Content Rating",    # x-axis label
       y = "Budget (in Millions)")  # y-axis label
```

1.  Using the provided favstats output and the side-by-side box plots, interpret the value of quartile 1 for the R content rating.

\vspace{1in}

2. Which content rating has the highest center?

\vspace{0.2in}

3. Which variable is the explanatory variable? Response variable?

\vspace{0.5in}

### Take-home messages

1.	Histograms, box plots, and dot plots can all be used to graphically display quantitative variables.  When we have a single categorical variable and a single quantitative variable we will display the data in side-by-side plots.

2.  The box plot is created using the five number summary: minimum value, quartile 1, median, quartile 3, and maximum value.  Values in the data set that are less than $Q_1 - 1.5*IQR$ and greater than $Q_3 + 1.5*IQR$ are considering outliers and are graphically represented by a dot outside of the whiskers on the box plot.

3.  When comparing distributions of quantitative variables we look at the shape, center, spread, and for outliers.  There are two measures of center: mean and the median and two measures of spread: standard deviation and the interquartile range, IQR = Q1- Q3. 

4.  The median and IQR are robust measures that are not affected by the presence of outliers. 

### Additional notes

Use this space to summarize your thoughts and take additional notes on this week's activity and material covered.
