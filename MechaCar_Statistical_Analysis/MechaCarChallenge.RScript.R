# Dev1 Linear Regression predict MPG
library(dplyr)
mechacar_table <- read.csv("MechaCar_mpg.csv", check.names = F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar_table))

# need to run t-tests and figure out how to plot multivariable regression line

# Dev2: Visuals for the Trip Analysis
suspension_table <- read.csv("Suspension_Coil.csv", check.names = F, stringsAsFactors = F)
psi_summary <- suspension_table %>% summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),
                                              .groups = 'keep')
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),
                                                                              SD=sd(PSI), .groups = 'keep')

# Dev3: t-tests on suspension coils
sample_table <- suspension_table %>% sample_n(30) #sample random 30 points
t.test(sample_table$PSI,mu=mean(suspension_table$PSI))
## t-tests for lots
lot1_sample <- suspension_table %>% filter(Manufacturing_Lot=="Lot1")
lot2_sample <- suspension_table %>% filter(Manufacturing_Lot=="Lot2")
lot3_sample <- suspension_table %>% filter(Manufacturing_Lot=="Lot3")
t.test(lot1_sample$PSI, mu=mean(suspension_table$PSI))
t.test(lot2_sample$PSI, mu=mean(suspension_table$PSI))
t.test(lot3_sample$PSI, mu=mean(suspension_table$PSI))