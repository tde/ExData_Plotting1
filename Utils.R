library (sqldf)

getHouseholdData <- function() {
  df <- read.csv.sql(
      file = "household_power_consumption.txt", 
      sql = "SELECT * FROM file WHERE Date='1/2/2007' OR Date='2/2/2007'", 
      header = T,
      sep = ";",
      eol = "\n") 

  dateTime <- paste(df$Date, df$Time, sep=' ')
  df$DateTime <- strptime(dateTime, format="%d/%m/%Y %H:%M:%S")

  return (df)
}