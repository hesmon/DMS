rm(list=ls())
# library(Rsamtools)
library(GenomicAlignments)
library(tidyverse)
library(data.table)
# source("scripts/common.r")
source("common.r")

oligo_9NN = readOligos()


bam_folder = "../outputs/bam_files/Glu/"
Input_SortedBam = "Set1_rep1_sorted.bam"
ROI = c(1:12)
st = 1
end = 12


pathOut = "../set1_test/"
pathToRef <- "../Reference/Ref_3CL.fasta"
set = "Set1"
replicate=1
includeFinalFlankingResid = 0

InWindows = TRUE

count_table(bam_folder, Input_SortedBam, pathOut, st, end, ROI, pathToRef,
            set, replicate, includeFinalFlankingResid)


InWindows = FALSE

if(InWindows == FALSE) {
  library(doMC)
  registerDoMC(6)
  print(paste("#cores", getDoParWorkers()))
}

pathToRef = "/home/bahari/SarsCov/Ref_3CL.fasta"
count_table(bam_folder, Input_SortedBam, pathOut, st, end, ROI, pathToRef,
            set, replicate, includeFinalFlankingResid)

