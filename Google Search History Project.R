# Libraries needed
library(wordcloud)
library(lubridate)
library(rvest)
library(tm)
library(tidyverse)
install.packages("dplyr")

# Reading and playing around with data
mySearchFile <- read.csv("Fatima Google History.csv")

dateSearch <- mySearchFile 
table<- dateSearch[2:3]
# Scraping out the search type
searchType <- mySearchFile 
 
searchType[1:5]


# Plot data by IP Address
library(ggplot2)

ggplot(dateSearch) + 
  geom_point()

table_summary <-
  table                          
  grouping(table)              
table_summary

## plotting data by IP Address logged into
ggplot(table_summary, aes(IP.Address))      +
  geom_bar()           



