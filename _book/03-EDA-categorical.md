# What's the probability?

## Learning outcomes

* Recognize and simulate probabilities as long-run frequencies

* Construct two-way tables to evaluate conditional probabilities

* Identify and create appropriate summary statistics and plots
  given a data set or research question
  
* Plots for a single categorical variable: bar plot

* Plots for association between two categorical variables:
  segmented bar plot, mosaic plot

## Terminology review

In today's in-class activity, we will cover two-way tables and probability.  In the out of class activity, we will review summary measures and plots for categorical variables.  Some terms covered in this activity are:

* Proportions 

* Bar plots

* Segmented bar plots

* Probability

* Conditional probability

* Two-way tables

To review these concepts, see Sections 2.1 and 2.2 in the textbook.  

\newpage

## "Current" Population Survey: 1985
The Current Population Survey (CPS) in 1985 is a survey sponsored by the Census Bureau and the Bureau of Labor Statistics to track labor force statistics for the United States population.  The following table describes the variables in the data set:

| **Variable** | **Description** |
|--	|---------------	|
| `educ` | Number of years of education |
| `south` | Whether lives in southern region of the US: `S` = lives in south, `NS` = does not live in south  |
| `sex` | Sex: `M` = male, `F` = female  |
| `exper` | Number of years of work experience (inferred from age and education) |
| `union` | Whether union member: `Union` or `Not` |
| `wage` | Wage (dollars per hour) 	|
| `age` | Age (years)  |
| `race` | Race: `W` = white, `NW` = not white	|
| `sector` | Sector of the economy: `clerical`, `const` (construction),  `management`, `manufacturing`, `professional`, `sales`, `service`, `other` |
| `married` | Marital status: `Married` or `Single` |

### Vocabulary review. Complete Q1 - 3 before class. {-}

1. What are the observational units?

\vspace{0.5in}

2.  Which variables are categorical?

\vspace{1in}

3.  What types of plot can be used to display a single categorical variable?  Two categorical variables?

\newpage

## Probability 

4. Since the early 1980s, the rapid antigen detection test (RADT) of group A *streptococci* has been used to detect strep throat. A recent study of the accuracy of this test shows that the sensitivity, positive RADT given person has strep throat in children is 86%, while the specificity, negative RADT given the person does not have strep throat in children is 92%.  The prevalence, the probability of having group A strep, is 37% in children less than 18 years old. 
\vspace{1mm}

    Let A = the event the child has strep throat, and B = the event the child has a positive RADT.
\vspace{0.1in}

a. Identify what each numerical value given in the problem represents in probability notation.
\vspace{.1in}

|                 0.86 =  
 \vspace{.1in}
 
|                 0.92 =  
\vspace{.1in}

|                 0.37 =  
\vspace{.1in}

b. Create a hypothetical two-way table to represent the situation.  Recall that in a two-way table, the explanatory variable should be your column headers (similar to the $x$-axis in a segmented bar graph!) while the response variable becomes the row headers.

| \hspace{1in}      |\hspace{1in}     |\hspace{1in}     | Total        |
|-------|---|---|---------|
|    \hspace{1in}     |   |   |         |
|    \hspace{1in}     |   |   |         |
|    \hspace{1in}     |   |   |         |
| Total |   |   | 100,000 |

c. Find $P(\mbox{A and B})$. What does this probability represent in the context of the problem?
\vspace{.8in}

d. Find the probability that a child with a positive RADT actually has strep throat. What is the notation used for this probability?

\newpage

5. In a computer store, 30% of the computers in stock are laptops and 70% are desktops.  Five percent of the laptops are on sale, while 10% of the desktops are on sale.
\vspace{1mm}

    Let L = the event the computer is a laptop, and S = the event the computer is on sale.
\vspace{0.1in}

   a. Identify what each numerical value given in the problem represents in probability notation.
\vspace{.1in}

|                 0.30 =  
 \vspace{.1in}
 
|                 0.70 =  
\vspace{.1in}

|                 0.05 =  
\vspace{.1in}

|                 0.10 =  
\vspace{.1in}

   b. Create a hypothetical two-way table to represent the situation.

| \hspace{1in}      |\hspace{1in}     |\hspace{1in}     | Total        |
|-------|---|---|---------|
|    \hspace{1in}     |   |   |         |
|    \hspace{1in}     |   |   |         |
|    \hspace{1in}     |   |   |         |
| Total |   |   | 100,000 |

   c. Calculate the probability that a randomly selected computer will be a desktop, given that the computer is on sale. What is the notation used for this probability?
\vspace{.8in}


   d. Find $P(S | L^C)$. What does this probability represent in context of the problem?
\vspace{1in}

\newpage

## Out of class activity

For this part of the activity we will focus on using `RStudio` and the provided `RScript` file to create graphs and calculate proportions from each group.  

### Nightlight use and myopia
In a study reported in Nature (1999, Vol. 399, pp. 113-114), a survey of 479 children found that those who had slept with a nightlight or in a fully lit room before the age of 2 had a higher incidence of nearsightedness (myopia) later in childhood.

In this study, there are two variables studied: `Light`: level of light in room at night (no light, night light, full light) and `Sight`: level of myopia developed later in childhood (high myopia, myopia, no myopia).


An important part of understanding data is to create visual pictures of what the data represent.  In this activity, we will create graphical representations of categorical data.

### `R` code {-}

Throughout these activities, we will often include the `R` code
you would use in order to produce output or plots. These
"code chunks" appear in gray. In the code chunk below, we
demonstrate how to read the data set into `R` using the `read.csv()` function.

Open the provided `RScript` file for activity 3 in `RStudio` or `RStudioCloud` to answer the following questions. Highlight and run lines 1 - 5.  These lines of code read in the data set and names the data set myopia.  The library function tells `R` which packages will be needed.  


```r
#This will read in the data set
myopia <- read.csv("https://math.montana.edu/courses/s216/data/ChildrenLightSight.csv") 
```


### Displaying a single categorical variable {-}

If we wanted to know how many children in our data set were in each level of myopia, we would create a frequency bar plot of the variable `Sight`.  Enter the variable name, `Sight`, for xx into the ggplot code to create a bar plot.  Notice this is a **frequency** bar plot plotting counts (the number of children in each level of sight).



```r
myopia %>% #Data set piped into...
ggplot(aes(y = xx)) +   #This specifies the variable
  geom_bar(stat = "count") +  #Tell it to make a bar plot
  labs(title = "Frequency Bar Plot of Level of Myopia",  #Give your plot a title
       x = "Frequency",   #Label the x axis
       y = "Level of Myopia")  + #Label the y axis
  coord_flip()  #Turn the bars so they are vertical
```
1.  Using the bar chart created, estimate how many children have some level of myopia?

\vspace{0.3in}

We could also choose to display the data as a proportion in a relative frequency bar plot. To find the relative frequency, divide the count in each level of myopia by the sample size.  These are sample proportions. Notice that in this code we told `R` to create a bar plot with proportions.


```r
myopia %>% #Data set piped into...
ggplot(aes(x = Sight)) +   #This specifies the variable
  geom_bar(aes(y = ..prop.., group = 1)) +  #Tell it to make a bar plot with proportions
  labs(title = "Relative Frequency Bar Plot of Level of Myopia",  #Give your plot a title
       x = "Level of Myopia",   #Label the x axis
       y = "Relative Frequency")  #Label the y axis
```



\begin{center}\includegraphics[width=0.5\linewidth]{03-EDA-categorical_files/figure-latex/unnamed-chunk-3-1} \end{center}

2.  Which features in the relative frequency bar plot are the same as the frequency bar plot?  Which are different?

\vspace{1in}

### Displaying two categorical variables {-}

To examine the differences in level of myopia for the level of light, we would create a segmented bar plot of `Light` segmented by `Sight`.  To create the segmented bar plot enter the variable name, Light (explanatory variable) for xx and the variable name, Sight (response variable) for yy in the `RScript` file.


```r
myopia %>% #Data set piped into...
ggplot(aes(x = xx, fill = yy)) +   #This specifies the variables
  geom_bar(stat = "count", position = "fill") +  #Tell it to make a stacked bar plot
  labs(title = "Segmented Bar Plot of Night Light Use by Level of Myopia",  #Make sure to title your plot 
       x = "Level of Light",   #Label the x axis
       y = "") +  #Remove y axis label
    scale_fill_grey()  #Make figure black and white
```

3. Sketch the segmented bar plot created here.

\vspace{1in}


4. From the segmented bar plot, estimate the proportion of no myopia for those that used a Nightlight.

\vspace{0.5in}

5. Which level of light has the highest proportion of `No Myopia`?

\vspace{0.5in}

## Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity.


