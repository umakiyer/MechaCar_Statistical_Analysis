# Load the library
library(dplyr)
# Linear Regression to Predict MPG

# Load the file
mgr <- read.csv('MechaCar_mpg.csv')
mgr
# linear regression 
mgrln <- lm (mpg ~ vehicle_length +vehicle_weight + spoiler_angle + ground_clearance+AWD, data=mgr)
#mgrln
# Summary of the Linear Regression
summary(mgrln)

summary(mgrln)$r.squared
# Create Visualizations for the Trip Analysis
scoil <- read.csv('Suspension_Coil.csv')
#scoil
Total_summary = scoil %>% summarize(Mean= mean(PSI), Median=median(PSI), Variance=var(PSI), SD= sd(PSI))
Total_summary

# Grouping by LOT #
lot_summary = scoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean= mean(PSI), Median=median(PSI), Variance=var(PSI), SD= sd(PSI))
lot_summary

# T-Tests on Suspension Coils
t.test(scoil$PSI, mu=1500)

# T.test on Lot 1
t.test(subset(scoil, Manufacturing_Lot=='Lot1')$PSI, mu=1500)

# T.test on Lot 2
t.test(subset(scoil, Manufacturing_Lot=='Lot2')$PSI, mu=1500)

# T.test on Lot 3
t.test(subset(scoil, Manufacturing_Lot=='Lot3')$PSI, mu=1500)