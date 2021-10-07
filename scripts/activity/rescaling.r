
rescaleToWT_STOP <- function(values, stop_value, wt_value){
  (values - stop_value) /(wt_value - stop_value) -1
}
  


act = read.csv("outputs/results/activity_scores.csv")

sets = unique(act$set)


for(s in sets) {
  t = act[act$set == s, ]
  
  stop_value = mean(t$AS[t$mut == "*"],  na.rm=T )
  wt_value = mean(t$AS[t$WT == 1],  na.rm=T )
  
  a = rescaleToWT_STOP(t$AS, stop_value, wt_value)
  stop_value = mean(a[t$mut == "*"],  na.rm=T )
  wt_value = mean(a[t$WT == 1],  na.rm=T )
  
  act[act$set == s, "AS"] = a
}

hist.plot(act)
