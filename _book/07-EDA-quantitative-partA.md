# Exploring Quantitative Data

## Reading Guide: Quantitative Data

\setstretch{1.25}

### Section 2.3 (Exploring quantitative data) {-}

### Type of Plots {-}

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

\rgi Four characteristics of the distribution of one quantitative variable:
	
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

    e.g. if the value 6 is at the 10th percentile, then 10% of the data have values 6 or below.

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
one categorical variable) & & \\ \hline
Mean & & \\ 
(used to summarize & & \\ 
one quantitative variable)& & \\ \hline
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
One categorical variable & \\
(categorical response, no explanatory) & \\ \hline
One quantitative variable  & \\
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


\begin{center}\includegraphics[width=0.7\linewidth]{07-EDA-quantitative-partA_files/figure-latex/decision-tree-plots-1} \end{center}


\newpage

## Activity:  IMDb Movie Reviews - Displaying One Quantitative Variable

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

The `favstats()` function from the `mosaic` package gives the summary statistics for a quantitative variable. Here we have the summary statistics for the variable `imdb_score`.


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

4. Give the values for the two measures of center.

\vspace{0.5in}

5. Calculate the interquartile range (IQR = Q3 - Q1).

\vspace{0.5in}

6. Report the value of the standard deviation and interpret this value in context of the problem.
\vspace{1in}

#### Displaying a single quantitative variable {-}


7. What are the three types of plots used to plot a single quantitative variable?

\newpage

A dotplot will plot a dot for each value in the data set.  The following code will create a dotplot of IMDb scores.


```r
movies %>% # Data set piped into...
ggplot(aes(x = imdb_score)) +   # Name variable to plot
  geom_dotplot() +  # Create histogram with specified binwidth
  labs(title = "Dotplot of IMDb Score of Movies in 2016", # Title for plot
       x = "IMDb Score", # Label for x axis
       y = "Frequency") # Label for y axis
```
8. Sketch the dotplot created here.

\vspace{1.4in}

9. What is the shape of the distribution of IMDb scores?

\vspace{0.2in}

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


10. Sketch the histogram created here.

\vspace{1.4in}

11. Which range of IMDb scores have the highest frequency?

\vspace{0.2in}


12. Which five summary statistics are used in creating a box plot? *Hint*: Together they are called the **five-number summary** of the variable.

\vspace{0.4in}

13. Using the code below we see that the three smallest IMDb scores in the data set are 3.4, 3.5, and 3.7 and the three largest IMDb scores are 8.0, 8.1, and 8.2:  

    
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

14. Compare the three graphs of IMDb scores created above.

    Which graph is best used to show the shape of the distribution?
    
    Which graph is best used to show the outliers of the distribution?

### Take-home messages

1.	Histograms, box plots, and dot plots can all be used to graphically display quantitative variables.  When we have a single categorical variable and a single quantitative variable we will display the data in side-by-side plots.

2.  The box plot is created using the five number summary: minimum value, quartile 1, median, quartile 3, and maximum value.  Values in the data set that are less than $Q_1 - 1.5*IQR$ and greater than $Q_3 + 1.5*IQR$ are considering outliers and are graphically represented by a dot outside of the whiskers on the box plot.


### Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity and material covered.
