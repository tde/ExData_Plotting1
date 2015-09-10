source('Utils.R')

showPlot1 <- function(df = NULL, openPng = T) 
{
  #Get Household Data (only two day) from csv File, If need
  if (is.null(df)) {
    df <- getHouseholdData()    
  }

  #Open Device if plot to PNG
  if (openPng == T) { 
    png('plot1.png', width=480, height=480, bg='transparent')
  }

  #Draw Histogram
  hist(df$Global_active_power, main="Global Active Power", 
       xlab="Global Active Power (kilowatts)", col='red')

  #Close device, if opened
  if (openPng == T) {
    dev.off()
  }
}

if (exists("enblePlotting")) {
  if (enblePlotting == T) {
    showPlot1()
  }
}
