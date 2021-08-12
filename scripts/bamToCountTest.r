rm(list=ls())
# library(Rsamtools)
library(GenomicAlignments)
library(tidyverse)
library(data.table)
source("scripts/common.r")

oligo_9NN = readOligos()


bam_folder = "../outputs/bam_files/Glu/"
Input_SortedBam = "SetR1_rep1_sorted.bam"
ROI = c(140:149)
st = 140
end = 149


pathOut = "../setR1_test/"
pathToRef <- "../Reference/Ref_3CL.fasta"
set = "SetR1"
replicate=1
includeFinalFlankingResid = 0


count_table(bam_folder, Input_SortedBam, pathOut, st, end, ROI, pathToRef,
            set, replicate, includeFinalFlankingResid)
