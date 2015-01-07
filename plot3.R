###########
## Plot3 ##
###########

## Load the script (May take some time!!!!)
source("load_data.R")

## Build the image with the desired parameters
png(filename = "plot3.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")

## Plot The energy submetering_1 in black during the defined days
plot(DateTime, Sub_metering_1, 
     type = "l",
     col = "black",
     xlab = "", ylab = "Energy sub metering")

## Superinpose the lines for submetering 2 and 3 in the graph in different colors
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")

## draw the legend on the top righ of the graph using the defined colors
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)
dev.off()

## Create some info message box
library(tcltk) 
msgBox <- tkmessageBox(title = " Plot 1 Status", 
                       message = "Done!!!", icon="info", type="ok")