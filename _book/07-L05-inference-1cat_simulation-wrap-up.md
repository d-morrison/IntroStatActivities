## Week 7 Lab:  Comic Book Characters

\setstretch{1}

### Learning objectives

* Identify the two possible explanations (one assuming the null hypothesis, and one assuming the alternative hypothesis) for a relationship seen in sample data.

* Given a research question involving a single categorical variable, construct the null and alternative hypotheses
  in words and using appropriate statistical symbols.
  
* Describe and perform a simulation-based hypothesis test for a single proportion.

* Interpret and evaluate a p-value for a simulation-based hypothesis test for a single proportion.


Among all comic book characters produced by the comic book publisher Marvel, 25\% are female. The comic book publisher DC Comics has taken note of this disparity in the number of female versus male characters, and is trying to diversify their offerings. In a random sample of recently published DC Comics books, 52 characters were included in the comics, of which 15 are female.

1. What type of plot would be appropriate to display this data?

\vspace{0.3in}

2. Calculate the summary statistic.  Use appropriate notation.

\vspace{0.3in}

3. Write the parameter of interest in context of the problem.

\vspace{0.8in}

4.  Write the null hypothesis in notation.

\vspace{0.3in}

5. Write the alternative hypothesis in words. 

\vspace{0.8in}

6. Is the independence condition met?  Explain.

\vspace{0.6in}

7. What values should be entered for each of the following into the one proportion test to create 1000 simulations?

\vspace{1mm}

* Probability of success:

\vspace{.2in}
* Sample size:
    
\vspace{.2in}
* Number of repetitions:
    
\vspace{.2in}
* As extreme as:
    
\vspace{.2in}
* Direction (`"greater"`, `"less"`, or `"two-sided"`):

\vspace{.2in}

We will use the `one_proportion_test()` function in `R` (in the `catstats` package) to simulate the null distribution of sample proportions and compute a p-value. Using the provided `R` script file, fill in the values/words for each `xx` with your answers from question 18 in the one proportion test to create a null distribution with 1000 simulations. Then highlight and run lines 1--14.


```r
one_proportion_test(probability_success = xx, # Null hypothesis value
          sample_size = xx, # Enter sample size
          number_repetitions = 1000, # Enter number of simulations
          as_extreme_as = xx, # Observed statistic
          direction = "xx", # Specify direction of alternative hypothesis
          report_value = "proportion") # Reporting proportion or number of successes?
```

7.  Interpret the p-value in context of the study.

\vspace{1in}

8. Write a conclusion in context of the study.

\vspace{1in}

9. What values should be entered for each of the following into the simulation to create the bootstrap distribution of sample proportions to find a 95\% confidence interval?
\vspace{1mm}

* Sample size:

\vspace{.1in}
 
* Number of successes:
    
\vspace{.1in}
* Number of repetitions:
    
\vspace{.1in}
* Confidence level (as a decimal):
    
\vspace{.1in}

We will use the `one_proportion_bootstrap_CI()` function in `R` (in the `catstats` package) to simulate the bootstrap distribution of sample proportions and calculate a confidence interval. Using the provided `R` script file, fill in the values/words for each `xx` with your answers from question 9 in the one proportion bootstrap confidence interval (CI) code to create a bootstrap distribution with 1000 simulations. Then highlight and run lines 1--11.


```r
one_proportion_bootstrap_CI(sample_size = xx, # Sample size
                    number_successes = xx, # Observed number of successes
                    number_repetitions = 1000, # Number of bootstrap samples to use
                    confidence_level = 0.95) # Confidence level as a decimal
```

10.  Report the 95\% confidence interval.

\vspace{0.5in}

11. Interpret the 95\% confidence interval.  

\vspace{0.8in}

12. Do the results of the confidence interval agree with the results of the hypothesis test?  Explain your answer.

\vspace{0.8in}

### What does *confidence* mean?

In the interpretation of a 95\% confidence interval, we say that we are 95\% confident that the parameter is within the confidence interval.  Why are we able to make that claim?  What does it mean to say "we are 95\% confident"?

13.  Go to this website, [http://www.rossmanchance.com/ISIapplets.html](http://www.rossmanchance.com/ISIapplets.html) and choose 'Simulating Confidence Intervals'.  In the input on the left-hand side of the screen enter 0.25 for $\pi$, 52 for $n$, and 100 for 'Intervals'.  Click 'sample'.
\vspace{1mm}

a) In the graph on the bottom right, click on a green dot.  Write down the confidence interval for this sample given on the graph on the left.  Does this confidence interval contain the null value of 0.25?
\vspace{0.5in}


b) Now click on a red dot.  Write down the confidence interval for this sample.  Does this confidence interval contain the null value of 0.25.?
\vspace{0.5in}


c) How many intervals out of 100 contain $\pi$, the null value of 0.25? *Hint*:  This is given to the left of the graph of green and red intervals.
\vspace{0.5in}

14.  Click on 'sample' nine more times.  Write down the 'Running Total' for the proportion of intervals that contain $\pi$.  

\vspace{0.5in}

15.  Interpret the level of confidence.  *Hint*: What proportion of samples would we expect to give a confidence interval that contains the parameter of interest?

\newpage
