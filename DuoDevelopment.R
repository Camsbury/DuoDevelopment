## This Script is designed to give the user relevant information about the
## progress of Duolingo Phase 1 Incubator courses.
## XML R package must be installed.
## Uses the data from http://www.moviemap.me/duoinc/ as a source.

## Load XML Library
library(XML)

## Initial Data Cleaning
rawDuo = htmlTreeParse("http://www.moviemap.me/duoinc/")
rootDuo = xmlRoot(rawDuo,useInternal=TRUE)
dataDuo = rootDuo[[2]][[2]][[2]]

## Load R functions
source("~/Development/R/DuoDevelopment/Subfunctions/duoResults.R")

duoResults(dataDuo)

