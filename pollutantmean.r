pollutanmean <- function(directory, pollutant, id=1:332) {
  
  fnames <- c(id)
  fnames <- sprintf("%03d",fnames)
  fnames <- paste(directory,"/",sep="",fnames,".csv")
  
  data <- do.call(rbind,lapply(fnames,read.csv, header=TRUE))
  colMeans(data[pollutant],na.rm = TRUE)
  
}