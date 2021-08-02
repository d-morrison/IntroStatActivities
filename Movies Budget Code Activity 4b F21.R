library(mosaic)
library(ggplot2)
library(tidyverse)

#For questions 1 - 4
movies <- read.csv("https://math.montana.edu/courses/s216/data/Movies2016.csv") # Read in data set
movies %>% # Data set piped into...
  filter(content_rating != "Not Rated") %>% # Remove Not Rated movies
  summarise(favstats(budget_mil~content_rating)) # Apply favstats function to imdb_score

#For questions 5 - 7
movies %>%  # Data set piped into...
  filter(content_rating != "Not Rated") %>% # Remove Not Rated movies
  ggplot(aes(y = yy, x = xx))+  # Identify variables
  geom_boxplot()+  # Tell it to make a box plot
  labs(title = "Side by side box plot of budget by content rating",  # Title
       x = "Content Rating",    # x-axis label
       y = "Budget (in Millions)")  # y-axis label

#For questions 8 - 9
movies %>% # Data set piped into...
  summarise(favstats(revenue_mil))
movies %>% # Data set piped into...
  ggplot(aes(x = revenue_mil)) +   # Name variable to plot
  geom_boxplot() +  # Create histogram with specified binwidth
  labs(title = "Histogram of Revenue of Movies in 2016", # Title for plot
       x = "Revenue (in Millions)", # Label for x axis
       y = "Frequency") # Label for y axis

#For questions 10 - 13
Movies2016_Sub %>% # Data set piped into...
  summarise(favstats(revenue_mil))
Movies2016_Sub %>% # Data set piped into...
  ggplot(aes(x = xx)) +   # Name variable to plot
  geom_boxplot() +  # Create histogram with specified binwidth
  labs(title = "Histogram of Revenue of Movies in 2016", # Title for plot
       x = "Revenue (in Millions)", # Label for x axis
       y = "Frequency") # Label for y axis
