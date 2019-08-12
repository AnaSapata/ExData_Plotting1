#-------------------------------------------------------------------------------------------------------------------------------#
#                                                                                                                               #
#                                           Coursera - Exploratory Data Analysis                                                #
#                                               Assignment - Week 1 - Plot 3                                                    #
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

DateTime <- strptime(paste(dados$Date, dados$Time), format = "%d/%m/%Y %H:%M:%S")
Sub_metering_1 <- dados$Sub_metering_1
Sub_metering_2 <- dados$Sub_metering_2
Sub_metering_3 <- dados$Sub_metering_3

png(filename = "Plot3.png", width = 480, height = 480, units = "px")

plot(DateTime, Sub_metering_1, ylab = "Energy sub metering", xlab ="" , type = "n")
lines(DateTime, Sub_metering_1, col = "black")
lines(DateTime, Sub_metering_2, col = "red")
lines(DateTime, Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = c(1,1,1) )

dev.off()
