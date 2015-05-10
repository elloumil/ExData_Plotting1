## Set the working directory
setwd("D:/Coursera/Git/ExData_Plotting1")

## Check if the Loading_Data.R script is on the same folder, otherwise set the working directory
if (!"load_data.R" %in% list.files()) {
  setwd("D:/Coursera/Git/ExData_Plotting1")
} 

##Run the script Loading_Data.R
source("Loading_Data.R")

##Plot the plot2

png(filename = "plot2.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")
plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()

