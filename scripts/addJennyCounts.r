rm(list=ls())

base_folder = "../outputs/csv_files/"
output_base_folder = "../outputs/final_csv_files/"

df = data.frame()
for(condition in c("Gal", "Glu", "Gc", "Grl" )) {
  output_folder = paste0(output_base_folder, condition, "/")
  dir.create(output_folder, showWarnings = FALSE, recursive = TRUE)
  
  fnames = list.files(paste0(base_folder, condition))
  for(fname in fnames) {
    full_fname = paste0(base_folder, condition, "/", fname)
    if(!file.exists(full_fname))
      next
    
    dat1 = read.csv(full_fname)
    
    jenny_base_folder = "../outputs/jenny/"    
    full_fname = paste0(jenny_base_folder, condition, "_count_matrices/", fname)
    dat_j = read.csv(full_fname)
    
    dat1$jenny_count = 0
    for( i in 1:nrow(dat1)){
      index = which(dat_j$site_1 == dat1[i, "site_1"] & dat_j$site_2 == dat1[i, "site_2"]
                    & dat_j$site_3 == dat1[i, "site_3"])
      if(length(index) > 0)
        dat1[i, "jenny_count"] = dat_j[index, "count"]
    }
    
    pear_corr = cor(dat1$count, dat1$jenny_count, method = "pearson")
    spear_corr = cor(dat1$count, dat1$jenny_count, method = "spearman")

    n= nrow(df)
    df[n+1, "fname"] = fname
    df[n+1, "condition"] = condition
    df[n+1, "Spearman correlation"] = spear_corr
    df[n+1, "Pearson correlation"] = pear_corr
    
    write.csv(dat1, file=paste0(output_folder, "/", fname))
  }
}

df = df[order(df$`Spearman correlation`),]
rownames(df) = NULL
df = df[c(1, 4, 3, 2)]

write.csv(df, file="../outputs/final_csv_files/comparison_with_jenny.csv")
