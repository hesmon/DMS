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

create_seqs <- function(WT_Seq_org, SetRange_on_Ref, dat){
  
  RefInRange_xp <- subseq(WT_Seq_org, SetRange_on_Ref$startThr, SetRange_on_Ref$endTrim)
  WTInRange = strsplit(as.character(RefInRange_xp), split='')[[1]]
  
  if(SetRange_on_Ref$includeFinalFlankingResid == FALSE){
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
  
  
  dists = sapply(RefInRange, function(x) {sum(strsplit(x, split='')[[1]] != WTInRange)})
  
  list(seqs = RefInRange, DistFromWT = dists)
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
  generatedSeqs = create_seqs(WT_Seq_org, SetRange_on_Ref, df)
  df$sequence = generatedSeqs$seqs
  df$DistFromWT = generatedSeqs$DistFromWT
  df = df[order(df$DistFromWT), ]
  df$one_mismatch = ifelse(df$DistFromWT==1, TRUE, FALSE)
  df$WT = ifelse(df$DistFromWT==0, TRUE, FALSE)
  df
}

# create WT_table for the residues that do not have WT seq by oligo.
create_WT_subSeqs <- function(ROI, WT_Seq_org, SetRange_on_Ref){
  wtInRange <- subseq(WT_Seq_org, SetRange_on_Ref$startThr, SetRange_on_Ref$endTrim)
  positions_on_ref <- posOnRef(ROI)
  pos_subseq <- data.frame(st = (positions_on_ref[,1])-3,
                           nd = (positions_on_ref[,2])+3)
  
  sites <- substring(WT_Seq_org, pos_subseq$st, pos_subseq$nd)
  
  sites_splited <- t(data.frame(str_extract_all(sites, '.{1,3}')))
  df = data.frame(sites_splited)
  colnames(df) <- c("site_1", "site_2", "site_3")
  rownames(df) <- c()
  
  cbind(resid = ROI, df, sequence = unname(as.character(wtInRange)),
        DistFromWT= 0, one_mismatch = FALSE, WT=TRUE)
}

# get the distance from WT and add the one_mismatch column
getSequenceTableFromOligos <- function(WT_Seq_org, SetRange_on_Ref,  ROI){
  seqsFromOligos  = generateOligSeqsForSet(ROI, SetRange_on_Ref, WT_Seq_org)
  
  WT_table <- create_WT_subSeqs(ROI, WT_Seq_org, SetRange_on_Ref)
  
  seqsTables = rbind(seqsFromOligos[seqsFromOligos$WT == 0,], WT_table)
  
  freqs = table(seqsTables$sequence)
  seqsTables$correction_factor = freqs[seqsTables$sequence]
  seqsTables$correction_factor[seqsTables$WT] = 1
  
  seqsTables = seqsTables[order(seqsTables$DistFromWT, decreasing = FALSE),]
  
  seqsTables
}

doCountingForSet <- function(sequenceTable, tmpGal){
  t0 = proc.time()
  seqs = as.character(mcols(tmpGal)$seq)
  
  reads_table = as.data.frame(table(seqs))
  reads_table$seqs = as.character(reads_table$seqs)
  nrow(reads_table)
  
  tmp = 1:nrow(reads_table)
  chunks = split(tmp, ceiling(seq_along(tmp)/1000))
  
  t0 = proc.time()
  chunkCounts <- foreach(i = 1:length(chunks), .combine = 'rbind') %do% {
    if(i %% 10 == 0){
      t = proc.time()- t0
      print(paste("chunk", i, "out of", length(chunks), "time", t[3] ))
    }
    chunkIndex = chunks[[i]]
    countMat = sapply(sequenceTable$sequence, grepl, reads_table$seqs[chunkIndex])
    freqs = reads_table$Freq[chunkIndex]
    apply(countMat, 2, function(x) { 
      sum(freqs[which(x)])
    })
  }
  sequenceTable$count = apply(chunkCounts, 2, sum)
  print("Total time:")
  print(proc.time()- t0)
  # countMat = sapply(sequenceTable$sequence, grepl, reads_table$seqs)
  # sequenceTable$count = apply(countMat, 2, function(x) { sum(reads_table$Freq[which(x)])})
  
  sequenceTable$corrected_count = sequenceTable$count / sequenceTable$correction_factor
  
  sequenceTable = sequenceTable[, c("resid", "site_1", "site_2", "site_3", "count", "corrected_count",
                                    "WT", "one_mismatch", "DistFromWT", "sequence")]
  print((proc.time() - t0))
  
  sequenceTable
}

saveCountsInCsv <- function(set_counts, pathOut, set, replicate){
  dir.create(pathOut, showWarnings = FALSE, recursive = TRUE)
  
  count_table <- set_counts %>% group_by(resid)
  countGropus = group_split(count_table)
  
  countGropus <- lapply(countGropus, function(i) i[order(i$count), ])
  
  for(i  in 1:length(countGropus)) {
    print(i)
    dat = countGropus[[i]]
    resid = countGropus[[i]][1,1]
    residueFile = paste(pathOut, paste0(paste0("s", substring(set, 2)),"_residue", resid), "_rep", replicate-1, ".csv", sep =  '')
    write.csv(dat, file=residueFile, row.names = FALSE)
  }
}

count_table <- function(bam_folder, Input_SortedBam, pathOut, st, end, ROI, pathToRef, 
                        set, replicate, includeFinalFlankingResid){
  oligo_9NN = readOligos()
  
  WT_Seq_org <- readDNAStringSet(pathToRef)
  
  print(paste0(bam_folder, Input_SortedBam))
  bamfile <- BamFile(paste0(bam_folder, Input_SortedBam))
  print(bamfile)
  tmpGal <- readGAlignments(bamfile, param=ScanBamParam(what=c("seq"), simpleCigar = FALSE),
                            use.names=TRUE)
  
  SetRange_on_Ref <- getRangeOfInterest(st, end, includeFinalFlankingResid)
  
  sequenceTable <- getSequenceTableFromOligos(WT_Seq_org, SetRange_on_Ref, ROI)
  
  countDF <- doCountingForSet(sequenceTable, tmpGal)
  
  saveCountsInCsv(countDF, pathOut, set, replicate)
}