source("scripts/activity/ActivityScoreFunctions.r")

setForResidue = getSetsForResidue()

seq_3CL = ref_genetic()
globalRef = find_ref()

refAtPos()


base_folder = "csv_files/"

library(tidyverse)
library('Biostrings')
library(ggExtra)
source("scripts/activity/plotting.r")

condition = "Gal"
whichRep = "rep0"
remove_one_mismatch = FALSE
threshold = 0
synCoding = TRUE
# gal_dms =  makeCountsDMS(base_folder, condition, whichRep, threshold, synCoding, remove_one_mismatch)



# set the final settings
gal_thr = 30
glu_thr = 30
# WT_method = "set"
WT_method = "residue"
WT_method = "set"
normMethod = "ratio"

remove_one_mismatch = FALSE
# Task 1: plot histogram for syn coding
act = computeAcitivityScores(gal_thr = gal_thr, glu_thr = glu_thr, WT_method = WT_method, 
                             whichRep = "both", normMethod = normMethod, synCoding=synCoding,
                             remove_one_mismatch = remove_one_mismatch)

# pdf(paste0(figure_folder, "final_hist.pdf"))
hist.plot(act)
# dev.off()

# Task 2: correlation/scatter plot
act0 = computeAcitivityScores(gal_thr = gal_thr, glu_thr = glu_thr, WT_method = WT_method,
                              whichRep = "rep0", normMethod = normMethod, synCoding=synCoding,
                              remove_one_mismatch = remove_one_mismatch)

act1 = computeAcitivityScores(gal_thr = gal_thr, glu_thr = glu_thr, WT_method = WT_method,
                              whichRep = "rep1", normMethod = normMethod, synCoding==synCoding,
                              remove_one_mismatch = remove_one_mismatch)

cor(act0$AS, act1$AS, method = "spearman", use="pairwise.complete.obs")

sum(is.na(act$AS))

act0$AS[which(act0$AS< -20)]  = -20
act1$AS[which(act1$AS< -20)]  = -20


# pdf(paste0(figure_folder, "final_scatter.pdf"))
scattor.plot(act0, act1)
# dev.off()
# 