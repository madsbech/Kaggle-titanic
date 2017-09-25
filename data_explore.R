#The Titanic Survival Analysis Script
#Working directory ~/Documents/R/Titanic/
#Libraries
library(tidyverse)

#Importing data files
train <- read_csv("train.csv")

#Higher average fare among survivors
train %>% group_by(Survived) %>% summarise(mean(Fare))
#Women seem more likely to survive
train %>% group_by(Sex) %>% summarise(survival_rate=mean(Survived))