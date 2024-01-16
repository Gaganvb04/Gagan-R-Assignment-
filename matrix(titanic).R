#import the dataset
setwd("C:/Users/gagan/OneDrive/Documents/R programming")
Titanic <- read.csv("~/R programming/Titanic-Dataset.csv")

#view the dataset
View(Titanic)

# Function to calculate survival rate
survival_rate <- function(data) {
  total_passengers <- nrow(data)
  survived_passengers <- sum(data$Survived == 1, na.rm = TRUE)
  rate <- survived_passengers / total_passengers
  return(rate)
}

# Calculate survival rate for the entire Titanic dataset
overall_survival_rate <- survival_rate(Titanic)
print(paste("Overall Survival Rate:", overall_survival_rate))

# Filter data for Pclass = 1 and Age > 18
filtered_data <- subset(Titanic, Pclass == 1 & Age > 18)

# Create a matrix from selected columns
selected_columns <- c("Survived", "Pclass", "Age", "Sex", "Embarked")
Titanic_matrix <- as.matrix(Titanic[, selected_columns])

# Print the filtered data and matrix
print(filtered_data)

print(Titanic_matrix)

