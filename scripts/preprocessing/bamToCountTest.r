rm(list=ls())
# library(Rsamtools)
library(GenomicAlignments)
library(tidyverse)
library(data.table)
source("scripts/preprocessing/common.r")
# source("common.r")

oligo_9NN = readOligos()


bam_folder = "../outputs/bam_files/Glu/"
Input_SortedBam = "Set12_rep1_sorted.bam"
ROI = c(165:179)
st = 165
end = 179


pathOut = "../set1_test/"
pathToRef <- "../Reference/Ref_3CL.fasta"
set = "Set12"
replicate=1
includeFinalFlankingResid = 1

count_table(bam_folder, Input_SortedBam, pathOut, st, end, ROI, pathToRef,
            set, replicate, includeFinalFlankingResid)

