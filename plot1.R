###########
## Plot1 ##
###########


## Load the script (May take some time!!!!)
source("load_data.R")

## Build the image with the desired parameters
png(filename = "plot1.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")

## Make an Histogram of the Blobal_active_power with columms in red
hist(Global_active_power, 
     col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)",
     breaks = 12, ylim = c(0, 1200))
dev.off()


## Create some info message box
library(tcltk) 
msgBox <- tkmessageBox(title = " Plot 1 Status", 
                       message = "Done!!!", icon="info", type="ok")

