##-------Description----------
##
## Script name: 
##
## Purpose of script: main script for Master thesis project, combining all scripts for data wrangling and analysis
##
## Author: Yasemin Bodur
##
## Date Created: 2021-01-20
##
## Copyright (c)  Yasemin Bodur, 2021
## Email: ybo005@uit.no
##
##
## __________________________



#########load packages######################################################################################

#data cleaning & handling
library(here)
library(readxl) #for reading excel sheets
library(xlsx) #for writing excel files
library(R.matlab) #for reading .mat data

library(plyr)
library(dplyr) #tidyr,dplyr
library(tidyr)#tidyr,dplyr
library(DataCombine) #for function insertRow()

library(ggplot2)

theme_set(theme_minimal())


#statistics
library(rcompanion) #for plotNormalHistogram plots
library(corrplot) #for correlation plot
library(vegan) #for metaMDS, adonis
library(car) #for leveneTest, vif
require(dunn.test) #for post-hoc Dunn test 
library(psych) #for cor.plot
library(clustsig) #for simprof analysis
library(glmnet)


#####_________________________________________________________##############################################


############ENVIRONMENTAL VARIABLES##########################################################################

#scripts for data wranglign and plotting of every variable
#first visual impression and visualization of data

######>sediment#####

#solid-phase

source("./3-scripts/PS109_grainsize.R") #granulometry
source("./3-scripts/PS109_porosity.R") #porosity
source("./3-scripts/PS109_pigments.R") #pigments (mug/g)
source("./3-scripts/PS109_pigments_mg.m2.R") #calculation pigments mug/g -> mg/m2 
source("./3-scripts/PS109_toc.R") #TOC/TON (mug/mg sediment)

#porewater

source("./3-scripts/PS109_pw_profiles.R") #nutrients (mumol/l) & DIC (mmol/l)

#ex situ oxygen fluxes

source("./3-scripts/PS109_TOU.R") #TOU (mmol m-2 d-1)
#source("./3-scripts/PS109_DOU.R") #DOU

#single cell abundances
source("./3-scripts/PS109_sca.R") #single cell abundances (cells ml-1)

######>water column####
source("./3-scripts/NSIDC_seaice.R") #sea ice (concentration)
source("./3-scripts/PS109_ctd.R") #temp, sal, fluor (arbitrary!!)
source("./3-scripts/PS109_depth.R") #depth
source("./3-scripts/PS109_cv.R") #current velocities

####COMMUNITY VARIABLES#####

source("./3-scripts/community/PS109_density.R") #macrofauna and foraminifera density
source("./3-scripts/community/PS109_biomass.R") #macrofauna biomass
source("./3-scripts/community/PS109_meiofauna.R") #meiofauna density
#source("./3-scripts/community/PS109_nematoda.R") #nematoda species density


#####2017 combined#####

source("./3-scripts/statistics/vars_dataset.R") #dataset with all variables from 2017 - PS109

#####1990s#####

source("./3-scripts/statistics/vars1990s_dataset.R") #dataset with variables from 1990s

#source("./3-scripts/community/poly1990s.R") #ploychaeta densities from 1990s
#source("./3-scripts/community/forams1990s.R") #foram densities from 1990s
#source("./3-scripts/community/nem1990s.R") #nematoda densities from 1990s

#####_________________________________________________________##############################################

#####STATISTICS#####

######env variables####
source("./3-scripts/statistics/question1.R") #correlation & SIMPROF

#####community#####

source("./3-scripts/statistics/question2.R") #CA, PERMANOVA, stepwise sequential test

#####comparison#####

source("./3-scripts/statistics/question3.R") #ANOVAS, nmMDS


