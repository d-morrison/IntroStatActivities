## Activity 4b:  Movie Budgets - Displaying Two Variables

\setstretch{1}

### Learning objectives

* Identify and create appropriate summary statistics and plots
  given a data set or research question for a single categorical and a single quantitative variable.

* Interpret the following summary statistics in context:
  median, lower quartile, upper quartile,
  standard deviation, interquartile range.

* Given a plot or set of plots, describe and compare the distribution(s)
  of a single quantitative variable
  (center, variability, shape, outliers).
  
* Identify which summary statistics are robust to outliers.

### Terminology review

In today's activity, we will review summary measures and plots for a single categorical and single quantitative variable.  Some terms covered in this activity are:

* Two measures of center: mean, median

* Two measures of spread (variability): standard deviation, interquartile range (IQR)

* Types of graphs: side-by-side: box plots, dot plots, histograms

* Robust statistics

To review these concepts, see Section 2.3 in the textbook.

### Movies released in 2016

We will again use the data set collected on movies released in 2016.  As a reminder here is a list of some of the variables collected on these movies.

| **Variable** 	| **Description** |
|----	|-------------	|
| `budget_mil` | Amount of money (in US $ millions) budgeted for the production of the movie |
| `revenue_mil` | Amount of money (in US $ millions) the movie made after release|
| `duration` | Length of the movie (in minutes)|
| `content_rating` | Rating of the movie (`G`, `PG`, `PG-13`, `R`, `Not Rated`)|
| `imdb_score` | IMDb user rating score from 1 to 10 |
| `genres` | Categories the movie falls into (e.g., Action, Drama, etc.) |
| `facebook_likes` | Number of likes a movie receives on Facebook |

\newpage

#### Summary statistics {-}

To use the `favstats()` function in the mosaic package with two variables, we will enter the variables as a formula, response~explanatory.  This function will give the summary statistics for budget for each content rating.  Highlight and run lines 1 -- 9 in the provided `R` script file to load the data set and check that the summary statistics match those provided in the coursepack.


```r
movies <- read.csv("https://math.montana.edu/courses/s216/data/Movies2016.csv")
movies %>% # Data set piped into...
  filter(content_rating != "Not Rated") %>% # Remove Not Rated movies
  summarise(favstats(budget_mil~content_rating)) # Apply favstats function to imdb_score
```

```
#>   content_rating min    Q1 median      Q3 max     mean       sd  n missing
#> 1             PG 0.5 11.00   74.0 151.250 175 86.54167 71.52795 12       0
#> 2          PG-13 0.0 17.25   33.5 138.750 250 74.17500 74.15190 46       0
#> 3              R 0.0  7.75   19.5  29.625  60 21.09375 16.99926 32       0
```

1.  Which content rating has the largest IQR?

\vspace{0.8in}

2.  Report the mean budget amount for the PG rating.

\vspace{0.3in}

3.  Report the mean budget amount for the R rating.

\vspace{0.3in}

4. Calculate the difference in mean budget amount for movies in 2016 with a PG rating minus those with a R rating.  Use appropriate notation.  Label group 1 as PG rating and group 2 as R rating.

\vspace{0.8in}

#### Displaying a single categorical and single quantitative variable {-}

The boxplot of movie budgets (in millions) by content rating is plotted using the code below.  Enter the variable `budget_mil` for `response` and the variable `content_rating` for explanatory at line 14, highlight and run code lines 12--18. This plot helps to compare the budget for different levels of content rating.


```r
movies %>%  # Data set piped into...
  filter(content_rating != "Not Rated") %>% # Remove Not Rated movies
  ggplot(aes(y = response, x = explanatory))+  # Identify variables
  geom_boxplot()+  # Tell it to make a box plot
  labs(title = "Side by side box plot of budget by content rating",  # Title
       x = "Content Rating",    # x-axis label
       y = "Budget (in Millions)")  # y-axis label
```

5. Sketch the box plots created using the `R` code.

\vspace{1.5in}


6. Answer the following questions about the box plots created.

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


7. Which variable is the explanatory variable? Response variable?

\vspace{0.4in}

#### Robust Statistics {-}

Let's examine how the presence of outliers affect the values of center and spread. For this part of the activity we will look at the variable `revenue` in the movies data set. 


```
#>   min       Q1   median       Q3      max     mean       sd  n missing
#> 1   0 1.467318 33.02703 73.13457 407.1973 61.87334 89.57824 92       0
```


```r
movies %>% # Data set piped into...
ggplot(aes(x = revenue_mil)) +   # Name variable to plot
  geom_boxplot() +  # Create histogram with specified binwidth
  labs(title = "Histogram of Revenue of Movies in 2016", # Title for plot
       x = "Revenue (in Millions)", # Label for x axis
       y = "Frequency") # Label for y axis
```



\begin{center}\includegraphics[width=0.6\linewidth]{04-A06-EDA-1cat_1quant_files/figure-latex/unnamed-chunk-4-1} \end{center}
8. Report the two measures of center for this data.

\vspace{0.8in}

9.  Report the two measures of spread for this data.

\vspace{0.8in}

To show the effect of outliers on the measures of center and spread, the largest values in the data set were reduced by 100 \$MM. Upload and import the data set, `Movies2016_Sub` into Rstudio.  Enter the variable name `revenue_mil` for `variable` in line 32 and 34 to summarize and create a boxplot of the data. Highlight and run lines 31--38.  


```r
Movies2016_Sub %>% # Data set piped into...
  summarise(favstats(variable))
```


```r
Movies2016_Sub %>% # Data set piped into...
ggplot(aes(x = variable)) +   # Name variable to plot
  geom_boxplot() +  # Create histogram with specified binwidth
  labs(title = "Histogram of Revenue of Movies in 2016", # Title for plot
       x = "Revenue (in Millions)", # Label for x axis
       y = "Frequency") # Label for y axis
```

10. Report the two measures of center for this new data set.

\vspace{0.8in}

11. Report the two measures of spread for this new data set.

\vspace{0.8in}

12. Which measure of center is robust to outliers? Explain your answer.

\vspace{0.5in}

13.  Which measure of spread is robust to outliers?  Explain your answer.

\vspace{0.5in}

### Take-home messages

1.  When comparing distributions of quantitative variables we look at the shape, center, spread, and for outliers.  There are two measures of center: mean and the median and two measures of spread: standard deviation and the interquartile range, IQR = Q1- Q3. 

2. The median and the interquartile range are robust statistics, meaning that they are not affected by very large or very small values.  When we have a skewed distribution the best measure of center is the median and the best measure of spread is the IQR.


### Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity and material covered.

\newpage