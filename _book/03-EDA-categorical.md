# Exploring Categorical Data

## Reading Guide: Introduction to `R`, Categorical Data, and Probability

\setstretch{1.25}

### Section 1.7 (Data in `R`) {-}

#### Notes {-}

`R` is case sensitive, meaning it reads `data` differently from `Data`.  If you get an error message, check that your capitalization is correct.

`R` does not like spaces or special characters  This means the column and row headers in the data set should not have spaces, periods, commas, etc.  Instead of titling the variable `column header`, use `column_header` or `ColumnHeader`.

**Tidy data**:  Data frames with

\rgi 1 row per ________________, 

\rgi 1 column per ____________.

We highly recommend completing Tutorial 1 at the end of Chapter 1 (all four lessons) to give you practice with R/RStudio AND to help reflect on the content of Chapter 1: basics of data, sampling, study design, and scope of inference.  These tutorials have some content questions and some places for you to practice using R online with some guidance.

\rgi __ indicate spots you need to type in functions, data sets, or variable names.

\rgi There are Hint and Solution buttons on the R code box to help you.

We would not expect you to know the coding right now, especially for things like mutations or creating new variables in the data set.  But seeing some initial coding for these more difficult functions will only make you more comfortable using the functions we will use in this course!
	
#### Functions {-}

State what these introductory functions do in `R`:

`glimpse(data_set_name)`

`head(data_set_name)`

`data_set_name$variable`

`%>%`

`<-`

### Section 2.1 (Exploring categorical data) {-}

#### Vocabulary {-}

Frequency table:
\rgs

Relative frequency table:
\rgs

Contingency or Two-way table:
\rgs

Unconditional proportion:
\rgs

Conditional proportion:
\rgs

\rgi Row proportions:
\rgs

\rgi Column proportions:
\rgs

Statistic:
\rgs

\rgi Sample proportion:
\rgs

\rgi \rgi Notation:
\rgs

Parameter:
\rgs

\rgi Population proportion:
\rgs

\rgi \rgi Notation:
\rgs

Bar plot:
\rgs

Segmented bar plot:
\rgs

Simpson’s Paradox:
\rgs

\newpage
#### Notes {-}

In a contingency table, which variable (explanatory or response) generally will make the columns of the table?  Which variable on the rows?
\rgs

In a segmented bar plot, the bars represent the levels of which variable?  The segments represent the levels of which variable?
\rgs

What type of plot(s) are appropriate to display a single categorical variable?
\rgs


What type of plot(s) are appropriate to display two categorical variables?
\rgs


What is the difference between a standardized segmented bar plot and a mosaic plot?
\rgs

True or false: Pie charts are generally highly recommended ways to graphically display categorical data.

True or false: Two categorical variables are associated if the conditional proportions of a particular outcome (typically of the response variable) differ across levels of the other variable (typically the explanatory).

True or false: When a segmented bar plot has segments that sum to 1 (or 100%), the segment heights correspond to the proportions conditioned on the **segment**.

#### Review of Simpson’s Paradox: {-}

Based on the segmented bar plot in Figure 2.6, which race of defendant was more likely to have the death penalty invoked?
\rgs

Based on the segmented bar plot in Figure 2.7 and Table 2.9, which race of defendant was more likely to have the death penalty invoked when the victim was Caucasian?
\rgs

Based on the segmented bar plot in Figure 2.7 and Table 2.9, which race of defendant was more likely to have the death penalty invoked when the victim was African American?
\rgs

The direction of the relationship between the ______________
and ______________ variables is **reversed** when accounting for
a ______________ variable.
\rgs

### Section 2.2 (Probability with tables) {-}

#### Vocabulary {-}

Random process:
\rgs

Probability:
\rgs

Hypothetical two-way table:
\rgs

Unconditional probability:
\rgs

\rgi Notation:
\rgs

Conditional probability:
\rgs

\rgi Notation:
\rgs

Event:
\rgs

\rgi Notation:
\rgs

Complement:
\rgs

\rgi Notation:
\rgs

Sensitivity:
\rgs

Specificity:
\rgs

Prevalence:
\rgs

#### Notes {-}

Method for creating a hypothetical two-way table:  

1.	Start with 
\rgs

2.	Fill in the column or row totals using
\rgs

3.	Fill in the interior cells using
\rgs

4.	Add/Subtract to fill in the row/column totals not filled in at step 2.  

\rgi \rgi To find unconditional probabilities from the table,
\rgs

\rgi \rgi To find conditional probabilities from the table,
\rgs

#### Example: Baby Jeff {-} 

1.	Let $D$ be the event a child has CPK.  What does $D^C$ represent?
\rgs

2.	Let $T$ be the event a child tests positive for CPK.  What does $T^C$ represent?
\rgs

3.	Write each of the following values in proper notation:  
    a. $1/10000 = 0.0001 = P( \hspace{1in} )$  
    b. $100\% = 1.0 = P(  \hspace{1in}  )$  
    c. $99.98\% = 0.9998 = P(  \hspace{1in}  )$  

4.	Write out the steps for creating the hypothetical two-way table in section 2.2.4 of your textbook, then copy the table below.

\rgi First,
\rgs

\rgi Next,
\rgs

\rgi After that,
\rgs

\rgi Finally,
\rgs


\rgi Hypothetical two-way table:

\begin{center}
\begin{tabular}{|l|p{1.3in}|p{1.3in}|p{1.3in}|}
\hline
&	Test Positive	& Test Negative	& Total \\ \hline
Has CPK		& & & \\
	& & & \\
	& & & \\ \hline
Does not have CPK		& & & \\
	& & & \\
	& & & \\ \hline		
Total & & & 100,000 \\ \hline
\end{tabular}
\end{center}
\rgs

5.	What is the probability that a child who had a positive test result actually does have CPK?  What notation should be used for this value?
\rgs


6.	Explain how the probability in #5 was calculated.


\newpage

## Activity:  What's the probability?

\setstretch{1}

### Learning outcomes

* Recognize and simulate probabilities as long-run frequencies

* Construct two-way tables to evaluate conditional probabilities

* Identify and create appropriate summary statistics and plots
  given a data set or research question
  
* Plots for a single categorical variable: bar plot

* Plots for association between two categorical variables:
  segmented bar plot, mosaic plot

### Terminology review

In this week's in-class activity, we will cover two-way tables and probability.  In the out-of-class activity, we will review summary measures and plots for categorical variables.  Some terms covered in this activity are:

* Proportions 

* Bar plots

* Segmented bar plots

* Probability

* Conditional probability

* Two-way tables

To review these concepts, see Sections 2.1 and 2.2 in the textbook.  

\newpage

### "Current" Population Survey: 1985
The Current Population Survey (CPS) in 1985 is a survey sponsored by the Census Bureau and the Bureau of Labor Statistics to track labor force statistics for the United States population.  The following table describes the variables in the data set:

| **Variable** | **Description** |
|--	|---------------	|
| `educ` | Number of years of education |
| `south` | Whether lives in southern region of the US: `S` = lives in south, `NS` = does not live in south  |
| `sex` | Sex: `M` = male, `F` = female  |
| `exper` | Number of years of work experience (inferred from age and education) |
| `union` | Whether union member: `Union` or `Not` |
| `wage` | Wage (dollars per hour)  |
| `age` | Age (years)  |
| `race` | Race: `W` = white, `NW` = not white	|
| `sector` | Sector of the economy: `clerical`, `const` (construction),  `management`, `manufacturing`, `professional`, `sales`, `service`, `other` |
| `married` | Marital status: `Married` or `Single` |

#### Vocabulary review. Complete Q1 - 3 before class. {-}

1. What are the observational units?

\vspace{0.5in}

2.  Which variables are categorical?

\vspace{1in}

3.  What types of plot can be used to display a single categorical variable?  Two categorical variables?

\newpage

### Probability 

4. Since the early 1980s, the rapid antigen detection test (RADT) of group A *streptococci* has been used to detect strep throat. A recent study of the accuracy of this test shows that the sensitivity, the probability of a positive RADT given the person has strep throat, is 86% in children, while the specificity, the probability of a negative RADT given the person does not have strep throat, is 92% in children.  The prevalence, the probability of having group A strep, is 37% in children. 
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

\vspace{.8in}

   e.  What is the probability that a child does not have strep given that they have a positive test?  What is the notation used for this probability?

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


   d. Find $P(S^C | L^C)$. What does this probability represent in context of the problem?
\vspace{1in}

   e. What is the probability a randomly selected computer is both a laptop and on sale?  Give the appropriate probability notation.
\newpage

### Take-home messages

1.	TODO

### Out-of-class activity

For this part of the activity we will focus on using `RStudio` and the provided `RScript` file to create graphs and calculate proportions from each group.  

#### Nightlight use and myopia
In a study reported in Nature (1999, Vol. 399, pp. 113-114), a survey of 479 children found that those who had slept with a nightlight or in a fully lit room before the age of 2 had a higher incidence of nearsightedness (myopia) later in childhood.

In this study, there are two variables studied: `Light`: level of light in room at night (no light, night light, full light) and `Sight`: level of myopia developed later in childhood (high myopia, myopia, no myopia).


An important part of understanding data is to create visual pictures of what the data represent.  In this activity, we will create graphical representations of categorical data.

#### `R` code {-}

Throughout these activities, we will often include the `R` code
you would use in order to produce output or plots. These
"code chunks" appear in gray. In the code chunk below, we
demonstrate how to read the data set into `R` using the `read.csv()` function.

Open the provided `RScript` file for activity 3 in `RStudio` or `RStudioCloud` to answer the following questions. Highlight and run lines 1 - 5.  These lines of code read in the data set and name the data set myopia.  The library function tells `R` which packages will be needed.  


```r
# This will read in the data set
myopia <- read.csv("https://math.montana.edu/courses/s216/data/ChildrenLightSight.csv") 
```


#### Displaying a single categorical variable {-}

If we wanted to know how many children in our data set were in each level of myopia, we would create a frequency bar plot of the variable `Sight`.  Enter the variable name, `Sight`, for xx into the ggplot code in line 10 in the `RScript` file to create a bar plot.  Highlight and run lines 9 - 15.  Notice this is a **frequency** bar plot plotting counts (the number of children in each level of sight).  



```r
myopia %>% # Data set piped into...
ggplot(aes(y = xx)) +   # This specifies the variable
  geom_bar(stat = "count") +  # Tell it to make a bar plot
  labs(title = "Frequency Bar Plot of Level of Myopia",  # Give your plot a title
       x = "Frequency",   # Label the x axis
       y = "Level of Myopia")  + # Label the y axis
  coord_flip()  # Turn the bars so they are vertical
```
\newpage

1.  Sketch the bar plot created here.  Be sure to label the axes.

\vspace{1.5in}

2. Using the bar chart created, estimate how many children have some level of myopia.

\vspace{0.3in}

We could also choose to display the data as a proportion in a relative frequency bar plot. To find the relative frequency, divide the count in each level of myopia by the sample size.  These are sample proportions. Notice that in this code we told `R` to create a bar plot with proportions.


```r
myopia %>% # Data set piped into...
ggplot(aes(x = Sight)) +   # This specifies the variable
  geom_bar(aes(y = ..prop.., group = 1)) +  # Tell it to make a bar plot with proportions
  labs(title = "Relative Frequency Bar Plot of Level of Myopia",  # Give your plot a title
       x = "Level of Myopia",   # Label the x axis
       y = "Relative Frequency")  # Label the y axis
```



\begin{center}\includegraphics[width=0.5\linewidth]{03-EDA-categorical_files/figure-latex/unnamed-chunk-3-1} \end{center}

3.  Which features in the relative frequency bar plot are the same as the frequency bar plot?  Which are different?

\vspace{1in}

\newpage

#### Displaying two categorical variables {-}

To examine the differences in level of myopia for the level of light, we would create a segmented bar plot of `Light` segmented by `Sight`.  To create the segmented bar plot enter the variable name, `Light` (explanatory variable) for xx and the variable name, `Sight` (response variable) for yy in the `RScript` file in line 28.  Highlight and run lines 27 - 33. 


```r
myopia %>% # Data set piped into...
ggplot(aes(x = xx, fill = yy)) +   # This specifies the variables
  geom_bar(stat = "count", position = "fill") +  # Tell it to make a stacked bar plot
  labs(title = "Segmented Bar Plot of Night Light Use by Level of Myopia",  # Make sure to title your plot 
       x = "Level of Light",   # Label the x axis
       y = "") +  # Remove y axis label
    scale_fill_grey()  # Make figure black and white
```

4. Sketch the segmented bar plot created here.  Be sure to label the axes.

\vspace{1.5in}


5. From the segmented bar plot, estimate the proportion of no myopia for those that used a Nightlight.

\vspace{0.5in}

6. Which level of light has the highest proportion of `No Myopia`?

\vspace{0.5in}

\newpage

### Additional notes

Use this space to summarize your thoughts and take additional notes on this week's activity and material covered.


