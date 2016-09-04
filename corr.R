corr  <- function(directory, threshold = 0) {
  
  fnames <- c(1:332)
  fnames <- sprintf("%03d",fnames)
  fnames <- paste(directory,"/",sep="",fnames,".csv")
  
  cr <- c() 
  for (i in fnames) {
    
    dt <- read.csv(i,header= TRUE)
    dt <- dt[complete.cases(dt),]
    if(nrow(dt)>threshold){
      
      cr <- c(cr, cor(dt$sulfate, dt$nitrate) ) 
      
    } 
    
  }
  cr
}
