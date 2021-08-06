# rm(list=ls())
# source("scripts/bamToCountFunctions.r")
# # library(Rsamtools)
# library(GenomicAlignments)
# library(tidyverse)
# library(data.table)

oligo_9NN = readOligos()

bam_folder = "../glu_ext/"
Input_SortedBam = "Set15_rep1_sorted.bam"
ROI = c(212:227)
st = 212
end = 227


pathOut = "../csv3/"
pathToRef <- "../Reference/Ref_3CL.fasta"
set = "Set15"
replicate=1
includeFinalFlankingResid = FALSE


count_table(bam_folder, Input_SortedBam, pathOut, st, end, ROI, pathToRef,
            set, replicate, includeFinalFlankingResid)
