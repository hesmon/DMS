rm(list=ls())
# library(Rsamtools)
library(GenomicAlignments)
library(tidyverse)
library(data.table)
library(foreach)

source("common.r")

##First read in the arguments listed at the command line
args=(commandArgs(TRUE))
print(args)
##args is now a list of character vectors
## First check to see if arguments are passed.
## Then cycle through each element of the list and evaluate the expressions.
if(length(args)==0){
  print("No arguments supplied.")
}else{
  for(i in 1:length(args)){
    eval(parse(text=args[[i]]))
  }
}

InWindows = FALSE

if(InWindows == FALSE) {
  library(doMC)
  registerDoMC(6)
  print(paste("#cores", getDoParWorkers()))
}
print(ls())
print(Sys.time())
print(i)
print(bam_folder)
print(Input_SortedBam)
print(pathOut)
print(st)
print(end)
print(ROI) # ROI is a vector containing the start and end from final sample .csv table (e.g. for se1: c(1, 13))
print(set)
print(replicate)
print(includeFinalFlankingResid)
oligo_9NN = readOligos()


count_table(bam_folder, Input_SortedBam, pathOut, st, end, ROI, pathToRef,
            set, replicate, includeFinalFlankingResid)
