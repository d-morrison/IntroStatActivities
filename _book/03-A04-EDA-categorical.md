## Activity 3a:  Graphing Categorical Variables

\setstretch{1}

### Learning outcomes

* Identify and create appropriate summary statistics and plots given a data set or research question involving categorical variables.
  
* Plots for a single categorical variable: bar plot.

* Plots for association between two categorical variables:
  segmented bar plot, mosaic plot.

### Terminology review

In today's activity, we will review summary measures and plots for categorical variables.  Some terms covered in this activity are:

* Proportions 

* Bar plots

* Segmented bar plots

* Mosaic plots

To review these concepts, see Sections 2.1 and 2.2 in the textbook.  

### Graphing Categorical Variables

### Nightlight use and myopia {-}

In a study reported in Nature (1999, Vol. 399, pp. 113-114), a survey of 479 children found that those who had slept with a nightlight or in a fully lit room before the age of 2 had a higher incidence of nearsightedness (myopia) later in childhood.

In this study, there are two variables studied: `Light`: level of light in room at night (no light, nightlight, full light) and `Sight`: level of myopia developed later in childhood (high myopia, myopia, no myopia).  

1. Which variable is the explanatory variable? Which is the response variable?

\vspace{0.8in}

An important part of understanding data is to create visual pictures of what the data represent.  In this activity, we will create graphical representations of categorical data.  

#### `R` code {-}

Throughout these activities, we will often include the `R` code you would use in order to produce output or plots. These "code chunks" appear in gray. In the code chunk below, we demonstrate how to read the data set into `R` using the `read.csv()` function.  These lines of code read in the data set and name the data set `myopia`.  Highlight and run line 6 in the `R` script file to load the data.


```r
# This will read in the data set
myopia <- read.csv("https://math.montana.edu/courses/s216/data/ChildrenLightSight.csv") 
```

#### Displaying a single categorical variable {-}

If we wanted to know how many children in our data set were in each level of myopia, we would create a frequency bar plot of the variable `Sight`.  Enter the variable name, `Sight`, for `variable` into the `ggplot` code at line 10 in the `R` script file.  Highlight and run lines 9--15 to create the plot.   Note: this is a **frequency** bar plot plotting counts (the number of children in each level of sight is displayed on the $y$-axis).  


```r
myopia %>% # Data set piped into...
ggplot(aes(y = variable)) +   # This specifies the variable
  geom_bar(stat = "count") +  # Tell it to make a bar plot
  labs(title = "Frequency Bar Plot of Level of Myopia",  # Give your plot a title
       x = "Frequency",   # Label the x axis
       y = "Level of Myopia")  + # Label the y axis
  coord_flip()  # Turn the bars so they are vertical
```
2. Sketch the bar chart created below.  Be sure to label the axes.

\vspace{2in}

3. Using the bar chart created, estimate how many children have some level of myopia.

\newpage

We could also choose to display the data as a proportion in a **relative frequency** bar plot. To find the relative frequency, divide the count in each level of myopia by the sample size.  These are sample proportions. Notice that in this code we told `R` to create a bar plot with proportions.  


```r
myopia %>% # Data set piped into...
ggplot(aes(x = Sight)) +   # This specifies the variable
  geom_bar(aes(y = ..prop.., group = 1)) +  # Tell it to make a bar plot with proportions
  labs(title = "Relative Frequency Bar Plot of Level of Myopia",  # Give your plot a title
       x = "Level of Myopia",   # Label the x axis
       y = "Relative Frequency")  # Label the y axis
```



\begin{center}\includegraphics[width=0.5\linewidth]{03-A04-EDA-categorical_files/figure-latex/unnamed-chunk-3-1} \end{center}

4.  Which features in the relative frequency bar plot are the same as the frequency bar plot?  Which are different?

\newpage

#### Displaying two categorical variables {-}

Is there an association between the level of light in a room and the development of myopia?  To examine the differences in level of myopia for the level of light, we would create a segmented bar plot of `Light` segmented by `Sight`.  To create the segmented bar plot enter the variable name, `Light` for `explanatory` and the variable name, `Sight` for `response` in the `R` script file in line 27. Highlight and run lines 26--33.


```r
myopia %>% # Data set piped into...
ggplot(aes(x = explanatory, fill = response)) +   # This specifies the variables
  geom_bar(stat = "count", position = "fill") +  # Tell it to make a stacked bar plot
  labs(title = "Segmented Bar Plot of Night Light Use by Level of Myopia",  
       # Make sure to title your plot 
       x = "Level of Light",   # Label the x axis
       y = "") +  # Remove y axis label
    scale_fill_grey()  # Make figure black and white
```

5. Sketch the segmented bar plot created here. Be sure to label the axes.  

\vspace{2in}

6. From the segmented bar plot, estimate the proportion of no myopia for those that used a nightlight.

\vspace{0.5in}

7. Which level of light has the highest proportion of `No Myopia`?

\vspace{0.5in}

We could also plot the data using a mosaic plot.  Fill in the variable name, `Light` for `explanatory` and the variable name, `Sight` for `response` in line 38 in the `R` script file. Highlight and run lines 36--43.


```r
myopia %>% # Data set piped into...
  ggplot() +   # This specifies the variables
  geom_mosaic(aes(x=product(explanatory), fill = response)) +  # Tell it to make a mosaic plot
  labs(title = "Mosaic Plot of Night Light Use by Level of Myopia",  
       # Make sure to title your plot 
       x = "Level of Light",   # Label the x axis
       y = "") +  # Remove y axis label
      scale_fill_grey()  # Make figure black and white
```

8.  What is similar and what is different between the segmented bar chart and the mosaic bar chart?

\vspace{1in}

9.  Explain why the bar for `Nightlight` is the widest in the mosaic plot.

\vspace{0.8in}

Fill in the name of the explanatory variable and the response variable in line 46 in the `R` script file, highlight and run line 46 to get the counts for each combination of levels of variables. 


```r
myopia %>% group_by(response) %>% count(explanatory)
```

10.  Fill in the following table with the values from the `R` output.

|             | Full Light | Nightlight | No Light | Total |
|-------------|------------|------------|----------|-------|
| High Myopia |            |            |          |       |
| Myopia      |            |            |          |       |
| No Myopia   |            |            |          |       |
| Total       |            |            |          |       |

11.  Calculate the proportion of children with high myopia.  Use appropriate notation.


\vspace{0.3in}

12.  Calculate the proportion of children that slept with full light that have high myopia. Use appropriate notation.

\vspace{0.3in}

13.  Calculate the proportion of children that slept with no light that have high myopia.  Use appropriate notation.

\vspace{0.3in}


14.  Calculate the difference in proportion of children with high myopia for those that slept with full light minus those who slept with no light.  Give the appropriate notation.  Label group 1 as full light and group 2 as no light.

\vspace{0.3in}

### Take-home messages

1.	Bar charts can be used to graphically display a single categorical variable either as counts or proportions.  Segmented bar charts and mosaic plots are used to display two categorical variables.

2. Segmented bar charts always have a scale from 0 - 100%. The bars represent the outcomes of the explanatory variable. Each bar is segmented by the response variable. If the heights of each segment are the same for each bar there is no association between variables.

3. Mosaic plots are similar to segmented bar charts but the widths of the bars also show the number of observations within each outcome. 


### Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity and material covered.

\newpage
