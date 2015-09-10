source('Utils.R')

showPlot3 <- function(df = NULL, openPng = T) 
{
  #Get Household Data (only two day) from csv File, If need
  if (is.null(df)) {
    df <- getHouseholdData()    
  }
  
  #Open Device if plot to PNG
  if (openPng == T) { 
    png('plot3.png', width=480, height=480, bg='transparent')
  }
  
  #Plotting
  plot(df$DateTime, df$Sub_metering_1, type='l', xlab='', ylab="Energy sub metering")
  
  lines(df$DateTime, df$Sub_metering_2, type='l', col='red')
  lines(df$DateTime, df$Sub_metering_3, type='l', col='blue')
  
  legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd='1', col=c('black', 'red', 'blue'))
  
  #Close device, if opened
  if (openPng == T) {
    dev.off()
  }
}

if (exists("enblePlotting") == F) {
  showPlot3()
} else if ( enblePlotting == T ) {
  showPlot3()
} 

