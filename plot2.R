###########
## Plot2 ##
###########

## Load the script (May take some time!!!!)
source("load_data.R")

## Build the image with the desired parameters
png(filename = "plot2.png", 
     width = 480, height = 480,
     units = "px", bg = "transparent")

## Plot The Global active power graph (kilowats) during the defined days
plot(DateTime, Global_active_power, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")
dev.off()

## Create some info message box
library(tcltk) 
msgBox <- tkmessageBox(title = " Plot 1 Status", 
                       message = "Done!!!", icon="info", type="ok")
