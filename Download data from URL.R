# 01 Download data from URL.R
# 15/06/2025

# 1. Obtain NHS Indicators from URL in NHS England website

# 1.1 Download CCG indicators from URL as compressed .ZIP file
CCGdata <- function() {if(!dir.exists("data")){dir.create("data")}
  # Download master.zip file 
  download.file(
    url = "https://files.digital.nhs.uk/48/4DB2CA/CCG_OIS_MAR_2022_Excels_Files.zip",
    destfile = "data/CCGoutcomes.zip")
  unzip(zipfile = "data/CCGoutcomes.zip",
        exdir = "data",
        junkpaths = T) }
CCGdata()
# List excel files on Data sub-directory
list.files (path = "./data" ,pattern = "xlsx$")


# 1.2 Download A&E data from URL as a ,xls file
# URL: https://www.england.nhs.uk/statistics/wp-content/uploads/sites/2/2025/06/Monthly-AE-Time-Series-May-2025.xls
library(here)
library(utils) # download.file() is part of {utils} library


AE_data <- function() {
  
  if(!dir.exists("data")){dir.create("data")}
  xlsFile = "Monthly-AE-Time-Series-May-2025.xls"
  download.file(
    url = 'https://www.england.nhs.uk/statistics/wp-content/uploads/sites/2/2025/06/Monthly-AE-Time-Series-May-2025.xls',
    destfile = here("data",xlsFile),
    mode ="wb"
  )
  
}
# Download A&E data function (no arguments)
AE_data()

# List excel files on Data sub-directory
list.files (path = "./data" ,pattern = "xlsx$")
list.files (path = "./data" ,pattern = "xls$")