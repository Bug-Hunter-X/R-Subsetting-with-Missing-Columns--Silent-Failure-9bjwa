```R
#Improved subsetting using %in%
df <- data.frame(a = 1:3, b = 4:6, c = 7:9)
col_names <- c("a", "b", "d")

# Check if columns exist before subsetting
valid_cols <- col_names[col_names %in% names(df)]

if (length(valid_cols) > 0) {
  subset_df <- df[, valid_cols]
} else {
  warning("None of the specified columns exist in the data frame.")
  subset_df <- NULL
}

#Alternative using dplyr
library(dplyr)
subset_df <- df %>% select(all_of(col_names))
#The above code will return a warning if any columns are missing. This warning can be handled using tryCatch
```