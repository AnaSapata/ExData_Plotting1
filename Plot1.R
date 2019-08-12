#-------------------------------------------------------------------------------------------------------------------------------#
#                                                                                                                               #
#                                           Coursera - Exploratory Data Analysis                                                #
#                                               Assignment - Week 1 - Plot 1                                                    #
#                                                      12/Ago/2019                                                              #
#                                             Ana Sapata (ana_sapata@sapo.pt)                                                   #
#                                                                                                                               #
#-------------------------------------------------------------------------------------------------------------------------------#

setwd("/home/anasapata/Personal/datasciencecoursera/Exploratory Data Analysis/Week1/ExData_Plotting1/")
file <- "/home/anasapata/Personal/datasciencecoursera/Exploratory Data Analysis/Week1/exdata_data_household_power_consumption/household_power_consumption.txt"

dados <- read.table(file, header = FALSE, sep = ";",skip = 66638, nrows = 2879, stringsAsFactors = FALSE)
colnames(dados) <- c("Date", "Time", "Global_active_power", "Global_reactive_power", 
                     "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", 
                     "Sub_metering_3")

png(filename = "Plot1.png", width = 480, height = 480, units = "px")

hist(dados$Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Global Active Power",
     col = "red")

dev.off()
