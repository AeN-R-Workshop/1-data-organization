
#how you would normally read your file

read.csv('data/birds_count.csv')

read.csv(file.path('data','birds_count.csv'))

#example for here::here 

library(here)

read.csv(here('data','birds_count.csv'))



