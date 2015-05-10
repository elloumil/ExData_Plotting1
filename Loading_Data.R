## Set the working directory
setwd("D:/Coursera/Git/ExData_Plotting1")

## Load the data
filename <- "./Data/household_power_consumption.txt"
data <- read.table(filename,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")

## The dataset has 2,075,259 rows and 9 columns.
## Checking the dimensions of the dataset
dim(data)
## Dataset loaded correctly: [1] 2075259       9

subset <- data$Date == "1/2/2007" | data$Date == "2/2/2007"

data_subset <- data[subset, ]
attach(data_subset)

x <- paste(Date, Time)
data_subset$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")

rownames(data_subset) <- 1:nrow(data_subset)
dim(data_subset) # 2880   10
attach(data_subset)