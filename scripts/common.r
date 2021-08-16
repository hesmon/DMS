rm(list=ls())


readOligos <- function() {
  oligos = read.csv("input_data/oligos.csv")
  
  oligo_9NN = c()
  for(i in 1:306) {
    current_str = as.character(oligos[i, 2])
    start = str_locate(current_str, "NNK")[1]
    
    if(is.na(start)) {
      current_str = as.character(reverseComplement(DNAString(current_str)))
      start = str_locate(current_str, "NNK")[1]
    }
    
    oligo_9NN[i] = substring(current_str, start-3, start+5)
  }
  oligo_9NN
}

###################### copied from common.r ######################
posOnRef<- function(residue) {
  data.frame(start=16 + residue * 3, end=16 + residue*3 + 2)
}

###################### copied from common.r ######################
getRangeOfInterest <- function(st, end, includeFinalFlankingResid) {
  stFlanking = st - 1
  startThr = posOnRef(stFlanking)$start
  
  endFlanking = end  + 1
  endTrim = endThr = posOnRef(endFlanking)$end
  
  if(includeFinalFlankingResid == FALSE)
    endTrim = endThr - 3
  
  list(startThr=startThr, endThr=endThr, endTrim = endTrim, includeFinalFlankingResid=includeFinalFlankingResid)
}


generateSequenceForOligo <- function(pattern) {
  DegCodon <- list(R = c("A", "G"), Y = c("C", "T"), M = c("A", "C"), K = c("G", "T"), S = c("C", "G"),
                   W = c("A", "T"), H = c("A", "C", "T"), B = c("C", "G", "T"), V = c("A", "C", "G"),
                   D = c("A", "G", "T"), N = c("A", "C", "G", "T"), A="A", C="C", G="G", T="T")
  
  splitted_pattern = toupper(str_split(pattern, '')[[1]])
  curChar = splitted_pattern[1]
  seqs = DegCodon[curChar][[1]]
  
  for(i in 2:9){
    curChar <- splitted_pattern[i]
    
    seqs = merge(seqs, DegCodon[curChar][[1]], by = NULL)  
  }
  
  data.frame(site_1 = paste0(seqs[, 1], seqs[, 2], seqs[, 3]), 
             site_2 = paste0(seqs[, 4], seqs[, 5], seqs[, 6]), 
             site_3 = paste0(seqs[, 7], seqs[, 8], seqs[, 9]))
}



create_seqs2 <- function(WT_Seq_org, SetRange_on_Ref, dat){

  if(SetRange_on_Ref$includeFinalFlankingResid == FALSE){
    
    RefInRange_xp <- subseq(WT_Seq_org, SetRange_on_Ref$startThr, SetRange_on_Ref$endTrim)
    WTInRange = strsplit(as.character(RefInRange_xp), split='')[[1]]
    index <- which(dat$resid == max(as.numeric(dat$resid)))
    dat_excp <- dat[index,]
    sub_seq_excp <- paste0(dat_excp$site_1, dat_excp$site_2)
    pos_sub_seq_xp_on_Ref <- data.frame(st = posOnRef(max(as.numeric(dat$resid)))[,1]-3,
                                        nd = posOnRef(max(as.numeric(dat$resid)))[,2])
    pos_sub_seq_xp_on_range <- abs(SetRange_on_Ref$startThr - pos_sub_seq_xp_on_Ref$st)+1
    str_sub(RefInRange_xp, pos_sub_seq_xp_on_range, pos_sub_seq_xp_on_range+5) <- sub_seq_excp
    
    RefInRange <- subseq(WT_Seq_org, SetRange_on_Ref$startThr, SetRange_on_Ref$endTrim)
    dat <- dat[-index,]
    sub_seq <- paste0(dat$site_1, dat$site_2, dat$site_3)
    #subseq_whole <- c(sub_seq, sub_seq_excp)
    pos_sub_seq_on_Ref <- data.frame(st = posOnRef(as.numeric(dat$resid))[,1]-3,
                                        nd = posOnRef(as.numeric(dat$resid))[,2]+3)
    pos_sub_seq_on_range <- abs(SetRange_on_Ref$startThr - pos_sub_seq_on_Ref$st)+1
    str_sub(RefInRange, pos_sub_seq_on_range, pos_sub_seq_on_range+8) <- sub_seq
    
    RefInRange <- c(RefInRange, RefInRange_xp)
    
  } else {
    RefInRange <- subseq(WT_Seq_org, SetRange_on_Ref$startThr, SetRange_on_Ref$endTrim)
    sub_seq <- paste0(dat$site_1, dat$site_2, dat$site_3)
    pos_sub_seq_on_Ref <- data.frame(st = posOnRef(as.numeric(dat$resid))[,1]-3,
                                     nd = posOnRef(as.numeric(dat$resid))[,2]+3)
    pos_sub_seq_on_range <- abs(SetRange_on_Ref$startThr - pos_sub_seq_on_Ref$st)+1
    
    str_sub(RefInRange, pos_sub_seq_on_range, pos_sub_seq_on_range+8) <- sub_seq
  }
  
  
  # dists = sapply(RefInRange, function(x) {sum(strsplit(x, split='')[[1]] != WTInRange)})
  # table(unname(dists))
  
  # list(seqs = RefInRange, dist = )
  list(seqs = RefInRange)
}



generateOligSeqsForSet <- function(ROI, SetRange_on_Ref, WT_Seq_org){ 
  df = NULL
  for(resid in ROI){
    oligoSeqs = generateSequenceForOligo(oligo_9NN[resid])
    if(is.null(df)){
      df = cbind(resid, oligoSeqs)
    } else {
      df = rbind(df, cbind(resid, oligoSeqs))
    }
  }
  generatedSeqs = create_seqs2(WT_Seq_org, SetRange_on_Ref, df)
  df$sequence = generatedSeqs$seqs
  # df$adist = generatedSeqs$adist
  
  # df = df[order(df$adist), ]
  head(df)
  df
}

# create WT_table for the residues that do not have WT seq by oligo.
create_WT_subSeqs_for_Rem_residues <- function(ROI, WT_Seq_org, SetRange_on_Ref){
  
  wtInRange <- subseq(WT_Seq_org, SetRange_on_Ref$startThr, SetRange_on_Ref$endTrim)
  
  res_generating_WT <- seqsFromOligos[which(seqsFromOligos$sequence == as.character(wtInRange)),"resid"]
  idx <- which(ROI %in% res_generating_WT)
  res_to_generate_WT <- ROI[-idx]
  pos_on_ref_rem_residue <- posOnRef(res_to_generate_WT)
  
  pos_subseq <- data.frame(st = (pos_on_ref_rem_residue[,1])-3,
                           nd = (pos_on_ref_rem_residue[,2])+3)
  
  sites <- substring(WT_Seq_org, pos_subseq$st, pos_subseq$nd)
  
  sites_splited <- t(data.frame(str_extract_all(sites, '.{1,3}')))
  colnames(sites_splited) <- c("site_1", "site_2", "site_3")
  rownames(sites_splited) <- c()
  
  WT_table_for_Rem_residues <- cbind(resid = res_to_generate_WT, 
                                     sites_splited , sequence = as.character(wtInRange), 
                                     DistFromWT= 0, one_mismatch = "FALSE")
  WT_table_for_Rem_residues
}

# get the distance from WT and add the one_mismatch column
getSeqStatusForSets <- function(WT_Seq_org, SetRange_on_Ref, seqsFromOligos, ROI){
  #SetRange_on_Ref <- getRangeOfInterest(st, end, includeFinalFlankingResid)
  WT_in_Range <- subseq(WT_Seq_org, SetRange_on_Ref$startThr, SetRange_on_Ref$endTrim)
  
  splited_WT_in_Range <- strsplit(as.character(WT_in_Range), split='')[[1]]
  # seqsFromOligos  = generateOligSeqsForSet(ROI, SetRange_on_Ref, WT_Seq_org)
  
  DistFromWT <- c()
  for(i in 1: nrow(seqsFromOligos)){
    x <- seqsFromOligos[i, "sequence"]
    D <- length(which(splited_WT_in_Range != strsplit(x, split='')[[1]]))
    DistFromWT <- c(DistFromWT, D)
  }
  seqsFromOligos <- cbind(seqsFromOligos,DistFromWT)
  
  one_mismatch <- c()
  for (i in 1: nrow(seqsFromOligos)) {
    if ((seqsFromOligos$DistFromWT[i] == 1)) {
      one_mismatch_status <- "TRUE"
    } else {one_mismatch_status <- "FALSE"}
    one_mismatch <- c(one_mismatch, one_mismatch_status)
  }
  
  seqsFromOligos <- cbind(seqsFromOligos,one_mismatch)
  
  seqsFromOligos = seqsFromOligos[order(seqsFromOligos$DistFromWT, decreasing = FALSE), ]
  
  WT_rem <- create_WT_subSeqs_for_Rem_residues(ROI, WT_Seq_org, SetRange_on_Ref)
  
  WT_row_index <- which(seqsFromOligos$DistFromWT == 0)
  WT_native_row <- seqsFromOligos[WT_row_index, ]
  seqsFromOligos_whithoutWT <- seqsFromOligos[-WT_row_index, ]
  
  WT_table <- rbind(WT_native_row, WT_rem)
  WT_table <- WT_table[order(as.numeric(WT_table$resid)), ]
  seqsTables <- list(all = seqsFromOligos, WT = WT_table,
                     all_exceptWT = seqsFromOligos_whithoutWT)
  
  seqsTables
}


doCountingForSet <- function(seqStatus_table, tmpGal){
  t0 = proc.time()
  seqs = as.character(mcols(tmpGal)$seq)
  
  reads_table = as.data.frame(sort(table(seqs)))
  reads_table$seqs = as.character(reads_table$seqs)
  nrow(reads_table)
  
  AA = sapply(seqStatus_table$all$sequence, grepl, reads_table$seqs)
  print((proc.time() - t0))
  
  seqStatus_table$all$count = apply(AA, 2, function(x) { sum(reads_table$Freq[which(x)])})
  print((proc.time() - t0))

  seqStatus_table$all
}


saveCountsInCsv <- function(set_counts, WT_Seq_org, pathOut, set, replicate, ROI){
  dir.create(pathOut, showWarnings = FALSE, recursive = TRUE)
  
  
}
