## Activity 5a:  Movie Profits - Linear Regression

\setstretch{1}

### Learning objectives

* Identify and create appropriate summary statistics and plots
  given a data set with two quantitative variables.
  
* Use scatterplots to assess the relationship between two quantitative variables.

* Find the estimated line of regression using summary statistics and `R` linear model (`lm()`) output.

* Interpret the slope coefficient in context of the problem.

### Terminology review

In today's activity, we will review summary measures and plots for two quantitative variables.  Some terms covered in this activity are:

* Scatterplot

* Least-squares line of regression

* Slope and $y$-intercept

* Residuals

To review these concepts, see Chapter 3 in the textbook.  

### Movies released in 2016

We will revisit the data set used last week collected on Movies released in 2016. Here is a reminder of the variables collected on these movies.

| **Variable** 	| **Description** |
|----	|-------------	|
| `budget_mil` | Amount of money (in US $ millions) budgeted for the production of the movie |
| `revenue_mil` | Amount of money (in US $ millions) the movie made after release|
| `duration` | Length of the movie (in minutes)|
| `content_rating` | Rating of the movie (`G`, `PG`, `PG-13`, `R`, `Not Rated`)|
| `imdb_score` | IMDb user rating score from 1 to 10 |
| `genres` | Categories the movie falls into (e.g., Action, Drama, etc.) |
| `facebook_likes` | Number of likes a movie receives on Facebook |


#### Vocabulary review {-}



1.  What type of plot should be used to display the relationship between `budget_mil` and `revenue_mil`?

\vspace{0.2in}

2.  What three summary statistics could be used to describe the relationship between two quantitative variables?

\vspace{0.4in}

We will look at the relationship between budget and revenue for movies released in 2016. Enter the explanatory variable name, `budget_mil`, for `explanatory` and the response variable name, `revenue_mil`, for `response` at line 7 in the `R` script file to create the scatterplot. (Note: both variables are measured in "millions of dollars", or $MM.)  Highlight and run lines 1--12.


```r
movies %>% # Data set pipes into...
ggplot(aes(x = explanatory, y = response))+  # Specify variables
  geom_point() +  # Add scatterplot of points
  labs(x = "Budget in Millions ($)",  # Label x-axis
       y = "Revenue in Millions ($)",  # Label y-axis
       title = "Revenue vs. Budget") + # Be sure to title your plots
  geom_smooth(method = "lm", se = FALSE)  # Add regression line
```
3. Sketch the scatterplot created from the code.

\vspace{2in}

4. Assess the four features of the scatterplot that describe this relationship. Describe each feature using a complete sentence!

* Form (linear, non-linear)

\vspace{.2in}

* Direction (positive, negative)

\vspace{.2in}

* Strength

\vspace{.2in}

* Unusual observations or outliers

\vspace{.2in}


5. Does there appear to be an association between budget and revenue? Explain.

\vspace{1in}

\newpage 

#### Slope {-}

The linear model function in `R` (`lm()`) gives us the summary for the least squares regression line.  The estimate for `(Intercept)` is the $y$-intercept for the line of least squares, and the estimate for `budget_mil` (the $x$-variable name) is the value of $b_1$, the slope.


```r
# Fit linear model: y ~ x
revenueLM <- lm(revenue_mil ~ budget_mil, data=movies)
summary(revenueLM)$coefficients # Display coefficient summary
```

```
#>              Estimate Std. Error  t value     Pr(>|t|)
#> (Intercept) 9.1693054  9.0175499 1.016829 3.119606e-01
#> budget_mil  0.9460001  0.1056786 8.951670 4.339561e-14
```

6.  Write out the least squares line using the summary statistics provided above in context of the problem.

\vspace{.5in}

You may remember from middle and high school that slope $=\frac{\mbox{rise}}{\mbox{run}}$.  

Using $b_1$ to represent slope, we can write that as the fraction $\frac{b_1}{1}$. 

Therefore, the slope predicts how much the line will *rise* for each *run* of +1. In other words, as the $x$ variable increases by 1 unit, the $y$ variable is predicted to change (increase/decrease) by the value of slope.


7. Interpret the value of slope in context of the problem.

\vspace{.8in}

8. Using the least squares line from question 6, predict the revenue for a movie with a budget of 165 $MM.

\vspace{.6in}

9.  Predict the revenue for a movie with a budget of 500 $MM.  

\vspace{0.8in}

10. The prediction in question 9 is an example of what?

\vspace{0.3in}

#### Residuals {-}

The model we are using assumes the relationship between the two variables follows a straight line. The residuals are the errors, or the variability in the response that hasn't been modeled by the line (model).

\begin{center}
Data = Model + Residual

$\implies$ Residual = Data $-$ Model

$e_i=y_i-\hat{y}_i$
\end{center}

11.  The movie *Independence Day: Resurgence* had a budget of 165 \$MM and revenue of 102.315 \$MM.  Find the residual for this movie.

\vspace{.8in}

12.  Did the line of regression overestimate or underestimate the revenue for this movie? 

\vspace{.2in}

### Take-home messages

1.	Two quantitative variables are graphically displayed in a scatterplot.  The explanatory variable is on the $x$-axis and the response variable is on the $y$-axis.  When describing the relationship between two quantitative variables we look at the form (linear or non-linear), direction (positive or negative), strength, and for the presence of outliers. 

2.  There are three summary statistics used to summarize the relationship between two quantitative variables: correlation ($R$), slope of the regression line ($b_1$), and the coefficient of determination ($R^2$).  

3.  We can use the line of regression to predict values of the response variable for values of the explanatory variable. Do not use values of the explanatory variable that are outside of the range of values in the data set to predict values of the response variable (reflect on why this is true.).  This is called **extrapolation**. 

### Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity and material covered.

\newpage
