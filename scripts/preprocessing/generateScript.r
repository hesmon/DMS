rm(list=ls())
library(tidyverse)
library(Biostrings)
source("scripts/preprocessing/common.r")

dms_folder = "/home/bahari/all_dms_data/Reads/"
folder_names = c("Set1", "Set10", "Set10R1", "Set10R2", "Set11", "Set12", "Set13", "Set13R1", "Set13R2",
                 "Set14", "Set14R", "Set15", "Set16", "Set16R", "Set17", "Set18", "Set19", "Set2",   
                 "Set20", "Set21", "Set3", "Set4", "Set5", "Set6", "Set7", "Set8", "Set8R", "Set9",
                 "Set9R1", "Set9R2", "SetR1")

sets_to_folders = folder_names
names(sets_to_folders) = folder_names
sets_to_folders["Set10R1"] = sets_to_folders["Set10R2"] = "Set10_res134_138"
sets_to_folders["Set13R1"] = sets_to_folders["Set13R2"] = "Set13_res180_187"
sets_to_folders["Set14R"] = "Set14_res196_198_199"
sets_to_folders["Set16R"] = "Set16_res233"
sets_to_folders["Set8R"] = "Set8_res113_114"
sets_to_folders["Set9R1"] = sets_to_folders["Set9R2"] = "Set9_res116_121"


load("input_data/file_names.RData")
data = read.csv("input_data/sample_spreadsheet_final.csv", skip = 11)

tmp = ifelse(data$Sites=="", paste0(data$Start.range, ":", data$End.range-1), data$Sites)
ROI = paste0("c(", tmp, ")")

data$endResid = data$End.range-1
idx = which(data$Sites != '')
data$endResid[idx] = unlist(lapply(strsplit(data$Sites[idx], ","), max))



df = data.frame(rbind(cbind(data$Set, data$Replicate, data$Glu, "Glu", ROI, data$Start.range,  data$End.range-1, data$endResid),
                      cbind(data$Set, data$Replicate, data$Gal, "Gal", ROI, data$Start.range,  data$End.range-1, data$endResid),
                      cbind(data$Set, data$Replicate, data$Gc, "Gc", ROI, data$Start.range,  data$End.range-1, data$endResid),
                      cbind(data$Set, data$Replicate, data$Grl, "Grl", ROI, data$Start.range,  data$End.range-1, data$endResid)))

colnames(df) = c("Set", "Rep", "ID", "condition", "ROI", "st", "end", "endResidue")

df$Set = paste0("Set",df$Set)

oligos_NN = readOligos()

oligos_vec = strsplit(toupper(substr(oligos_NN[as.numeric(df$end)], 7, 9)), '')


tmp = !unlist(lapply(oligos_vec, function(x){ all(x %in% c("A", "C", "G", "T"))}))
df$includeFinalFlankingResid = ifelse(tmp, 1, 0)


###############################################################
################ start generating the script ##################
###############################################################
# df = df[which(!(df$condition %in% c("Gal", "Glu"))), ]

dir.create("../outputs/", recursive=TRUE, showWarnings = FALSE)
reverse = TRUE

if(reverse) {
  fname = "outputs/dms_align_rev.sh"
} else {
  fname = "outputs/dms_align.sh"
}

sink(fname)

# wiritn the rhead
cat("#!/usr/bin/env bash\n \n") 

samfixcigar = "java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar"
# cat("bwa index /home/bahari/SarsCov/Ref_3CL.fasta\n")

sets = sort(unique(df$Set))
if(reverse)
  sets = rev(sets)

for(set in sets) {
  folder = sets_to_folders[set]
  # cat("cd ", folder, " \n", sep='')
  cat("echo ", set, "-started \n \n \n", sep='')
  
  idx = which(df$Set == set)
  files = files_in_sets[[folder]]
  for(i in idx) {
    base_folder = paste0("../outputs/fastq_files/", df$condition[i], "/")
    bam_folder_init = paste0("../outputs/bam_files_init/", df$condition[i], "/")
    bam_folder = paste0("../outputs/bam_files/", df$condition[i], "/")
    sam_folder = paste0("../outputs/sam_files/", df$condition[i], "/")
    # cat("mkdir -p ", base_folder, "\n", sep='')
    # cat("mkdir -p ", bam_folder_init, "\n", sep='')
    # cat("mkdir -p ", bam_folder, "\n", sep='')
    final_fastq = paste0(base_folder, set, "_rep", df$Rep[i], ".fastq")
    
    sam_file = paste0(sam_folder, set, "_rep", df$Rep[i], ".sam")
    bam_file = paste0(bam_folder_init, set, "_rep", df$Rep[i], ".bam")
    bam_file_cigar = paste0(bam_folder_init, set, "_rep", df$Rep[i], "_cigar.bam")
    bam_sorted = paste0(bam_folder, set, "_rep", df$Rep[i], "_sorted.bam")
    bam_index = paste0(bam_folder, set, "_rep", df$Rep[i], "_sorted.bam.bai")
    
    fastq_parts = paste0(dms_folder, folder, "/", sort(files[grep(df$ID[i], files)]))
    
    csv_folder <-  paste0("/home/bahari/all_dms_data/outputs/csv_files/", df$condition[i], "/")
    csv_file <- paste0(csv_folder, paste0("s", substring(set, 2)),
                       "_residue", df$endResidue[i], "_rep", as.numeric(df$Rep[i])-1, ".csv")
    
    cat("if [ ! -f \"", bam_index, "\" ]; then \n", sep='')
    # # cat("cat ", fastq_parts, " > " , final_fastq, "\n \n")
    # cat("echo alignment:", final_fastq, "\n")
    # # cat("bwa mem /home/bahari/SarsCov/Ref_3CL.fasta ", final_fastq, "> ", sam_file, "\n")
    # # cat("samtools view -S -b -q 20  ", sam_file, " > ", bam_file, "\n")
    cat("samtools view -S -b  ", sam_file, " > ", bam_file, "\n")

    ref = "/home/bahari/SarsCov/Ref_3CL.fasta"
    cat(samfixcigar," -R ",  ref, " ", bam_file," -o ",bam_file_cigar, "\n")
    cat("samtools sort ", bam_file_cigar, "> ", bam_sorted, "\n")
    cat("samtools index ", bam_sorted, "\n")
    cat("fi\n")
    bam_sorted_fname = paste0("\"", set, "_rep", df$Rep[i], "_sorted.bam\"")
    pathOut = paste0("\"../outputs/csv_files/", df$condition[i], "/\"")
    bam_folder_str = paste0("\"", bam_folder, "\"")
    
    
    cat("if [ ! -f \"", csv_file, "\" ]; then \n", sep='')
    cat("echo ", csv_file, "\n")

    cat("R CMD BATCH --no-save --no-restore \'--args ", " bam_folder=", bam_folder_str,
        " Input_SortedBam=", bam_sorted_fname, " pathOut=", pathOut, " st=", df$st[i],
        " end=", df$end[i], " ROI=", df$ROI[i], " pathToRef=\"/home/bahari/SarsCov/Ref_3CL.fasta\"",
        " set=\"", df$Set[i], "\" replicate=", df$Rep[i],
        " includeFinalFlankingResid=", df$includeFinalFlankingResid[i] ,  " \'",
        " bamToCount.r \n", sep='')

    cat("fi\n")
  }
  cat("echo ----------------------- \n \n")
}

sink()


# rm(list=ls())
# folders = list.files(, pattern="Set")
# files_in_sets = list()
# 
# for(i in 1:length(folders)) {
#   folder = folders[i]
#   files_in_sets[[i]] = list.files(folder)
# }
# names(files_in_sets) = folders
# save(files_in_sets, file="../file_names.RData")
