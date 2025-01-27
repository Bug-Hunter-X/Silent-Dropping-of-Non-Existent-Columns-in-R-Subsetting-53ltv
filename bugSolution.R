```r
# This improved code checks if all columns exist before subsetting.
# It throws an error if a column is not found.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_select <- c("A", "B", "D")

if (!all(cols_to_select %in% names(df))) {
  stop("One or more specified columns do not exist in the data frame.")
}

subset_df <- df[, cols_to_select]
```