## Week 4 - Lab 3:  Tip Percentages

\setstretch{1}

### Learning objectives
???


The Palmer Station Long Term Ecological Research Program sampled three penguin species on islands in the Palmer Archipelago in Antarctica. Researchers took various body measurements on the penguins, including flipper length and body mass. The researchers were interested in the relationship between flipper length and body mass and wondered if flipper length could be used to accurately predict the body mass of these three penguin species. 

Upload and import the `penguins` csv file. Using the following `R` code chunk create a scatterplot of the flipper length and body mass.  Make sure to give your plot a descriptive title.


```
#> Warning: Removed 2 rows containing non-finite values (stat_smooth).
#> Warning: Removed 2 rows containing missing values (geom_point).
```



\begin{center}\includegraphics[width=0.7\linewidth]{05-L04-EDA-two-quantitative-wrapup_files/figure-latex/unnamed-chunk-1-1} \end{center}

1. Assess the four features of the scatterplot that describe this relationship. Describe each feature using a complete sentence!

* Form (linear, non-linear)

\vspace{.4in}

* Direction (positive, negative)

\vspace{.4in}

* Strength

\vspace{.4in}

* Unusual observations or outliers

\vspace{.4in}


```r
penguins %>%  # Data set pipes into
  select(c("bill_length_mm", "bill_depth_mm", 
           "flipper_length_mm", "body_mass_g")) %>%
  cor(use="pairwise.complete.obs") %>%
  round(3)
```

```
#>                   bill_length_mm bill_depth_mm flipper_length_mm body_mass_g
#> bill_length_mm             1.000        -0.235             0.656       0.595
#> bill_depth_mm             -0.235         1.000            -0.584      -0.472
#> flipper_length_mm          0.656        -0.584             1.000       0.871
#> body_mass_g                0.595        -0.472             0.871       1.000
```

2.  Using the output above, which two variables have the *strongest* correlation? What is the value of this correlation?

\vspace{0.5in}

3. Using the value of correlation, calculate the value of the coefficient of determination.

\vspace{0.5in}

4. Interpret the coefficient of determination in context of the problem.

\vspace{1in}


```r
# Fit linear model: y ~ x
penguinsLM <- lm(body_mass_g~flipper_length_mm, data=penguins)
summary(penguinsLM)$coefficients # Display coefficient summary
```

```
#>                      Estimate Std. Error   t value      Pr(>|t|)
#> (Intercept)       -5780.83136 305.814504 -18.90306  5.587301e-55
#> flipper_length_mm    49.68557   1.518404  32.72223 4.370681e-107
```

5.  Write out the least squares line using the summary statistics provided above in context of the problem.

\vspace{.5in}

6. Interpret the value of slope in context of the problem.

\vspace{.8in}

7. Using the least squares line from question 5, predict the body mass for a penguin for a flipper length of 181 mm.

\vspace{.6in}

8. One penguin had a flipper length of 181 mm and a body mass of 3750 g. Find the residual for this penguin.

\vspace{.8in}

9.  Did the line of regression overestimate or underestimate the body mass for this penguin?

\vspace{0.5in}


```
#> Warning: Removed 2 rows containing non-finite values (stat_smooth).
#> Warning: Removed 2 rows containing missing values (geom_point).
```



\begin{center}\includegraphics[width=0.7\linewidth]{05-L04-EDA-two-quantitative-wrapup_files/figure-latex/unnamed-chunk-4-1} \end{center}

10. Does adding the variable species affect the relationship between body mass and flipper length? Explain. 
