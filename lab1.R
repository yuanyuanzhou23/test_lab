args <- commandArgs(trailingOnly = TRUE)
outFormat <- args[1]
filename <- args[2] 
data <- read.csv(file = filename, header = TRUE)

# debug print statements
#print(outFormat)
#print(data)

if (outFormat=="json"){
  library(jsonlite)
  # Import the data and make a copy of it
  data_copy = data
  
  # add patient as a parent to the csv file
  data_copy$patient = data 
  data = data_copy[length(data_copy)]
  
  data_copy$patient = data 
  data = data_copy[length(data_copy)]
  
  json <-""
  json["records"]<-data

  json<-jsonlite::toJSON(result<-list(json["records"]),pretty = TRUE)
  print(json)
  } else if (outFormat=="xml") {
    library(XML)
    # get the column names of the data
    names(data) <-colnames(data)
    
    xml <- xmlTree( )
    
    # names(xml)
    xml$addTag("records", close=FALSE)
    
    for (i in 1:nrow(data)) {
      xml$addTag("patient", close=FALSE)
      for (j in names(data)) {
        xml$addTag(j,data[i, j])
      }
      xml$closeTag()
    }
    xml$closeTag()
    xml$closeTag()
    cat(saveXML(xml))
} else {
  exit
}