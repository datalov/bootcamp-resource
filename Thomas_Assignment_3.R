#1_In your words how would you briefly define packages
    Package is a collection of functions helping or extending the capabilities of R in analytics and graphics
#2_What function do you use to install packages in R
    install.packages()
#3_After installation, what are two ways to use packages in R
    To load require package using library() function
    To confirm a loaded package using require() function
#4_Install the following packages:
install.packages(c("tidyverse", "readxl", "googlesheets4", "readODS"))
#5_What package(s) can you use to import data from IBM SPSS, and Stata
    Haven package
#File Extension

#1_What is/are the main file extension(s) of the following data analysis software
    for Microsoft excel is .xls, .xlsx
    for LibreOffice Calc is .ods
    for Stata is .dta
    for IBM SPSS is .sav
    for Google Sheet is 
#2_How does Google Sheets differ from the above analysis software?
    Google sheet is cloud based while the other analysis software are desktop based
#3_What is the difference between “.txt” and ”.csv” files
    .txt is a plain text file; it has no specific format
    .csv is a comman separated value; it has table feature
#4_Using the tidyverse package read the fao_wood_export_data.csv file found in the data
    library(tidyverse)
    data_fao <- read_csv("data/fao_wood_data.csv")
#a_What is the file extension?
    tools::file_ext("data/fao_wood_data.csv")
#b_Print the first 6 observations of the file
    head(data_fao)
#c_What is the delimiter of the file?
    ","    
#d_Using the pipe operator, preview the last 6 observations of the data
    data_fao %>% tail(6)
#5_Correctly import the North-East Atlantic Catches sheet of the Versions_log.xlsx excel
    # file into RStudio. Give the data a name of your choosing. With the data return:
    library("readxl")
    my_choice <- read_excel("data/Versions_log.xlsx", sheet = "North-East Atlantic Catches")
#a_the first 6 observations
      head(my_choice)
#b_the last 6 observations
      my_choice %>% tail(6)
#c_ten random data point observation

#6_Using the same file, Versions_log.xlsx import sheet 4 and 5 giving them appropriate variable names. Ensure you print the first 6 observations
      sheet_4 <- read_excel("data/Versions_log.xlsx", sheet = 4)
      sheet_5 <- read_excel("data/Versions_log.xlsx", sheet = 5)
      
      sheet_4 %>% tail(6)
      sheet_5 %>% tail(6)
      
#7_Import the data in the third sheet of the file Ch2_Timber.ods and give it a suitable variable
      #name. Print the data after you done
      
      library(readODS)
      third_sheet <- read_ods("data/Ch2_Timber.ods",sheet = 3)
      print(third_sheet)
      
#7b_Import the sheet named Table_2_7b from the Ch2_Timber.ods. Give the data a suitable
      #name and print after all 
      
      Table_2_7b <- read_ods("data/Ch2_Timber.ods", sheet = "Table_2_7b")
      print(Table_2_7b)      
#7c_Import the plot_11_tvol.txt data. How many distinct site and plot does the data have?      
    
      plot <- read_delim (file = "data/plot_11_tvol.txt", delim = "\t")
      length(unique(plot))     
      
      