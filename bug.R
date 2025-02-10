```r
# This code attempts to subset a data frame using character vector indexing,
# but it contains an error that's not immediately obvious.

df <- data.frame(a = 1:3, b = 4:6)

# Incorrect subsetting - using character vector without proper quoting
# The issue is df[,c('a','b')] is treated as a numeric index and return the 1st and 2nd column
# while we were expecting it to treat it as character vector index and return the column name a and b
subset_df <- df[, c(a, b)]
print(subset_df)

# Correct subsetting
correct_subset_df <- df[, c("a", "b")]
print(correct_subset_df)
```