source('Utils.R')

enblePlotting = F

source('plot2.R')
source('plot3.R')

enblePlotting = T

df <- getHouseholdData()

#function to plot Voltage vs DateTime
showPlotVoltage <- function(df){
  plot(df$DateTime, df$Voltage, xlab='datetime', type='l')
}

#function to plot Global reactive power vs DateTime
showPlotPower <- function(df){
  plot(df$DateTime, df$Global_reactive_power, xlab='datetime', type='l')
}

#Open device
png('plot4.png', width=480, height=480, bg='transparent')

#four graphs, two per row
par(mfrow=c(2,2))

#plot the graphs
showPlot2(df = df, openPng = F, 'Global Active Power')
showPlotVoltage(df)
showPlot3(df = df, openPng = F)
showPlotPower(df)

#Close 
dev.off()
