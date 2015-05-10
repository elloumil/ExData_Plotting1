## Set the working directory
setwd("D:/Coursera/Git/ExData_Plotting1")

## Check if the Loading_Data.R script is on the same folder, otherwise set the working directory
if (!"load_data.R" %in% list.files()) {
  setwd("D:/Coursera/Git/ExData_Plotting1")
} 

##Run the script Loading_Data.R
source("Loading_Data.R")

##Plot the plot1
png(filename = "plot1.png", 
    width = 480, 
    height = 480, 
    units = "px", 
    bg = "transparent")

hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, 
     ylim = c(0, 1200))

dev.off()