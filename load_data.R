###############
## Load_Data ##
###############


## Set working directory (adjust to your path if needed!!)
setwd("/mnt/9ED6BE24D6BDFD19/Dropbox/Assign1/")

## Define the path to the dataset
filename <- "data/household_power_consumption.txt"

## Read the data excludding the "?" Data is separated by ;
## May take some time to load!!!!
data <- read.table(filename,
                   header = TRUE,
                   sep = ";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na = "?")

## Check dimensions
dim(data)

## Attach the object the search path for speedup things
attach(data)

## Subset with only the two days required (Create The Mask)
subset <- Date == "1/2/2007" | Date == "2/2/2007"

## Applying the mask to the data and getting an newData with only the days required
newData <- data[subset, ]

## Attach the object the search path for speedup things
attach(newData)

## Paste Data and Time to a secundary variable for later working
x <- paste(Date, Time)

## Convert the time in secundary variable and save to the columm DateTime
newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")

##Rename the row names  in new data with the original ones 
rownames(newData) <- 1:nrow(newData)

## Check dimensions
dim(newData)

## Attach the object the search path for speedup things
attach(newData)
