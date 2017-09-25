#The Titanic Survival Analysis Script
#Working directory ~/Documents/R/Titanic/
#Libraries
library(tidyverse)

#Importing data files
train <- read_csv("train.csv")


#A Good start
summary(train)

#Shows ratio of survival in each Pclass
ggplot(train,aes(x=Pclass,fill=as.character(Survived)))+
  geom_bar()
#Gender and class rates
train %>% group_by(Pclass,Sex) %>% summarise(rate=mean(Survived),count=n())
#Histogram of fares

ggplot(train,aes(Fare))+
  geom_histogram(binwidth=5)+
  coord_cartesian(xlim=c(0,200))
#Higher average fare among survivors
train %>% group_by(Survived) %>% summarise(mean(Fare))
#Women seem more likely to survive
train %>% group_by(Sex) %>% summarise(survival_rate=mean(Survived))
