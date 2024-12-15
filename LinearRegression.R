# Created dataset with random values for the grades adn hours learned and preknowledge to this course
dataset <- data.frame(
  Grade_Statistical_for_AI = c(
    85, 90, 78, 88, 92, 75, 80, 95, 70, 82, 86, 89, 76, 84, 91,
    87, 79, 83, 94, 77, 81, 93, 74, 96, 85, 90, 80, 88, 72, 89, 
    55, 60, 50, 65, 58, 45, 82, 40, 45, 55, 30, 65, 78  
  ),
  Hours_Invested_Learning = c(
    30, 35, 40, 50, 45, 38, 42, 55, 37, 41, 44, 48, 47, 46, 50, 
    49, 39, 45, 60, 38, 43, 55, 36, 58, 50, 48, 42, 46, 35, 54, 
    2, 5, 4, 6, 3, 10, 8, 1, 2, 3, 7, 12, 15  
  ),
  Pre_Knowledge_Statistics = c(
    "Yes", "Yes", "No", "Yes", "Yes", "No", "No", "Yes", "No", "No",
    "Yes", "No", "No", "Yes", "Yes", "No", "No", "Yes", "Yes", "No",
    "No", "Yes", "No", "Yes", "No", "Yes", "No", "Yes", "No", "Yes", 
    "No", "No", "No", "No", "No", "No", "No", "No", "No", "No", 
    "Yes", "Yes", "No"
  )
)

# Scatter plot: Grade_Statistical_for_AI vs. Hours_Invested_Learning
plot(dataset$Grade_Statistical_for_AI, dataset$Hours_Invested_Learning,
     main = "Simple Linear Regression: Grades vs Hours Invested",
     xlab = "Grade in Statistical for AI",
     ylab = "Hours Invested Learning",
     pch = 16,
     col = "blue")

abline(model, col = "red", lwd = 2)

# Box plot for Hours Invested Learning with full range whiskers
boxplot(dataset$Hours_Invested_Learning,
        main = "Box Plot: Hours Invested in Learning ",
        ylab = "Hours Invested",
        col = "lightblue",  # Color for the box
        border = "black",   # Color for the border
        horizontal = FALSE, # Vertical orientation
        ylim = c(0, 60),    # Force y-axis range from 0 to 60
        range = 0)          # Extend whiskers to full range of dat

#convert to numeric
dataset$Grade_Statistical_for_AI <- as.numeric(dataset$Grade_Statistical_for_AI)
dataset$Hours_Invested_Learning <- as.numeric(dataset$Hours_Invested_Learning)

# Perform the regression with Hours as the independent variable
model_new <- lm(Grade_Statistical_for_AI ~ Hours_Invested_Learning, data = dataset)

# Check the model summary
summary(model_new)

# Save the summary to a text file
summary_output <- capture.output(summary(model))
writeLines(summary_output, "model_summary.txt")


# Q-Q plot for residuals
qqnorm(residuals(model), main = "Normal Q-Q Plot of Residuals")
qqline(residuals(model), col = "red", lwd = 2)  # Add a reference line in red

# Histogram of residuals
hist(residuals(model),
     main = "Histogram of Residuals",
     xlab = "Residuals",
     ylab = "Density",
     col = "lightblue",  # Bar color
     freq = FALSE)  # Show density instead of counts

# Add a density curve
lines(density(residuals(model)), col = "red", lwd = 2)

