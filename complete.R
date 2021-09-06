################## Project 1 - R Programming - Coursera - 02.09.2021 ##########################

# function -> complete
complete <- function(directory, id = 1:332){                               #-> arguments of function
  files_list <- list.files(directory, pattern = ".csv", full.names=TRUE)   #-> creates list of files -> path to directory
  dat <- data.frame()                                                      #-> creates empty data frame (to use later in rbind)
  for (i in id) {                                                          #-> for loop to pull observations matching arguments
    nobs <- c(sum(complete.cases(read.csv(files_list[i]))))                #-> vector of sum of complete observations for each id[i] being read in from list of files
    dat <- rbind(dat, data.frame(id = i, nobs))                            #-> df w/ rbind containing id[i] & vector (cc)
  }
  dat                                                                      #-> print outcome
}
complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 30:25)
complete("specdata", 3)

cc <- complete("specdata", c(6, 10, 20, 34, 100, 200, 310))
print(cc$nobs)
cc <- complete("specdata", 54)
print(cc$nobs)
RNGversion("3.5.1")  
set.seed(42)
cc <- complete("specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])
