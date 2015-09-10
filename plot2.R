source('Utils.R')

showPlot2 <- function(df = NULL, openPng = T, ylab) 
{
  #Get Household Data (only two day) from csv File, If need
  if (is.null(df)) {
    df <- getHouseholdData()    
  }
  
  #Open Device if plot to PNG
  if (openPng == T) { 
    png('plot2.png', width=480, height=480, bg='transparent')
  }
  
  #Plotting
  plot(df$DateTime, df$Global_active_power, type = 'l', 
       xlab = '', 
       ylab = ylab)
  
  #Close device, if opened
  if (openPng == T) {
    dev.off()
  }
}

if (exists("enblePlotting") == F) {
  showPlot2(ylab = "Global Active Power (kilowatts)")
} else if ( enblePlotting == T ) {
  showPlot2(ylab = "Global Active Power (kilowatts)")
} 
