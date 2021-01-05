--- 
title: |
    | **STAT 216 Coursepack**
    | 
    | ![](images/msu-campus.jpg){width=5in}
author: "Melinda Yager, Jade Schmidt, Dr. Stacey Hancock"
subtitle: |
    | Spring 2021
    | Montana State University
output: 
    pdf_document:
        citation_package: biblatex
bibliography: references.bib
biblio-style: apalike
nocite: '@*'
site: bookdown::bookdown_site
documentclass: report
description: This is the coursepack of in-class activities for STAT 216 Spring 2021.
location: Montana State University
---

<!-- Notes for authors on formatting: -->

<!-- For each chapter, main title, reading guide section title, and activity section title are in title case; remaining section headers capitalize the first word only. -->
<!-- Reading guides use 1.25 line spacing; activities use 1 line spacing. -->
<!-- When referring to R, use `R`. When referring to RStudio, do not use quotes. -->
<!-- Reading guides do not have section numbers (use {-} after each header). -->
<!-- Comments in displayed code: # Capitalize phrase. -->
<!-- For displaying a range of numbers, e.g., 3-5, use an en dash: 3--5. -->
<!-- When cross-referencing activites, capitalize "Activity", e.g., "In Activity 3, we..." -->
<!-- When referring to a function in R, use: `function_name()` -->
<!-- Z-score and T-score -->
<!-- $t$-distribution -->

\newpage
\thispagestyle{empty}

This resource was developed by Melinda Yager, Jade Schmidt, and Stacey Hancock in 2021 to accompany the online textbook: Carnegie, N., Hancock, S., Meyer, E., Schmidt, J., and Yager, M. (2021). _Montana State Introductory Statistics with R_. Montana State University. [https://mtstateintrostats.github.io/IntroStatTextbook/](https://mtstateintrostats.github.io/IntroStatTextbook/).

This resource is released under a [Creative Commons BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/) license unless otherwise noted.

\setcounter{tocdepth}{1}
\tableofcontents
\setcounter{page}{1}

\newpage
# Preface {-}

This coursepack accompanies the textbook for STAT 216: Introduction to Statistics at Montana State University, which can be found at [https://mtstateintrostats.github.io/IntroStatTextbook/](https://mtstateintrostats.github.io/IntroStatTextbook/). The syllabus for the course (including the course calendar), data sets, and links to D2L Brightspace, Gradescope, and the MSU RStudio server can be found on the course webpage: [https://math.montana.edu/courses/s216/](https://math.montana.edu/courses/s216/).
Videos assigned in the course calendar and other notes and review materials are linked in D2L.

Each of the activities in this workbook is designed to target specific learning outcomes of the course, giving you practice with important statistical concepts in a group setting with instructor guidance. In addition to the in-class activities for the course, the coursepack includes reading guides to aid in taking notes while you complete the required readings and videos. Bring this workbook with you to class each week, and take notes in the workbook as you would your own notes. A well-written completed workbook will provide an optimal study guide for exams!  

The activities in this coursepack are broken into three sections: pre-class, in-class, and after class.  Read through the introduction for each activity and complete the pre-class questions before attending class each week.  In class, you will work through the in-class section with your group and instructor.  After class, you will complete the out-of-class part of the activity.

STAT 216 is a 3-credit blended course. Rather than meeting for a total of 150 structured minutes in class per week, students meet with their instructor and cohort of classmates for 50 minutes of class per week. The other 100 minutes typically spent in class are instead spent outside of class watching instructor video lectures, reading the textbook, working through case studies, and participating in online discussion with your classmates. This structure serves two purposes: (1) enhance the safety of our community during the COVID-19 pandemic, and (2) provide additional flexibility for students to create their own schedule and make their own decisions on how they learn best. 

In our experience, it takes six to nine hours per week outside of class to achieve a good grade in STAT 216 -- this means six to nine hours outside of the 150 minutes of time set aside for learning course material each week.  By “good” we mean at least a C because a grade of C- or below does not count toward fulfilling degree requirements.  Many of you set your goals higher than just getting a C, and we fully support that.  You
need roughly nine hours per week to review past activities, read feedback on previous assignments, complete current assignments, and prepare for the next day's class. A typical week in the life of a STAT 216 student looks like:

* _Prior to class meeting_:
    - Read assigned sections of the textbook, using the provided reading guides to take notes on the material.
    - Watch assigned videos on that week's content, pausing to take notes and answer video quiz questions.
    - Read through the introduction to the week's in-class activity and complete the pre-class questions.
    - Read through the week's homework assignment and note any questions you may have on the content.
* _During class meeting_:
    - Work through the in-class activity with your classmates and instructor, taking detailed notes on your answers to each question in the activity.
* _After class meeting_:
    - Complete the out-of-class part of the activity, plus any additional parts of the activity you did not complete in class.
    - Review the posted activity solutions and wrap-up videos, and take notes on key points.
    - Finish watching any remaining assigned videos or readings for the week.
    - Read through the week's case study and post case study discussion posts on D2L.
    - Complete the week's homework assignment.

\nocite{*}
