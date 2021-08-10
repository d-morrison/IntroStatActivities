## Activity 4a:  IMDb Movie Reviews - Displaying One Variable

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

### Terminology review

In today's activity, we will review summary measures and plots for quantitative variables.  Some terms covered in this activity are:

* Two measures of center: mean, median

* Two measures of spread (variability): standard deviation, interquartile range (IQR)

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
| `facebook_likes` | Number of likes a movie receives on Facebook |

\newpage

#### Vocabulary review. {-}

1. What are the observational units in this data set?

\vspace{0.1in}

2. Which of the above listed variables are categorical?

\vspace{.5in}

3. Which of the above listed variables are quantitative?

\vspace{.5in}

#### Summarizing a single quantitative variable {-}

The `favstats()` function from the `mosaic` package gives the summary statistics for a quantitative variable. Here we have the summary statistics for the variable `imdb_score`.  Highlight and run lines 1 -- 8 in the provided `R` script file to load the data set.  Check that the summary statistics match that printed in the coursepack.


```r
# Read in data set
movies <- read.csv("data/Movies2016.csv") 
movies %>% # Data set piped into...
  summarise(favstats(imdb_score)) # Apply favstats function to imdb_score
```

```
#>   min   Q1 median  Q3 max     mean       sd  n missing
#> 1 3.4 5.65    6.4 7.1 8.2 6.309783 1.086689 92       0
```

4. Give the values for the two measures of center.

\vspace{0.5in}

5. Calculate the interquartile range (IQR = Q3 - Q1).

\vspace{0.5in}

6. Report the value of the standard deviation and interpret this value in context of the problem.
\vspace{0.8in}

#### Displaying a single quantitative variable {-}


7. What are the three types of plots used to plot a single quantitative variable?

\newpage

A dotplot will plot a dot for each value in the data set.  The following code will create a dotplot of IMDb scores.  Notice that we put in the variable name `imdb_score` for x = in the ggplot function.


```r
movies %>% # Data set piped into...
ggplot(aes(x = imdb_score)) +   # Name variable to plot
  geom_dotplot() +  # Create histogram with specified binwidth
  labs(title = "Dotplot of IMDb Score of Movies in 2016", # Title for plot
       x = "IMDb Score", # Label for x axis
       y = "Frequency") # Label for y axis
```



\begin{center}\includegraphics[width=0.6\linewidth]{04-A05-EDA-1quantitative_files/figure-latex/unnamed-chunk-2-1} \end{center}

8. What is the shape of the distribution of IMDb scores?

\vspace{0.2in}

To create a histogram of the IMDb scores, enter the variable name, `imdb_score` in the provided `R` script file for `variable` at line 20, highlight and run lines 19--24.  Visually, this shows us the range of IMDb scores for Movies released in 2016.

Notice that the **bin width** is 0.5.  For example the first bin consists of the number of movies in the data set with an IMDb score of 3.25 to 3.75.  It is important to note that a movie with a IMDb score on the boundary of a bin will fall into the bin above it; for example, 4.76 would be counted in the bin 4.75--5.25.  


```r
movies %>% # Data set piped into...
ggplot(aes(x = variable)) +   # Name variable to plot
  geom_histogram(binwidth = 0.5) +  # Create histogram with specified binwidth
  labs(title = "Histogram of IMDb Score of Movies in 2016", # Title for plot
       x = "IMDb Score", # Label for x axis
       y = "Frequency") # Label for y axis
```

9. Sketch the histogram created here.

\vspace{1.4in}

10. Which range of IMDb scores have the highest frequency?

\vspace{0.2in}


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

13. Compare the three graphs of IMDb scores created above.

    Which graph is best used to show the shape of the distribution?
    
    \vspace{0.5in}
    
    Which graph is best used to show the outliers of the distribution?
    
    \vspace{0.5in}

### Take-home messages

1.	Histograms, box plots, and dot plots can all be used to graphically display quantitative variables.  When we have a single categorical variable and a single quantitative variable we will display the data in side-by-side plots.

2.  The box plot is created using the five number summary: minimum value, quartile 1, median, quartile 3, and maximum value.  Values in the data set that are less than $Q_1 - 1.5*IQR$ and greater than $Q_3 + 1.5*IQR$ are considering outliers and are graphically represented by a dot outside of the whiskers on the box plot.

3.  Data should be summarized numerically and displayed graphically to give us information about the study.


### Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity and material covered.

\newpage
