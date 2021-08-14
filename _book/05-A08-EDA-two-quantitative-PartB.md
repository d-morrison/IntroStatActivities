## Activity 5b:  Movie Profits - Correlation and Coefficient of Determination

\setstretch{1}

### Learning objectives

* Identify and create appropriate summary statistics and plots
  given a data set with two quantitative variables.
  
* Calculate and interpret $R^2$, the coefficient of determination, in context of the problem.

* Find the correlation coefficient from `R` output or from $R^2$ and the sign of the slope.

### Terminology review

In today's activity, we will review summary measures and plots for two quantitative variables.  Some terms covered in this activity are:

* Correlation ($r$ or $R$)

* Coefficient of determination ($r$-squared or $R^2$)

To review these concepts, see Chapter 3 in the textbook.  

### Movies released in 2016

We will revisit the movie data set collected on Movies released in 2016 to further explore the relationship between budget and revenue. Here is a reminder of the variables collected on these movies.

| **Variable** 	| **Description** |
|----	|-------------	|
| `budget_mil` | Amount of money (in US $ millions) budgeted for the production of the movie |
| `revenue_mil` | Amount of money (in US $ millions) the movie made after release|
| `duration` | Length of the movie (in minutes)|
| `content_rating` | Rating of the movie (`G`, `PG`, `PG-13`, `R`, `Not Rated`)|
| `imdb_score` | IMDb user rating score from 1 to 10 |
| `genres` | Categories the movie falls into (e.g., Action, Drama, etc.) |
| `facebook_likes` | Number of likes a movie receives on Facebook |



#### Correlation  {-}

Correlation measures the strength and the direction of the linear relationship between two quantitative variables.  The closer the value of correlation to $+1$ or $-1$, the stronger the linear relationship.  Values close to zero indicate a very weak linear relationship between the two variables.  The following output shows a correlation matrix between several pairs of quantitative variables.  Highlight and run lines 1--12 to produce the same table as below.



```r
movies %>%  # Data set pipes into
  select(c("budget_mil", "revenue_mil", 
           "duration", "imdb_score", 
           "facebook_likes")) %>%
  cor(use="pairwise.complete.obs") %>%
  round(3)
```

```
#>                budget_mil revenue_mil duration imdb_score facebook_likes
#> budget_mil          1.000       0.686    0.463      0.292          0.678
#> revenue_mil         0.686       1.000    0.227      0.398          0.723
#> duration            0.463       0.227    1.000      0.261          0.438
#> imdb_score          0.292       0.398    0.261      1.000          0.309
#> facebook_likes      0.678       0.723    0.438      0.309          1.000
```

1.  Using the output above, which two variables have the *strongest* correlation? What is the value of this correlation?

\vspace{0.5in}

2.  What is the value of correlation between budget and revenue?

\vspace{0.3in}

3.  Based on the value of correlation found in question 2, what would the sign of the slope be? Positive or negative?  Explain.

\vspace{0.5in}

4.  Does your answer to question 3 match the direction you choose in question 4 in Activity 5a?

\vspace{0.3in}

5.  Explain why the correlation values on the diagonal are equal to 1.

\vspace{0.8in}

#### Coefficient of determination (squared correlation) {-}

Another summary measure used to explain the linear relationship between two quantitative variables is the coefficient of determination ($r^2$). The coefficient of determination, $r^2$, can also be used to describe the strength of the linear relationship between two quantitative variables. The value of $r^2$ (a value between 0 and 1) represents the **proportion of variation in the response that is explained by the least squares line with the explanatory variable**.  There are two ways to calculate the coefficient of determination: 

|    Square the correlation coefficient:  $r^2 = (r)^2$

|    Use the variances of the response and the residuals:  $r^2 = \dfrac{s_y^2 - s_{RES}^2}{s_y^2} = \dfrac{SST - SSE}{SST}$


6.  Use the correlation, $r$, found in question 2 of the activity, to calculate the coefficient of determination between budget and revenue, $r^2$.

\vspace{.4in}

7.  The variance of the response variable, revenue in \$MM, is about $s_{revenue}^2 = 8024.261$ \$MM$^2$  and the variability in the residuals is about $s_{RES}^2 = 4244.832$ \$MM$^2$.  Use these values to calculate the coefficient of determination.  Verify that your answers to 6 and 7 are the same.

\vspace{1in}

8.  Write a sentence interpreting the coefficient of determination in context of the problem.

\vspace{1in}

#### Multivariable plots {-}
What if we wanted to see if the relationship between movie budget and revenue differs if we add another variable into the picture?  The following plot visualizes three variables, creating a **multivariable** plot. 


```r
movies %>% # Data set pipes into...
  filter(content_rating != "Not Rated") %>% # Remove Not Rated movies
  ggplot(aes(x = budget_mil, y = revenue_mil, color = content_rating)) +  # Specify variables
  geom_point(aes(shape = content_rating), size = 3) +  # Add scatterplot of points
  labs(x = "Budget in Millions ($)",  # Label x-axis
       y = "Revenue in Millions ($)",  # Label y-axis
       color = "Content Rating",  # Label legend
       title = "Revenue vs. Budget") + # Be sure to tile your plots
  geom_smooth(method = "lm", se = FALSE, lwd = 2) + # Add regression lines
  scale_color_grey() # Make black and white
```



\begin{center}\includegraphics[width=0.7\linewidth]{05-A08-EDA-two-quantitative-PartB_files/figure-latex/unnamed-chunk-3-1} \end{center}

9.  Identify the three variables plotted in this graph.

\vspace{0.5in}

10. Does the *relationship* between movie budget and revenue differ among the different content ratings?  Explain.

\vspace{0.8in}

\newpage
#### Multiple Linear Regression {-}

In order to see what other variables may have an impact on revenue for movies released in 2016 we created a multivariate model.  The following `R` code gives the estimates for the regression model with `budget_mil` and `duration` included.


```r
# Fit linear model: y ~ x
revenueLM <- lm(revenue_mil ~ budget_mil+duration, data=movies)
summary(revenueLM)$coefficients # Display coefficient summary
```

```
#>               Estimate Std. Error   t value     Pr(>|t|)
#> (Intercept) 72.0861616 47.6716927  1.512138 1.340417e-01
#> budget_mil   1.0198102  0.1186827  8.592744 2.613611e-13
#> duration    -0.6054657  0.4505494 -1.343839 1.824165e-01
```

11. Use the provided `R` output to write the linear regression model including both variables.  *Hint*: The estimated line of regression is of the form:

$$\widehat{\text{revenue}} = b_0 + b_1\times budget + b_2\times duration.$$

\vspace{1in}

12. Using the fitted regression model above, predict the revenue for a movie in 2016 with a budget of 180 $MM and duration of 100 minutes.

\vspace{0.8in}

### Take-home messages

1. The sign of correlation and the sign of the slope will always be the same.  The closer the value of correlation is to $-1$ or $+1$, the stronger the relationship between the explanatory and the response variable.  

2.  The coefficient of determination multiplied by 100 ($r^2 \times 100$) measures the percent of variation in the response variable that is explained by the relationship with the explanatory variable.  The closer the value of the coefficient of determination is to 100%, the stronger the relationship.

3. A multiple linear regression model includes more than one variable as a predictor for the response variable.


### Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity and material covered.

\newpage
