library(dplyr) # for functions

# Importing MechaCar_mpg.csv as data frame
mechaCar_table <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)


# Performing Linear Regression using all columns
lm(qsec ~ vehicle_length + vehicle_weight, data=mechaCar_table)
