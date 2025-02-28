## Activity 3B:  IMDb Movie Reviews --- Displaying Quantitative Variables

\setstretch{1}

### Learning outcomes

* Identify and create appropriate summary statistics and plots
  given a data set or research question for quantitative data.

* Interpret the following summary statistics in context:
  median, lower quartile, upper quartile, 
  standard deviation, interquartile range.

### Terminology review

In today's activity, we will review summary measures and plots for quantitative variables.  Some terms covered in this activity are:

* Two measures of center: mean, median

* Two measures of spread (variability): standard deviation, interquartile range (IQR)

* Types of graphs: box plots, dot plots, histograms

* Identify and create appropriate summary statistics and plots given a data set or research question for a single categorical and a single quantitative variable.

* Interpret the following summary statistics in context:
  median, lower quartile, upper quartile,
  standard deviation, interquartile range.

* Given a plot or set of plots, describe and compare the distribution(s)
  of a single quantitative variable
  (center, variability, shape, outliers).
  

To review these concepts, see Section 2.3 in the textbook.

### Movies released in 2016

A data set was collected on movies released in 2016 [@imdb].  Here is a list of some of the variables collected on the observational units, movies released in 2016.  

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

#### Summarizing a single quantitative variable {-}

The `favstats()` function from the `mosaic` package gives the summary statistics for a quantitative variable. Here we have the summary statistics for the variable `imdb_score`. The summary statistics give the two measures of center and two measures of spread for IMDb score. Highlight and run lines 1 -- 8 in the provided `R` script file to load the data set.  Check that the summary statistics match that printed in the coursepack.


```r
# Read in data set
movies <- read.csv("https://math.montana.edu/courses/s216/data/Movies2016.csv") 
movies %>% # Data set piped into...
  summarise(favstats(imdb_score)) # Apply favstats function to imdb_score
```

```
#>   min   Q1 median  Q3 max     mean       sd  n missing
#> 1 3.4 5.65    6.4 7.1 8.2 6.309783 1.086689 92       0
```

1. Give the values for the two measures of center (mean and median).

\vspace{0.5in}

2. Report the value for quartile 1 and interpret this value in context of the problem.

\vspace{0.5in}

3. Calculate the interquartile range ($IQR = Q_3 - Q_1$).

\vspace{0.5in}

4. Report the value of the standard deviation and interpret this value in context of the problem.
\vspace{0.8in}

#### Displaying a single quantitative variable {-}


5. What are the three types of plots used to plot a single quantitative variable?

\newpage

A dotplot will plot a dot for each value in the data set.  The following code will create a dotplot of IMDb scores.  Notice that we put in the variable name `imdb_score` for `x =` in the ggplot function.


```r
movies %>% # Data set piped into...
ggplot(aes(x = imdb_score)) +   # Name variable to plot
  geom_dotplot() +  # Create dotplot
  labs(title = "Dotplot of IMDb Score of Movies in 2016", # Title for plot
       x = "IMDb Score", # Label for x axis
       y = "Frequency") # Label for y axis
```



\begin{center}\includegraphics[width=0.6\linewidth]{03-A05-EDA-quantitative_files/figure-latex/unnamed-chunk-2-1} \end{center}

6. What is the shape of the distribution of IMDb scores?

\vspace{0.2in}

To create a histogram of the IMDb scores, enter the variable name, `imdb_score` in the provided `R` script file for `variable` at line 22, highlight and run lines 21--26.  Visually, this shows us the range of IMDb scores for Movies released in 2016.

Notice that the **bin width** is 0.5.  For example the first bin consists of the number of movies in the data set with an IMDb score of 3.25 to 3.75.  It is important to note that a movie with a IMDb score on the boundary of a bin will fall into the bin above it; for example, 4.75 would be counted in the bin 4.75--5.25.  


```r
movies %>% # Data set piped into...
ggplot(aes(x = variable)) +   # Name variable to plot
  geom_histogram(binwidth = 0.5) +  # Create histogram with specified binwidth
  labs(title = "Histogram of IMDb Score of Movies in 2016", # Title for plot
       x = "IMDb Score", # Label for x axis
       y = "Frequency") # Label for y axis
```

7. Sketch the histogram created here.

\vspace{1.4in}

8. Which range of IMDb scores have the highest frequency?

\vspace{0.2in}

To create a boxplot of the IMDb scores, enter the variable name, `imdb_score` in the provided `R` script file for `variable` at line 32, highlight and run lines 31--36.  


```r
movies %>% # Data set piped into...
ggplot(aes(x = variable)) +   # Name variable to plot
  geom_boxplot() +  # Create boxplot 
  labs(title = "Boxplot of IMDb Score of Movies in 2016", # Title for plot
       x = "IMDb Score", # Label for x axis
       y = "Frequency") # Label for y axis
```


9. Sketch the boxplot created and identify the values of the 5-number summary (minimum value, first quartile ($Q_1$), median, third quartile ($Q_3$), maximum value) on the plot.  Use the following formulas to find the invisible fence on both ends of the distribution.  Draw a dotted line at the invisible fence to show how the outliers were found.

$$\text{Lower Fence: values} \le Q_1 - 1.5\times IQR$$

$$\text{Upper Fence: values} \ge Q_3 + 1.5\times IQR$$
\vspace{2in}

10. Compare the three graphs of IMDb scores created above.

    Which graph is best used to show the shape of the distribution?
    
    \vspace{0.5in}
    
    Which graph is best used to show the outliers of the distribution?
    
    \vspace{0.5in}
    
\newpage
    
#### Summary statistics for a single categorical and single quantitative Variable{-}

Is there an association between content rating and budget for movies in 2016?  To use the `favstats()` function in the mosaic package with two variables, we will enter the variables as a formula, response~explanatory.  This function will give the summary statistics for budget for each content rating.  Highlight and run lines 39--41 in the provided `R` script file and check that the summary statistics match those provided in the coursepack.


```r
movies %>% # Data set piped into...
  filter(content_rating != "Not Rated") %>% # Remove Not Rated movies
  summarise(favstats(budget_mil~content_rating)) # Find the summary measures for each content rating
```

```
#>   content_rating min    Q1 median      Q3 max     mean       sd  n missing
#> 1             PG 0.5 11.00   74.0 151.250 175 86.54167 71.52795 12       0
#> 2          PG-13 0.0 17.25   33.5 138.750 250 74.17500 74.15190 46       0
#> 3              R 0.0  7.75   19.5  29.625  60 21.09375 16.99926 32       0
```

11.  Which content rating has the largest IQR?

\vspace{0.8in}

12.  Report the mean budget amount for the PG rating.  Use appropriate notation.

\vspace{0.3in}

13.  Report the mean budget amount for the R rating.  Use appropriate notation.

\vspace{0.3in}

14. Calculate the difference in mean budget amount for movies in 2016 with a PG rating minus those with a R rating.  Use appropriate notation with informative subscripts.

\vspace{0.8in}

\newpage

#### Displaying a single categorical and single quantitative variable {-}

The boxplot of movie budgets (in millions) by content rating is plotted using the code below.  Enter the variable `budget_mil` for `response` and the variable `content_rating` for explanatory at line 47, highlight and run code lines 46--52. This plot compares the budget for different levels of content rating.


```r
movies %>%  # Data set piped into...
  filter(content_rating != "Not Rated") %>% # Remove Not Rated movies
  ggplot(aes(y = response, x = explanatory))+  # Identify variables
  geom_boxplot()+  # Tell it to make a box plot
  labs(title = "Side by side box plot of budget by content rating",  # Title
       x = "Content Rating",    # x-axis label
       y = "Budget (in Millions)")  # y-axis label
```

15. Sketch the box plots created using the `R` code.

\vspace{1.5in}


16. Answer the following questions about the box plots created.

   a. Which content rating has the highest center?
\vspace{0.2in}

   b. Which content rating has the largest spread?
\vspace{0.2in}

   c. Which content rating has the most skewed distribution?
\vspace{0.2in}

   d. Fifty percent of movies in 2016 with a PG-13 content rating fall below what value?  What is the name of this value?
\vspace{0.4in}


17. Which variable is the explanatory variable? Response variable?

\vspace{0.4in}

\newpage

### Take-home messages

1.	Histograms, box plots, and dot plots can all be used to graphically display a single quantitative variable.  

2.  The box plot is created using the five number summary: minimum value, quartile 1, median, quartile 3, and maximum value.  Values in the data set that are less than $Q_1 - 1.5\times IQR$ and greater than $Q_3 + 1.5\times IQR$ are considered outliers and are graphically represented by a dot outside of the whiskers on the box plot.

3.  Data should be summarized numerically and displayed graphically to give us information about the study.

4.  When comparing distributions of quantitative variables we look at the shape, center, spread, and for outliers.  There are two measures of center: mean and the median and two measures of spread: standard deviation and the interquartile range, $IQR = Q_3 - Q_1$. 

### Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity and material covered.

\newpage
