## Module 6 Lab:  Helper-Hinderer (continued)

\setstretch{1}

### Learning outcomes

* Describe and perform a simulation-based hypothesis test for a single proportion.

* Interpret and evaluate a p-value for a simulation-based hypothesis test for a single proportion.

* Explore what a p-value represents

### Steps of the statistical investigation process

We will work through a five-step process to complete a hypothesis test for a single proportion, first introduced in the Martian Alphabet Activity in week 1.

* **Ask a research question** that can be addressed by collecting data. What are the researchers trying to show?

* **Design a study and collect data**. This step involves selecting the people or objects to be studied and how to gather relevant data on them.

* **Summarize and visualize the data**. Calculate summary statistics and create graphical plots that best represent the research question.

* **Use statistical analysis methods to draw inferences from the data**. Choose a statistical inference method appropriate for the data and identify the p-value and/or confidence interval after checking assumptions. In this study, we will focus on using randomization to generate a simulated p-value.

* **Communicate the results and answer the research question**. Using the p-value and confidence interval from the analysis, determine whether the data provide statistical evidence against the null hypothesis. Write a conclusion that addresses the research question.

In today's lab we will continue with steps 4 and 5 in the statistical investigaion process.  We will continue to assess the Helper-Hinderer study from last class.

### Helper-Hinderer

Do young children know the difference between helpful and unhelpful behavior? A study by Hamblin, Wynn, and Bloom reported in Nature [@hamblin2007] was intended to check young kids' feelings about helpful and non-helpful behavior. Non-verbal infants ages 6 to 10 months were shown short videos with different shapes either helping or hindering the climber. As a class we will watch this short video to see how the experiment was run: https://youtu.be/anCaGBsBOxM. Researchers were hoping to assess: Are infants more likely to preferentially choose the helper toy over the hinderer toy? In the study, of the 16 infants age 6 to 10 months, 14 chose the *helper* toy and 2 chose the *hinderer* toy.


1.  Report the sample proportion calculated in activity 6.

\newpage

2.  Write the alternative hypothesis in words in context of the problem.  Remember the direction we are testing is dependent on the research question.

\vspace{0.8in}

In the last class each group created a single simulation assuming the null hypothesis is true.  We plotted these simulations and compared our sample proportion calculated from the data to this simulated distribution.  

Today, we will use the computer to simulate a null distribution of 1000 different samples of 16 infants, plotting the proportion who chose the helper in each sample, based on the assumption that the true proportion of infants who choose the helper is 0.5 (or that the null hypothesis is true).  

To use the computer simulation, we will need to enter the 

* assumed "probability of success" ($\pi_0$), 
* "sample size" (the number of observational units or cases in the sample),
* "number of repetitions" (the number of samples to be generated), 
* "as extreme as" (the observed statistic), and 
* the "direction" (matches the direction of the alternative hypothesis).


3.  What values should be entered for each of the following into the one proportion test to create 1000 simulations?

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

\newpage

We will use the `one_proportion_test()` function in `R` (in the `catstats` package) to simulate the null distribution of sample proportions and compute a p-value. Using the provided `R` script file, fill in the values/words for each `xx` with your answers from question 3 in the one proportion test to create a null distribution with 1000 simulations. Then highlight and run lines 1--15.


```r
one_proportion_test(probability_success = xx, # Null hypothesis value
          sample_size = xx, # Enter sample size
          number_repetitions = 1000, # Enter number of simulations
          as_extreme_as = xx, # Observed statistic
          direction = "xx", # Specify direction of alternative hypothesis
          summary_measure = "proportion") # Reporting proportion or number of successes?
```

4. Sketch the null distribution created from the `R` code here.

\vspace{1.8in}

5. Around what value is the null distribution centered?  Why does that make sense?

\vspace{1in}

6. Circle the observed statistic (value from question 1) on the distribution you drew in question 4.  Where does this statistic fall in the null distribution: Is it near the center of the distribution (near 0.5) or in one of the tails of the distribution?  

\vspace{1in}

7. **Is the observed statistic likely to happen or unlikely to happen if the true proportion of infants who choose the helper is 0.5?  Explain your answer using the plot.**

\newpage

8.  Using the simulation, what is the proportion of simulated samples that generated a sample proportion at the observed statistic or greater, if the true proportion of infants who choose the helper is 0.5? *Hint*: Look under the simulation.

\vspace{1in}

The value in question 8 is the **p-value**.  The smaller the p-value, the more evidence we have against the null hypothesis. 


9. **Using the following guidelines for the strength of evidence, how much evidence do the data provide against the null hypothesis? (Circle one of the five descriptions.)**


\begin{center}\includegraphics[width=0.9\linewidth]{images/soe_gradient_grayscale} \end{center}


#### Interpret the p-value {-}

The p-value measures the probability that we observe a sample proportion as extreme as what was seen in the data or more extreme (matching the direction of the Ha) IF the null hypothesis is true.

10.  What did we assume to create the null distribution?

\vspace{1in}


11.  What value did we compare to the null distribution to find the p-value?

\vspace{0.3in}


12.  What direction did we count simulations from the statistic?
\vspace{0.3in}

\setstretch{1.5}

13.  Fill in the blanks below to interpret the p-value.  
**We would observe a sample proportion of (value of the sample proportion)**\hrulefill  

**or (greater, less, more extreme)**\hrulefill   

**with a probability of (value of p-value)**\hrulefill  

**IF we assume ($H_0$ in context)**\hrulefill.


\setstretch{1}
\vspace{12pt}

#### Communicate the results and answer the research question {-}

When we write a conclusion we answer the research question by stating how much evidence there is for the alternative hypothesis.

14. **Write a conclusion in context of the study. How much evidence does the data provide in support of the alternative hypothesis?**

\vspace{1in}

\setstretch{1.5}

15. Fill in the blanks below to write a paragraph summarizing the results of the study as if writing a press release.  **Complete your group's paragraph on Gradescope.**  
Researchers were interested if infants observe social cues and would be more likely to choose the helper toy over the hinderer toy.  In a sample of (sample  size) _____________infants, (number of successes) _______________chose the helper toy.  A simulation null distribution with 1000 simulations was created in RStudio.  The p-value was found by calculating the proportion of simulations in the null distribution at the sample statistic of 0.875 and greater.  This resulted in a p-value of (value of p-value)_______________.  We would observe a sample proportion of (value of the sample proportion) ______________________ or (greater, less, more extreme) _____________________ with a probability of (value of p-value)___________________  
IF we assume ($H_0$ in context) ________________
_______________________.
Based on this p-value, there is (very strong/little to no) ______________________ evidence that the (sample/true)_____________________ proportion of infants age 6 to 10 months who will choose the helper toy is (greater than, less than, not equal to) _____________________ 0.5.  The results of this study can be generalized to (all infants age 6 to 10 months/infants similar to those in this study)____________________________________________ as the researchers (did/did not)_____________________ select a random sample.

\setstretch{1}
\newpage
