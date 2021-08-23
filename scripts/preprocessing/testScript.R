rm(list = ls())
source("scripts/preprocessing/common.r")
library(stringr)
library(Biostrings)
library(GenomicAlignments)
library(tidyverse)
oligo_9NN = readOligos()

InWindows = TRUE

# for set13
ROI = c(180:195)
st = 180
end = 195
pathToRef <- "input_data/Ref_3CL.fasta"

WT_Seq_org <- readDNAStringSet(pathToRef)
includeFinalFlankingResid = 0

set = "Set13"
replicate=1

pathOut="../extdata/Output/testFunction/"

SetRange_on_Ref <- getRangeOfInterest(st, end, includeFinalFlankingResid)

sequenceTable <- getSequenceTableFromOligos(WT_Seq_org, SetRange_on_Ref, ROI)


# define tmpGal
bam_folder = "../outputs/bam_files/Gal/"
Input_SortedBam = "Set13_rep1_sorted.bam"
bamfile <- BamFile(paste0(bam_folder, Input_SortedBam))
# print(bamfile)
tmpGal <- readGAlignments(bamfile, param=ScanBamParam(what=c("seq", "cigar"), simpleCigar = FALSE),
                         use.names=TRUE)

load("../tmpData/Set13_rep1_Excigar_GAlignment.RData")
tmpGal <- tmpGal[1:50000]

countDF <- doCountingForSet(sequenceTable, tmpGal)

saveCountsInCsv(countDF, pathOut, set, replicate)
