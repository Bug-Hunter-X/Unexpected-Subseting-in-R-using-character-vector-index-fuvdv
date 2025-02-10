# R Subsetting Bug

This repository demonstrates a subtle bug in R related to subsetting data frames using character vectors.  The core problem lies in how R interprets unquoted variable names within indexing operations.  While intending to select columns by name, the code inadvertently uses numeric indexing due to the lack of quotes around the column names.

## Bug Description
The original code attempts to subset a data frame using character vector indexing, but it uses unquoted variable names which are wrongly interpreted as numeric indices leading to unexpected results. The solution clarifies the importance of proper quoting when using character vectors for column selection in R.

## How to Reproduce
1. Clone this repository.
2. Open `bug.R` and run the code.
3. Observe the incorrect output.
4. Open `bugSolution.R` and run the code to see the corrected output.

## Solution
The solution involves explicitly quoting the column names within the character vector used for subsetting.  This ensures that R correctly interprets them as character strings and performs the intended column selection.