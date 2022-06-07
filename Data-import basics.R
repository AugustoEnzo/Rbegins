library(tidyverse)
data(mtcars)
View(mtcars)

# readr functions

read_csv():
read_tsv():
read_delim():
read_fwf():
read_table():
read_log():

# Reading a csv file with readr

readr_example("mtcars.csv")

read_csv(readr_example("mtcars.csv"))

library(readxl)

readxl_example()

read_excel(readxl_example("type-me.xlsx"))

excel_sheets(readxl_example("type-me.xlsx"))

read_excel(readxl_example("type-me.xlsx"), sheet = "numeric_coercion")
