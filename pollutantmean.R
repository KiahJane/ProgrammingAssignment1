################## Project 1 - R Programming - Coursera - 01.09.2021 ##########################

# function -> pollutantmean
pollutantmean <- function(directory, pollutant, id = 1:332)  {
  files_list <- list.files(directory, pattern = ".csv", full.names=TRUE)   #-> creates list of files
  dat <- data.frame()                                    #-> creates empty data frame
  for (i in id) {                                
    dat <- rbind(dat, read.csv(files_list[i]))           #-> loops files w/ rbind for correct id
  }
  pollutant <- dat[, pollutant]                          #-> subsets for 'pollutant'
  mean(pollutant, na.rm = TRUE)                          #-> mean w/o NAs
}
pollutantmean("specdata", "sulfate", 1:10)
pollutantmean("specdata", "nitrate", 70:72)
pollutantmean("specdata", "nitrate", 23)
pollutantmean("specdata", "sulfate", 34)
pollutantmean("specdata", "nitrate")
