rm(list=ls())
library(Biostrings)
library(dplyr)
source("scripts/activity/ActivityScoreFunctions.r")

rate.plot <- function(mut_data){
  data = t(as.matrix(mut_data[,c(2,3,4)]))
  colnames(data) <- seq(1,306)
  data = apply(data, 2, function(x){x/sum(x)})
  barplot(data, 
          col=c("#4085ed","#cc195d","#f7c200"),
          border="white", 
          font.axis=2,las = 1, 
          xlab="Residue", ylab = "Fraction")
  legend("bottom", inset=c(-0.2, 0),legend=c("Non-synonymous","Synonymous","Stop"), fill =c("#4085ed","#cc195d","#f7c200"), cex=0.8,
         box.lty=0, xpd = TRUE,  bty = "n")
}

setForResidue = getSetsForResidue()


seq_3CL = ref_genetic()
globalRef = find_ref()

base_folder = "csv_files/"

condition = "Gal"
synCoding = TRUE
remove_one_mismatch = FALSE
whichRep = "both"
gal_thr = 0
galDat = makeCountsDMS(base_folder, condition="Gal", whichRep = whichRep, threshold=gal_thr, synCoding=synCoding, remove_one_mismatch=remove_one_mismatch)

df = galDat

df$mut2 = df$mut
df[which(df$mut == "*"), "mut2"] = "stop"
df[which(df$mut != "*"), "mut2"] = "Non_syn"
df[which(df$AA_WT==1), "mut2"] = "Syn"

table(df$mut2)


df2 = df %>% group_by(residue, mut2) %>%  summarise(count=sum(count))
head(df2)
df2$mut2 = as.factor(df2$mut2)
df2 = as.data.frame(df2)

a = reshape(df2, timevar = "mut2", idvar = "residue", direction = "wide")
a[, 2:4] = a[, 2:4] / apply(a[, 2:4], 1, sum)
rownames(a) = NULL
head(a)

tail(a)

head(a[order(a$count.Syn, decreasing = T), ])

figure_folder = "outputs/results/"
pdf(paste0(figure_folder, "mut_rates.pdf"), width = 9, height = 6)
rate.plot(a)
dev.off()

rate.plot(mut_data)
