
# START DELIVERABLE 1

library(dplyr) # for functions

# Importing MechaCar_mpg.csv as data frame
mechaCar_table <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)

# Performing Linear Regression using all columns
mechaCar_lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD , data=mechaCar_table)

# Obtaining summary of linear regression performed above
summary(mechaCar_lm)

# START DELIVERABLE 2

# importing suspension_coil.csv
coil_table <- read.csv(file="Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

# create a condensed summary table
total_summary <- coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# create a summaries table by lot
lot_summary <- coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')
