rm(list=ls())
library(EnvStats)

act0 = read.csv("outputs/results/default_settings/activity_scores_rep0.csv")
act1 = read.csv("outputs/results/default_settings/activity_scores_rep1.csv")

nr_muts = apply(cbind(act0$nr_mut, act1$nr_mut), 1, max)

x = nr_muts[which(!is.na(nr_muts))] 

length(x)

pdf("outputs/results/number_of_codings.pdf")
ecdfPlot(x, discrete=TRUE, main ='', ylab="Fraction", xlab="Number of codings",
         ecdf.col = "blue")
dev.off()

