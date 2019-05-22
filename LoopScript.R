
#Note: Only run the following commands once. This should let you install gt from github
#check to make sure all packages are updated before installing from github 

#install.packages("devtools")
#library(devtools)
#install.packages("githubinstall")
#library(githubinstall)
#install_github("rstudio/gt", dependencies = TRUE)



#Note. You may be prompted in the console window below if you need newer versions of packages. If that occurs,
#type your choices in the console window..


library(ggplot2)
library(gt)
library(scales)

gtcars <- gtcars

#update the locations below for your computer
for(car_loop in unique(gtcars$ctry_origin)){
  rmarkdown::render(input = "/Users/amerrill/Desktop/R/AIR Examples/LoopExample.Rmd", 
                    output_format = "pdf_document",
                    output_file = paste("test_report_", car_loop,"_", Sys.Date(), ".pdf", sep = ''),
                    output_dir = "/Users/amerrill/Desktop/R/AIR Examples")
  
}