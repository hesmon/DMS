rm(list=ls())
source("scripts/activity/ActivityScoreFunctions.r")
library(tidyverse)
library('Biostrings')
library(ggExtra)
source("scripts/activity/plotting.r")

setForResidue = getSetsForResidue()


seq_3CL = ref_genetic()
globalRef = find_ref()

base_folder = "csv_files/"

condition = "Gal"
remove_one_mismatch = FALSE
synCoding = TRUE

# set the final settings
gal_thr = 0
glu_thr = 0
WT_method = "set"
normMethod = "ratio"

remove_one_mismatch = FALSE
# Task 1: plot histogram for syn coding
act = computeAcitivityScores(gal_thr = gal_thr, glu_thr = glu_thr, WT_method = WT_method, 
                             whichRep = "both", normMethod = normMethod, synCoding=synCoding,
                             remove_one_mismatch = remove_one_mismatch)

figure_folder = "outputs/figures/"
dir.create(figure_folder, recursive = TRUE, showWarnings = FALSE)

pdf(paste0(figure_folder, "hist_0_0.pdf"))
hist.plot(act)
dev.off()

act = act[, c("nr_mut", "nr_wt", "AS", "AS_pvalue", "AS_fdr", "set",  "resid", "codon", 
                    "mut",  "WT", "clinical_status")]
write.csv(act, file="outputs/activity_scores.csv")

# Task 2: correlation/scatter plot
act0 = computeAcitivityScores(gal_thr = gal_thr, glu_thr = glu_thr, WT_method = WT_method,
                              whichRep = "rep0", normMethod = normMethod, synCoding=synCoding,
                              remove_one_mismatch = remove_one_mismatch)

act1 = computeAcitivityScores(gal_thr = gal_thr, glu_thr = glu_thr, WT_method = WT_method,
                              whichRep = "rep1", normMethod = normMethod, synCoding==synCoding,
                              remove_one_mismatch = remove_one_mismatch)

cor(act0$AS, act1$AS, method = "spearman", use="pairwise.complete.obs")
sum(is.na(act$AS))

pdf(paste0(figure_folder, "scatter_0_0.pdf"))
scattor.plot(act0, act1)
dev.off()


act0$AS[which(act0$AS< -20)]  = -20
act1$AS[which(act1$AS< -20)]  = -20

pdf(paste0(figure_folder, "scatter_0_0_truncated.pdf"))
scattor.plot(act0, act1)
dev.off()

# 