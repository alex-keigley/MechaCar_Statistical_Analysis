
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

# START DELIVERABLE 3

# step 1 - comparing all manufacturing lots to population mean
t.test(coil_table$PSI, mu=mean(coil_table$PSI))

# step 2 - comparing individual manufacturing lots to population mean
lot1 <- subset(coil_table, Manufacturing_Lot=="Lot1")
t.test(lot1$PSI, mu=mean(lot1$PSI))

lot2 <- subset(coil_table, Manufacturing_Lot=="Lot2")
t.test(lot2$PSI, mu=mean(lot2$PSI))

lot3 <- subset(coil_table, Manufacturing_Lot=="Lot3")
t.test(lot3$PSI, mu=mean(lot3$PSI))

