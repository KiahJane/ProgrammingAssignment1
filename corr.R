################## Project 1 - R Programming - Coursera - 03.09.2021 ##########################

# function -> corr
corr <- function(directory, threshold = 0){
  files_list <- list.files(directory, pattern = ".csv", full.names=TRUE)  #-> where to find files
  core <- numeric(0)                                                      #-> numeric vector returning 0 if threshold not met

  for (i in 1:length(files_list)) {                                       #->  
    dat <- read.csv(files_list[i])                                        #-> read files into loop
    cc <- sum(complete.cases(dat))                                        #-> vector of sum of complete cases
    
    if (cc > threshold) {                                                        #-> threshold condition: sum of comlete observations must be met
      core <- c(core, cor(dat["sulfate"], dat["nitrate"], use="complete.obs"))   #-> if condition met, return numeric vector of correlation between sulfate & nitrate (only observing complete cases)
    }
  }
  core                                                                    #-> print results
}
