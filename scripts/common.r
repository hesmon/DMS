
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