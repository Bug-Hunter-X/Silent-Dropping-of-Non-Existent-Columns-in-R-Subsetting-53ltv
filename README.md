# Silent Dropping of Non-Existent Columns in R Subsetting

This repository demonstrates a subtle bug in R's data frame subsetting mechanism. When you try to select columns using a character vector that contains names of columns that don't exist, R silently drops those names without issuing any warning or error. This can lead to difficult-to-debug issues, especially in larger programs where the absence of columns might not be immediately obvious.

The `bug.R` file shows how this problem occurs. The solution, provided in `bugSolution.R`, involves adding a check to verify that all specified column names exist before subsetting.