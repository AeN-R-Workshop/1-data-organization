##-------Description----------
##
## Script name: 
##
## Purpose of script:
##
## Author: Yasemin Bodur
##
## Date Created: 2021-01-20
##
## Copyright (c)  Yasemin Bodur, 2021
## Email: ybo005@uit.no
##
##___________________________ 
##
## Datasets used:    
## Notes:
##
##___________________________ 




#####my first statistical analyses####

####my second statistical analyses####



#####Demonstration of here::here#####

#how you probably normally read your file
read.csv("data/birds_count.csv")

#better use file.path() which sets yoru file path automatically
#this is also useful when you want to share your projects with other people, when among different computers file pathing works differently

read.csv(file.path('data','birds_count.csv'))

#even better: use here()

library(here)

read.csv(here('data','birds_count.csv'))





