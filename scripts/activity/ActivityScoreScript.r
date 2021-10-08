rm(list=ls())
source("scripts/activity/ActivityScoreFunctions.r")
library(tidyverse)
library('Biostrings')
library(ggExtra)
source("scripts/activity/plotting.r")


runActivityScript <- function(gal_thr, glu_thr, onlyCompleteData = FALSE, WT_method = "set", normMethod = "ratio", remove_one_mismatch = TRUE,
                              synCoding = TRUE, output_folder){
  act = computeAcitivityScores(gal_thr = gal_thr, glu_thr = glu_thr, WT_method = WT_method, 
                               whichRep = "both", normMethod = normMethod, synCoding=synCoding,
                               remove_one_mismatch = remove_one_mismatch)
  
  act0 = computeAcitivityScores(gal_thr = gal_thr, glu_thr = glu_thr, WT_method = WT_method,
                                whichRep = "rep0", normMethod = normMethod, synCoding=synCoding,
                                remove_one_mismatch = remove_one_mismatch)
  
  act1 = computeAcitivityScores(gal_thr = gal_thr, glu_thr = glu_thr, WT_method = WT_method,
                                whichRep = "rep1", normMethod = normMethod, synCoding==synCoding,
                                remove_one_mismatch = remove_one_mismatch)
  
  if(onlyCompleteData) {
    indexes = which(is.na(act0$AS) | is.na(act1$AS))
    act[indexes,] = act0[indexes,] = act1[indexes,] = NA
  }

    # Task 1: plot histogram for syn coding
  dir.create(output_folder, recursive = TRUE, showWarnings = FALSE)
  
  pdf(paste0(output_folder, "histogram.pdf"))
  hist.plot(act)
  dev.off()
  
  write.csv(act, file=paste0(output_folder, "activity_scores.csv"))
  
  # Task 2: correlation/scatter plot
  
  cor(act0$AS, act1$AS, method = "spearman", use="pairwise.complete.obs")
  sum(is.na(act$AS))
  
  pdf(paste0(output_folder, "scatter_plot.pdf"))
  print(scattor.plot(act0, act1))
  dev.off()
  
  write.csv(act0, file=paste0(output_folder, "activity_scores_rep0.csv"))
  write.csv(act1, file=paste0(output_folder, "activity_scores_rep1.csv"))
  
  act0$AS[which(act0$AS< -10)]  = -10
  act1$AS[which(act1$AS< -10)]  = -10
  
  
  pdf(paste0(output_folder, "scatter_truncated.pdf"))
  print(scattor.plot(act0, act1))
  dev.off()
}

setForResidue = getSetsForResidue()
seq_3CL = ref_genetic()
globalRef = find_ref()


# set the final settings
gal_thr = 0
glu_thr = 11  # equivalent to gal_thr >= 10
output_folder = "outputs/results/default_settings/"
runActivityScript(gal_thr, glu_thr, onlyCompleteData = FALSE, output_folder=output_folder)

output_folder = "outputs/results/not_na_in_either_rep/"
runActivityScript(gal_thr, glu_thr, onlyCompleteData = TRUE, output_folder=output_folder)



##### 