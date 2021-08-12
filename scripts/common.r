

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

consistentWithOligo <- function(codons, oligo_design) {
  result = c()  
  for(codon in codons){
    res = TRUE
    A = toupper(strsplit(codon, '')[[1]])
    B = toupper(strsplit(oligo_design, '')[[1]])
    for(i in 1:length(A)) {
      possibleN = B[i]
      if(B[i] == "N") 
        possibleN = c("A", "C", "G", "T")  
      
      if(B[i] == "K") 
        possibleN = c("G", "T")  
      
      if(B[i] == "Y") 
        possibleN = c("T", "C")  
      
      if(B[i] == "R") 
        possibleN = c("A", "G")  
      
      if(B[i] == "H") 
        possibleN = c("A", "C", "T")  
      
      
      if(!(A[i] %in% possibleN)) {
        res = FALSE
      }
    }
    result = c(result, res)
  }
  result
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

addSequencesInOligoWithZeroCount <- function(dat, resid) {
  
  geneticCodesData = paste0(dat$site_1, dat$site_2, dat$site_3)
  WT_seq = geneticCodesData[nrow(dat)]
  
  oligoSeqs = generateSequenceForOligo(oligo_9NN[resid])
  oligoSeqs$count = 0
  oligoSeqs$corrected_count = ""
  
  geneticCodesOligo = paste0(oligoSeqs$site_1, oligoSeqs$site_2, oligoSeqs$site_3)
  oligoSeqs$one_mismatch = ifelse(adist(geneticCodesOligo, WT_seq) == 1, TRUE, FALSE) 
  
  indexes = which(!(geneticCodesOligo %in% geneticCodesData))
  dat = rbind( oligoSeqs[indexes, ], dat)
  rownames(dat) = NULL
  dat
}

doCountingForSet <- function(read_seq, genomicRange, WT_Seq_org) {
  startThr = genomicRange$startThr
  endThr = genomicRange$endThr
  tmpWT <- subseq(WT_Seq_org, startThr, endThr)
  wt_seq = strsplit(as.character(tmpWT), split='')
  
  reads_table = as.data.frame(sort(table(read_seq)))
  reads_table$read_seq = as.character(reads_table$read_seq)
  nrow(reads_table)
  lenOfInterest = length(wt_seq[[1]])/3 -2 
  
  df = data.frame(resid=NA, genetic_code = NA, count=NA, one_mismatch=NA, corrected_count=NA)
  
  for(k in 1:nrow(reads_table)){ 
    one_mismatch = FALSE
    x = reads_table[k, "read_seq"]
    freq = reads_table[k, "Freq"]
    
    geneticXPos = which(wt_seq[[1]] != strsplit(x, split='')[[1]])
    aaXPos = unique(floor((geneticXPos-1)/3)) 
    
    if(length(geneticXPos) == 0) {    
      reads_table[k, "status"] = "WT"
      reads_table[k, "consistent"] = TRUE
      wtCount = freq
      next
      
    } 
    
    if( (max(aaXPos) - min(aaXPos)) > 2) {
      reads_table[k, "status"] = "non-adjacent-muts"
      reads_table[k, "consistent"] = FALSE
      next
    } 
    
    if(length(geneticXPos) == 1) {
      reads_table[k, "status"] = "one_mismatch"
      one_mismatch = TRUE
    }
    
    
    if(length(aaXPos) == 3) {
      posOnRead = aaXPos[2]
    } else if(length(aaXPos) == 2) {
      posOnRead = c(aaXPos[1], aaXPos[1]+1)
    } else if(length(aaXPos) == 1) {
      posOnRead = c(aaXPos[1]-1, aaXPos[1], aaXPos[1]+1)
    }
    posOnRead = posOnRead[posOnRead > 0] 
    posOnRead = posOnRead[posOnRead <= lenOfInterest] 
    
    # first codon on the read is the flanking
    posOfInterest = (startThr-16)/3  + posOnRead 
    
    reads_table[k, "consistent"] = FALSE
    indexes = c()
    for(i in 1:length(posOfInterest)) {
      resid = posOfInterest[i]
      sPos = posOnRead[i]*3+1
      l = sPos - 3
      readExtract = substr(x, l, l + 8)
      
      if(consistentWithOligo(readExtract, oligo_9NN[resid])) {
        df = rbind(df, c(resid=resid, substr(x, l, l + 8), freq, one_mismatch, freq))
        indexes = c(indexes, nrow(df))
        reads_table[k, "consistent"] = TRUE
      }
    }
    
    if(length(indexes) > 1) {
      df[indexes, "corrected_count"] = freq/length(indexes)
    } else {
      df[indexes, "corrected_count"] = ""
    }
  }
  
  # remove the first row which contain only NA values
  df = df[-1, ]
  # colnames(df) = c("resid", "code", "freq", "one_mismatch", "corrected_count")
  
  # dd = data.table(reads_table)
  # dd %>% group_by(status, consistent) %>% summarize(nr_of_reads=sum(as.numeric(Freq))) %>% arrange(nr_of_reads)
  list(reads_table=reads_table, counts = df, wtCount=wtCount) 
}

saveRunLog <- function(countsDF, runLog, pathOut, set, replicate)
{
  pathOut = paste0(pathOut, "setLogs/")
  dir.create(pathOut, showWarnings = FALSE, recursive = TRUE)
  
  reads_table = countsDF$reads_table
  reads_table$status[which(is.na(reads_table$status))] = ""
  dat_summary = data.table(reads_table) %>% group_by(status, consistent) %>% summarize(nr_of_reads=sum(as.numeric(Freq))) %>% arrange(nr_of_reads)
  
  runLog$nrReadsConsistentWithOligo = sum(dat_summary[dat_summary$consistent == TRUE, "nr_of_reads"])
  runLog$nrMutatedReads = sum(dat_summary[dat_summary$consistent == TRUE & dat_summary$status != "WT", "nr_of_reads"])
  runLog$nrWildTypeReads = countsDF$wtCount
  
  df = t(as.data.frame(runLog))
  colnames(df) = "count"
  logFile = paste(pathOut, paste0(paste0("s", substring(set, 2))), "_rep", replicate-1, ".csv", sep =  '')
  write.csv(df, file=logFile)
  
}


saveCountsInCsv <- function(countsDF, WT_Seq_org, pathOut, set, replicate, ROI) {
  dir.create(pathOut, showWarnings = FALSE, recursive = TRUE)
  wtCount = countsDF$wtCount
  countTable = data.table(countsDF$counts)
  
  countSummary = countTable %>% group_by(resid, genetic_code) %>% summarize(count=sum(as.numeric(count)), 
                                                                            corrected_count=sum(as.numeric(corrected_count)),
                                                                            one_mismatch=all(as.logical(one_mismatch)))
  
  countSummary = countSummary %>% group_by(resid) %>% arrange(count)
  countGropus = group_split(countSummary)
  
  for(i  in 1:length(countGropus)) {
    print(i)
    dat = countGropus[[i]]
    resid = as.numeric(dat[1,1])
    
    if(resid %in% ROI) {
      dat = as.data.frame(dat[, -1])
      dat$site_1 = substring(dat$genetic_code, 1, 3)
      dat$site_2 = substring(dat$genetic_code, 4, 6)
      dat$site_3 = substring(dat$genetic_code, 7, 9)
      
      dat = dat[, c("site_1", "site_2", "site_3", "count", "corrected_count", "one_mismatch") ]
      
      stWT = posOnRef(resid)$start - 3
      wtResid = as.character(subseq(WT_Seq_org, start=stWT, width=9))
      
      dat[nrow(dat) + 1, ] = c(substr(wtResid, 1,3), substr(wtResid, 4,6), substr(wtResid, 7,9), wtCount, "", FALSE)
      dat$corrected_count = ifelse(is.na(dat$corrected_count), "", dat$corrected_count)
      
      dat = addSequencesInOligoWithZeroCount(dat, resid) 
      
      residueFile = paste(pathOut, paste0(paste0("s", substring(set, 2)),"_residue", resid), "_rep", replicate-1, ".csv", sep =  '')
      write.csv(dat, file=residueFile, row.names = FALSE)
    }
  }
}

posOnRef<- function(residue) {
  data.frame(start=16 + residue * 3, end=16 + residue*3 + 2)
}

getRangeOfInterest <- function(st, end, includeFinalFlankingResid) {
  stFlanking = st - 1
  startThr = posOnRef(stFlanking)$start
  
  endFlanking = end  + 1
  endTrim = endThr = posOnRef(endFlanking)$end
  
  if(includeFinalFlankingResid == FALSE)
    endTrim = endThr - 3
  
  list(startThr=startThr, endThr=endThr, endTrim = endTrim, includeFinalFlankingResid=includeFinalFlankingResid)
}

# rangeOfInterest = getRangeOfInterest(st, end, includeFinalFlankingResid) 

trimReadsToRange <- function(tmpGal, genomicRange, WT_Seq_org) {
  endTrim  = genomicRange$endTrim
  startThr = genomicRange$startThr
  
  # trimming
  eCigar = explodeCigarOps(tmpGal@cigar)
  eCigarLength = explodeCigarOpLengths(tmpGal@cigar)
  
  # ends <- end(tmpGal) 
  # 
  # first trim reads such that they just contain the frame of interest ____ solving frameshift problem
  starts = start(tmpGal)
  adjusted_ends = trimmed_starts = rep(NA, length(starts))
  widths = nchar(mcols(tmpGal)$seq)
  
  for (i in 1:length(tmpGal)) {
    s = ifelse(eCigar[[i]][1] == "S", eCigarLength[[i]][1], 0)
    trimmed_starts[i] = s +startThr-starts[i]+1
    adjusted_ends[i] = starts[i] - s + widths[i] - 1
  }
  
  width_ROIs <- endTrim-startThr+1
  indexes = which(trimmed_starts > 0  & adjusted_ends >= endTrim)

  gal = tmpGal[indexes]
  trimmed_starts = trimmed_starts[indexes]
  
  read_seq = subseq(mcols(gal)$seq, start=trimmed_starts, width=width_ROIs)
  
  if(genomicRange$includeFinalFlankingResid == FALSE)
    read_seq = xscat(read_seq, subseq(WT_Seq_org, endTrim+1, endTrim+3))
  
  read_seq
}

count_table <- function(bam_folder, Input_SortedBam, pathOut, st, end, ROI, pathToRef, 
                        set, replicate, includeFinalFlankingResid){
  oligo_9NN = readOligos()
  
  WT_Seq_org <- readDNAStringSet(pathToRef)
  
  runLog = list()
  print(paste0(bam_folder, Input_SortedBam))
  bamfile <- BamFile(paste0(bam_folder, Input_SortedBam))
  print(bamfile)
  tmpGal <- readGAlignments(bamfile, param=ScanBamParam(what=c("seq", "cigar"), simpleCigar = FALSE),
                            use.names=TRUE)
  runLog$nrReadsInBamFile = length(tmpGal)
  
  # discards reads with indels but preserves softclipings
  # tmpGal = tmpGal[-grep("[ID]", tmpGal@cigar)] 
  # runLog$nrReadsAfterRemovingID = length(tmpGal)
  
  # discards reads with N in their sequence
  # tmpGal = tmpGal[-grep("[N]", mcols(tmpGal)$seq)] 
  # runLog$nrReadsAfterRemoving = length(tmpGal)
  
  genomicRange = getRangeOfInterest(st, end, includeFinalFlankingResid)
  
  # retain reads sequenced in the genomic region of interest
  read_seq = trimReadsToRange(tmpGal, genomicRange, WT_Seq_org) 
  runLog$nrReadsCoveringGenomicRangeOfInterest = length(read_seq)
  
  # countsDF_filtered_one_mismatch = doCountingForSet(read_seq, genomicRange, WT_Seq_org, filterOneMismatch = TRUE)
  countsDF = doCountingForSet(read_seq, genomicRange, WT_Seq_org)
  
  saveCountsInCsv(countsDF, WT_Seq_org, pathOut, set, replicate, ROI)
  
  saveRunLog(countsDF, runLog, pathOut, set, replicate)
}
