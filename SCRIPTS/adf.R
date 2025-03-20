library(urca)
library(tidyverse)

### Augmented Dickey-Fuller (ADF) Test for Stationarity

file_list <- list.files(path = "C:/Users/benvo/OneDrive - University of Virginia/Desktop/DS 4002/Project 2/Data", 
                        pattern = "*.csv", full.names = TRUE)

# Create data structures
adf_results <- list()
adf_results_table <- data.frame()
adf_results_list <- list()

# Read in each file and run ADF test
for (file in file_list) {
  data <- read.csv(file)
  adf_test <- ur.df(data$value , type = "trend", selectlags = "AIC")
  adf_results[[file]] <- summary(adf_test)
}

# Extract results from each ADF test and organize them in dataframe for easy interpretation
for (file in names(adf_results)) {
  test_stat <- adf_results[[file]]@teststat[1]
  critical_val_5pct <- adf_results[[file]]@cval["tau3", "5pct"]
  conclusion <- ifelse(test_stat < critical_val_5pct, "Stationary", "Non-Stationary")
  
  adf_results_list[[file]] <- data.frame(
    Dataset = basename(file),
    ADF_Test_Statistic = test_stat,
    Critical_Value_5pct = critical_val_5pct,
    Conclusion = conclusion
  )
}

adf_results_table <- bind_rows(adf_results_list)
