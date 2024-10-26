# install.packages("reticulate")
library(reticulate)

# if you have a virtual environment, you can use it too
#use_python("~/Programming/venv/", required = TRUE)
use_virtualenv("~/Programming/venv/")

py_run_string("import math")
py_run_string("result = math.sqrt(16)")
# Access the result in R
py$result

# Define a Python function in R
py_run_string("
def add_numbers(a, b):
    return a + b
")

# Call the Python function in R
py$add_numbers(3, 5)

# Import a Python package
numpy <- import("numpy")

# Use numpy in R
numpy$sum(c(1, 2, 3, 4, 5))

# Run an entire Python script from an R script
source_python("script.py")

# Python to R
r_df_from_py <- py$py_df
r_df_from_py

# R to Python
r_df <- data.frame(x = 1:5, y = letters[1:5])
py_df <- r_to_py(r_df)
py_df
