#' ---
#' author: PAILLA SHIVA CHARAN
#' ---
library(ggplot2)

data <- read.csv("S1data.csv")
str(data)

# Boxplots
par(mfrow = c(1,2)) 
boxplot(Sodium ~ Event, data = data, 
        main = "Sodium Levels by Event",
        xlab = "Death Event", ylab = "Sodium")
boxplot(Ejection.Fraction ~ Event, data = data, 
        main ="Ejection Fraction by Event",
        xlab = "Death Event", ylab = "Ejection Fraction")
boxplot(Creatinine ~ Event, data = data, 
        main ="Creatinine by Event",
        xlab = "Death Event", ylab = "Creatinine")

# Shows the distribution of sodium levels and ejection fraction is lower when a death event occurs.

# Density plots
dens_event = density(data$Age[data$Event==1])
plot(dens_event, lwd = 2, main ="Density Plot of Age by Event") 
legend("topright", c("Event"), lwd = 1, col = c("black"))

# The density plot suggests age may be higher on average when death events occur.

# Convert the Gender column to a factor variable
data$Gender <- factor(data$Gender, levels = c(0, 1), labels = c("Female", "Male"))

# Convert the Event column to a factor variable
data$Event <- factor(data$Event, levels = c(0, 1), labels = c("Alive", "Dead"))

# Check distribution of death events by gender
with(data, table(Gender, Event))

# Visualize death events by gender
ggplot(data, aes(x=Gender, fill=Event)) + 
    geom_bar(position="dodge") +
    labs(x="Sex", y="Proportion",
         title="Gender by Event")

