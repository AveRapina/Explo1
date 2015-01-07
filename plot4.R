###########
## Plot4 ##
###########

## Load the script (May take some time!!!!)
source("load_data.R")

## Build the image with the desired parameters
png(filename = "plot4.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")

## Define how subgraphs are presented 2X2
par(mfrow = c(2, 2))

## SubPlot 1,1 (Global Active Power)
plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "", ylab = "Global Active Power")

## SubPlot 1,2 (Voltage)
plot(DateTime, Voltage,
     type = "l",
     xlab = "datetime", ylab = "Voltage")

## SubPlot 2,1 (SubMetering 1)
plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")

## Superimpose the other plot lines in the subplot
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")

# Remove the border of legend here.
legend("topright", 
       bty = "n",
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

## SubPlot 2,2 (Global recative Power)
plot(DateTime, Global_reactive_power, 
     type = "l",
     col = "black",
     xlab = "datetime", ylab = colnames(newData)[4])
dev.off()

## Create some info message box
library(tcltk) 
msgBox <- tkmessageBox(title = " Plot 1 Status", 
                       message = "Done!!!", icon="info", type="ok")
