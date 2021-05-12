# Exploring Categorical Data

## Reading Guide: Introduction to `R`, Categorical Data, and Probability

### Section 1.7 (Data in `R`) {-}

**Videos**  

* Starting_with_R

\setstretch{1.25}

#### Notes {-}

`R` is case sensitive, meaning it reads `data` differently from `Data`.  If you get an error message, check that your capitalization is correct.

`R` does not like spaces or special characters  This means the column and row headers in the data set should not have spaces, periods, commas, etc.  Instead of titling the variable `column header`, use `column_header` or `ColumnHeader`.

**Tidy data**:  Data frames with

\rgi 1 row per ________________, 

\rgi 1 column per ____________.

We highly recommend completing Tutorial 1 at the end of Chapter 1 (all four lessons) to give you practice with R/RStudio AND to help reflect on the content of Chapter 1: basics of data, sampling, study design, and scope of inference.  These tutorials have some content questions and some places for you to practice using R online with some guidance.

\rgi __ indicate spots you need to type in functions, data sets, or variable names.

\rgi There are Hint and Solution buttons on the R code box to help you.

We would not expect you to know the coding right now, especially for things like mutations or creating new variables in the data set.  But seeing some initial coding for these more difficult functions will only make you more comfortable using the functions needed for this course!
	
#### Functions {-}

State what these introductory functions do in `R`:

`glimpse(data_set_name)`

`head(data_set_name)`

`data_set_name$variable_name`

`%>%`

`<-`

### Section 2.1 (Exploring categorical data) {-}

\setstretch{1}

**Videos**  

* 2.1
* MosaicPlots

\setstretch{1.25}

#### Vocabulary {-}

Frequency table:
\rgs

Relative frequency table:
\rgs

Contingency or two-way table:
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


#### Notes {-}

In a contingency table, which variable (explanatory or response) generally will make the columns of the table?  Which variable will make the rows of the table?
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

True or false: Two categorical variables are associated if the conditional proportions of a particular outcome (typically of the response variable) differ across levels of the other variable (typically the explanatory variable).

True or false: When a segmented bar plot has segments that sum to 1 (or 100%), the segment heights correspond to the proportions conditioned on the **segment**.

#### Review of Simpson’s Paradox {-}

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

\setstretch{1}

**Videos**  

* 2.2

\setstretch{1.25}

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

3.	Write each of the following values in proper probability notation:  
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

\newpage
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

5.	What is the probability that a child who had a positive test result actually does have CPK?  What probability notation should be used for this value?
\rgs


6.	Explain how the probability in #5 was calculated.


\newpage

## Activity:  What's the probability?

\setstretch{1}

### Learning outcomes

* Recognize and simulate probabilities as long-run frequencies.

* Construct two-way tables to evaluate conditional probabilities.

### Terminology review

In today's activity, we will cover two-way tables and probability.  Some terms covered in this activity are:

* Proportions 

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

#### Vocabulary review. Complete Q1--Q4 before class. {-}

1. What are the observational units?

\vspace{0.5in}

2.  Which variables are categorical?

\vspace{1in}

3.  What type(s) of plot could be used to display the proportion of individuals in each sector of the economy? 

\vspace{1in}

4. What type(s) of plot could be used to display the association between whether an individual is a union member and the sector of the economy in which they work?

\vspace{1in}

\newpage

### Probability 

5. Since the early 1980s, the rapid antigen detection test (RADT) of group A *streptococci* has been used to detect strep throat. A recent study of the accuracy of this test shows that the **sensitivity**, the probability of a positive RADT given the person has strep throat, is 86% in children, while the **specificity**, the probability of a negative RADT given the person does not have strep throat, is 92% in children.  The **prevalence**, the probability of having group A strep, is 37% in children. 
\vspace{1mm}

    Let $A$ = the event the child has strep throat, and $B$ = the event the child has a positive RADT.
\vspace{0.1in}

    a. Identify what each numerical value given in the problem represents in probability notation.
\vspace{.1in}

        0.86 =  
\vspace{.1in}
 
        0.92 =  
\vspace{.1in}

        0.37 =  
\vspace{.1in}

    b. Create a hypothetical two-way table to represent the situation.  Recall that in a two-way table, the explanatory variable should be your column headers (similar to the $x$-axis in a segmented bar graph!) while the response variable becomes the row headers.
\begin{center}
    \renewcommand{\arraystretch}{1.5}
    \begin{tabular}{cccc} \hline
    \hspace{1in} & \hspace{1in} & \hspace{1in} & Total \\ \hline
    & & & \\ 
    & & & \\ 
    & & & \\ \hline
    Total & & & 100,000 \\ \hline
    \end{tabular}
    \end{center}
\vspace{.1in}

    c. Find $P(A \mbox{ and } B)$. What does this probability represent in the context of the problem?
\vspace{.8in}

    d. Find the probability that a child with a positive RADT actually has strep throat. What is the notation used for this probability?
\vspace{.8in}

    e.  What is the probability that a child does not have strep given that they have a positive RADT?  What is the notation used for this probability?

\newpage

6. In a computer store, 30% of the computers in stock are laptops and 70% are desktops.  Five percent of the laptops are on sale, while 10% of the desktops are on sale.
\vspace{1mm}

    Let $L$ = the event the computer is a laptop, and $S$ = the event the computer is on sale.
\vspace{0.1in}

    a. Identify what each numerical value given in the problem represents in probability notation.
\vspace{.1in}

        0.30 =  
 \vspace{.1in}
 
        0.70 =  
\vspace{.1in}

        0.05 =  
\vspace{.1in}

        0.10 =  
\vspace{.1in}

    b. Create a hypothetical two-way table to represent the situation.  
\renewcommand{\arraystretch}{1.5}
\begin{center}
\begin{tabular}{cccc} \hline
\hspace{1in} & \hspace{1in} & \hspace{1in} & Total \\ \hline
& & & \\ 
& & & \\ 
& & & \\ \hline
Total & & & 100,000 \\ \hline
\end{tabular}
\end{center}
\vspace{.1in}

    c. Calculate the probability that a randomly selected computer will be a desktop, given that the computer is on sale. What is the notation used for this probability?
\vspace{.8in}


    d. Find $P(S^C | L^C)$. What does this probability represent in context of the problem?
\vspace{1in}

    e. What is the probability a randomly selected computer is both a laptop and on sale?  Give the appropriate probability notation.


\newpage 

### Learning Outcomes

1.  Conditional probabilities are calculated dependent on a second variable.  In probability notation, the variable following `|` is the variable on which we are conditioning.  The denominator used to calculate the probability will be the total for the variable on which we are conditioning.  


2. ?????

\newpage

### Additional notes

Use this space to summarize your thoughts and take additional notes on today's activity and material covered.


