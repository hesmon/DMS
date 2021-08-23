
> # wiritn the rhead
> cat("#!/usr/bin/env bash\n \n") 
#!/usr/bin/env bash
 

> samfixcigar = "java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar"

> # cat("bwa index /home/bahari/SarsCov/Ref_3CL.fasta\n")
> 
> sets = sort(unique(df$Set))

> if(reverse)
+   sets = rev(sets)

> for(set in sets) {
+   folder = sets_to_folders[set]
+   # cat("cd ", folder, " \n", sep='')
+   cat("echo ", set, "-started \n \n \n", sep='')
+    .... [TRUNCATED] 
echo SetR1-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/SetR1_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/SetR1_rep1.sam  >  ../outputs/bam_files_init/Glu/SetR1_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/SetR1_rep1.bam  -o  ../outputs/bam_files_init/Glu/SetR1_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/SetR1_rep1_cigar.bam >  ../outputs/bam_files/Glu/SetR1_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/SetR1_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/setR1_residue149_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/setR1_residue149_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="SetR1_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=140 end=149 ROI=c(140:149) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="SetR1" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/SetR1_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/SetR1_rep2.sam  >  ../outputs/bam_files_init/Glu/SetR1_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/SetR1_rep2.bam  -o  ../outputs/bam_files_init/Glu/SetR1_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/SetR1_rep2_cigar.bam >  ../outputs/bam_files/Glu/SetR1_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/SetR1_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/setR1_residue149_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/setR1_residue149_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="SetR1_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=140 end=149 ROI=c(140:149) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="SetR1" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/SetR1_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/SetR1_rep1.sam  >  ../outputs/bam_files_init/Gal/SetR1_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/SetR1_rep1.bam  -o  ../outputs/bam_files_init/Gal/SetR1_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/SetR1_rep1_cigar.bam >  ../outputs/bam_files/Gal/SetR1_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/SetR1_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/setR1_residue149_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/setR1_residue149_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="SetR1_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=140 end=149 ROI=c(140:149) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="SetR1" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/SetR1_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/SetR1_rep2.sam  >  ../outputs/bam_files_init/Gal/SetR1_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/SetR1_rep2.bam  -o  ../outputs/bam_files_init/Gal/SetR1_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/SetR1_rep2_cigar.bam >  ../outputs/bam_files/Gal/SetR1_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/SetR1_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/setR1_residue149_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/setR1_residue149_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="SetR1_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=140 end=149 ROI=c(140:149) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="SetR1" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/SetR1_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/SetR1_rep1.sam  >  ../outputs/bam_files_init/Gc/SetR1_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/SetR1_rep1.bam  -o  ../outputs/bam_files_init/Gc/SetR1_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/SetR1_rep1_cigar.bam >  ../outputs/bam_files/Gc/SetR1_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/SetR1_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/setR1_residue149_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/setR1_residue149_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="SetR1_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=140 end=149 ROI=c(140:149) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="SetR1" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/SetR1_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/SetR1_rep2.sam  >  ../outputs/bam_files_init/Gc/SetR1_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/SetR1_rep2.bam  -o  ../outputs/bam_files_init/Gc/SetR1_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/SetR1_rep2_cigar.bam >  ../outputs/bam_files/Gc/SetR1_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/SetR1_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/setR1_residue149_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/setR1_residue149_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="SetR1_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=140 end=149 ROI=c(140:149) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="SetR1" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/SetR1_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/SetR1_rep1.sam  >  ../outputs/bam_files_init/Grl/SetR1_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/SetR1_rep1.bam  -o  ../outputs/bam_files_init/Grl/SetR1_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/SetR1_rep1_cigar.bam >  ../outputs/bam_files/Grl/SetR1_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/SetR1_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/setR1_residue149_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/setR1_residue149_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="SetR1_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=140 end=149 ROI=c(140:149) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="SetR1" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/SetR1_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/SetR1_rep2.sam  >  ../outputs/bam_files_init/Grl/SetR1_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/SetR1_rep2.bam  -o  ../outputs/bam_files_init/Grl/SetR1_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/SetR1_rep2_cigar.bam >  ../outputs/bam_files/Grl/SetR1_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/SetR1_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/setR1_residue149_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/setR1_residue149_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="SetR1_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=140 end=149 ROI=c(140:149) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="SetR1" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set9R2-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set9R2_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set9R2_rep1.sam  >  ../outputs/bam_files_init/Glu/Set9R2_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set9R2_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set9R2_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set9R2_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set9R2_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set9R2_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set9R2_residue121_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set9R2_residue121_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set9R2_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=121 end=124 ROI=c(121) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9R2" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set9R2_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set9R2_rep2.sam  >  ../outputs/bam_files_init/Glu/Set9R2_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set9R2_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set9R2_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set9R2_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set9R2_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set9R2_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set9R2_residue121_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set9R2_residue121_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set9R2_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=121 end=124 ROI=c(121) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9R2" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set9R2_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set9R2_rep1.sam  >  ../outputs/bam_files_init/Gal/Set9R2_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set9R2_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set9R2_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set9R2_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set9R2_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set9R2_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set9R2_residue121_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set9R2_residue121_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set9R2_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=121 end=124 ROI=c(121) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9R2" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set9R2_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set9R2_rep2.sam  >  ../outputs/bam_files_init/Gal/Set9R2_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set9R2_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set9R2_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set9R2_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set9R2_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set9R2_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set9R2_residue121_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set9R2_residue121_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set9R2_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=121 end=124 ROI=c(121) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9R2" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set9R2_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set9R2_rep1.sam  >  ../outputs/bam_files_init/Gc/Set9R2_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set9R2_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set9R2_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set9R2_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set9R2_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set9R2_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set9R2_residue121_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set9R2_residue121_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set9R2_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=121 end=124 ROI=c(121) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9R2" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set9R2_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set9R2_rep2.sam  >  ../outputs/bam_files_init/Gc/Set9R2_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set9R2_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set9R2_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set9R2_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set9R2_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set9R2_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set9R2_residue121_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set9R2_residue121_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set9R2_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=121 end=124 ROI=c(121) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9R2" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set9R2_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set9R2_rep1.sam  >  ../outputs/bam_files_init/Grl/Set9R2_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set9R2_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set9R2_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set9R2_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set9R2_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set9R2_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set9R2_residue121_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set9R2_residue121_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set9R2_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=121 end=124 ROI=c(121) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9R2" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set9R2_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set9R2_rep2.sam  >  ../outputs/bam_files_init/Grl/Set9R2_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set9R2_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set9R2_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set9R2_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set9R2_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set9R2_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set9R2_residue121_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set9R2_residue121_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set9R2_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=121 end=124 ROI=c(121) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9R2" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set9R1-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set9R1_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set9R1_rep1.sam  >  ../outputs/bam_files_init/Glu/Set9R1_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set9R1_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set9R1_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set9R1_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set9R1_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set9R1_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set9R1_residue116_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set9R1_residue116_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set9R1_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=116 end=119 ROI=c(116) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9R1" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set9R1_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set9R1_rep2.sam  >  ../outputs/bam_files_init/Glu/Set9R1_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set9R1_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set9R1_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set9R1_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set9R1_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set9R1_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set9R1_residue116_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set9R1_residue116_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set9R1_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=116 end=119 ROI=c(116) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9R1" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set9R1_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set9R1_rep1.sam  >  ../outputs/bam_files_init/Gal/Set9R1_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set9R1_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set9R1_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set9R1_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set9R1_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set9R1_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set9R1_residue116_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set9R1_residue116_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set9R1_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=116 end=119 ROI=c(116) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9R1" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set9R1_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set9R1_rep2.sam  >  ../outputs/bam_files_init/Gal/Set9R1_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set9R1_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set9R1_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set9R1_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set9R1_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set9R1_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set9R1_residue116_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set9R1_residue116_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set9R1_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=116 end=119 ROI=c(116) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9R1" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set9R1_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set9R1_rep1.sam  >  ../outputs/bam_files_init/Gc/Set9R1_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set9R1_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set9R1_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set9R1_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set9R1_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set9R1_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set9R1_residue116_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set9R1_residue116_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set9R1_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=116 end=119 ROI=c(116) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9R1" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set9R1_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set9R1_rep2.sam  >  ../outputs/bam_files_init/Gc/Set9R1_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set9R1_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set9R1_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set9R1_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set9R1_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set9R1_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set9R1_residue116_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set9R1_residue116_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set9R1_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=116 end=119 ROI=c(116) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9R1" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set9R1_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set9R1_rep1.sam  >  ../outputs/bam_files_init/Grl/Set9R1_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set9R1_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set9R1_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set9R1_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set9R1_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set9R1_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set9R1_residue116_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set9R1_residue116_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set9R1_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=116 end=119 ROI=c(116) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9R1" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set9R1_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set9R1_rep2.sam  >  ../outputs/bam_files_init/Grl/Set9R1_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set9R1_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set9R1_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set9R1_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set9R1_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set9R1_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set9R1_residue116_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set9R1_residue116_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set9R1_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=116 end=119 ROI=c(116) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9R1" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set9-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set9_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set9_rep1.sam  >  ../outputs/bam_files_init/Glu/Set9_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set9_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set9_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set9_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set9_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set9_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set9_residue130_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set9_residue130_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set9_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=116 end=130 ROI=c(116:130) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set9_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set9_rep2.sam  >  ../outputs/bam_files_init/Glu/Set9_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set9_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set9_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set9_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set9_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set9_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set9_residue130_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set9_residue130_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set9_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=116 end=130 ROI=c(116:130) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set9_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set9_rep1.sam  >  ../outputs/bam_files_init/Gal/Set9_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set9_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set9_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set9_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set9_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set9_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set9_residue130_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set9_residue130_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set9_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=116 end=130 ROI=c(116:130) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set9_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set9_rep2.sam  >  ../outputs/bam_files_init/Gal/Set9_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set9_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set9_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set9_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set9_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set9_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set9_residue130_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set9_residue130_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set9_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=116 end=130 ROI=c(116:130) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set9_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set9_rep1.sam  >  ../outputs/bam_files_init/Gc/Set9_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set9_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set9_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set9_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set9_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set9_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set9_residue130_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set9_residue130_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set9_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=116 end=130 ROI=c(116:130) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set9_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set9_rep2.sam  >  ../outputs/bam_files_init/Gc/Set9_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set9_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set9_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set9_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set9_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set9_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set9_residue130_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set9_residue130_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set9_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=116 end=130 ROI=c(116:130) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set9_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set9_rep1.sam  >  ../outputs/bam_files_init/Grl/Set9_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set9_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set9_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set9_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set9_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set9_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set9_residue130_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set9_residue130_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set9_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=116 end=130 ROI=c(116:130) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set9_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set9_rep2.sam  >  ../outputs/bam_files_init/Grl/Set9_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set9_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set9_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set9_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set9_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set9_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set9_residue130_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set9_residue130_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set9_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=116 end=130 ROI=c(116:130) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set9" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set8R-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set8R_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set8R_rep1.sam  >  ../outputs/bam_files_init/Glu/Set8R_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set8R_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set8R_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set8R_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set8R_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set8R_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set8R_residue114_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set8R_residue114_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set8R_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=113 end=115 ROI=c(113,114) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set8R" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set8R_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set8R_rep2.sam  >  ../outputs/bam_files_init/Glu/Set8R_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set8R_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set8R_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set8R_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set8R_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set8R_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set8R_residue114_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set8R_residue114_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set8R_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=113 end=115 ROI=c(113,114) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set8R" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set8R_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set8R_rep1.sam  >  ../outputs/bam_files_init/Gal/Set8R_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set8R_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set8R_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set8R_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set8R_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set8R_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set8R_residue114_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set8R_residue114_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set8R_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=113 end=115 ROI=c(113,114) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set8R" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set8R_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set8R_rep2.sam  >  ../outputs/bam_files_init/Gal/Set8R_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set8R_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set8R_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set8R_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set8R_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set8R_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set8R_residue114_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set8R_residue114_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set8R_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=113 end=115 ROI=c(113,114) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set8R" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set8R_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set8R_rep1.sam  >  ../outputs/bam_files_init/Gc/Set8R_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set8R_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set8R_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set8R_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set8R_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set8R_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set8R_residue114_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set8R_residue114_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set8R_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=113 end=115 ROI=c(113,114) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set8R" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set8R_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set8R_rep2.sam  >  ../outputs/bam_files_init/Gc/Set8R_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set8R_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set8R_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set8R_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set8R_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set8R_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set8R_residue114_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set8R_residue114_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set8R_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=113 end=115 ROI=c(113,114) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set8R" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set8R_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set8R_rep1.sam  >  ../outputs/bam_files_init/Grl/Set8R_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set8R_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set8R_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set8R_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set8R_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set8R_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set8R_residue114_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set8R_residue114_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set8R_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=113 end=115 ROI=c(113,114) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set8R" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set8R_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set8R_rep2.sam  >  ../outputs/bam_files_init/Grl/Set8R_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set8R_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set8R_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set8R_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set8R_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set8R_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set8R_residue114_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set8R_residue114_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set8R_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=113 end=115 ROI=c(113,114) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set8R" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set8-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set8_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set8_rep1.sam  >  ../outputs/bam_files_init/Glu/Set8_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set8_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set8_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set8_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set8_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set8_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set8_residue115_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set8_residue115_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set8_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=100 end=115 ROI=c(100:115) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set8" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set8_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set8_rep2.sam  >  ../outputs/bam_files_init/Glu/Set8_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set8_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set8_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set8_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set8_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set8_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set8_residue115_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set8_residue115_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set8_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=100 end=115 ROI=c(100:115) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set8" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set8_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set8_rep1.sam  >  ../outputs/bam_files_init/Gal/Set8_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set8_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set8_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set8_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set8_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set8_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set8_residue115_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set8_residue115_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set8_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=100 end=115 ROI=c(100:115) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set8" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set8_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set8_rep2.sam  >  ../outputs/bam_files_init/Gal/Set8_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set8_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set8_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set8_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set8_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set8_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set8_residue115_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set8_residue115_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set8_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=100 end=115 ROI=c(100:115) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set8" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set8_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set8_rep1.sam  >  ../outputs/bam_files_init/Gc/Set8_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set8_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set8_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set8_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set8_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set8_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set8_residue115_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set8_residue115_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set8_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=100 end=115 ROI=c(100:115) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set8" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set8_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set8_rep2.sam  >  ../outputs/bam_files_init/Gc/Set8_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set8_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set8_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set8_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set8_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set8_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set8_residue115_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set8_residue115_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set8_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=100 end=115 ROI=c(100:115) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set8" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set8_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set8_rep1.sam  >  ../outputs/bam_files_init/Grl/Set8_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set8_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set8_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set8_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set8_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set8_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set8_residue115_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set8_residue115_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set8_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=100 end=115 ROI=c(100:115) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set8" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set8_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set8_rep2.sam  >  ../outputs/bam_files_init/Grl/Set8_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set8_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set8_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set8_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set8_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set8_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set8_residue115_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set8_residue115_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set8_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=100 end=115 ROI=c(100:115) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set8" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set7-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set7_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set7_rep1.sam  >  ../outputs/bam_files_init/Glu/Set7_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set7_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set7_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set7_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set7_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set7_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set7_residue99_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set7_residue99_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set7_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=86 end=99 ROI=c(86:99) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set7" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set7_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set7_rep2.sam  >  ../outputs/bam_files_init/Glu/Set7_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set7_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set7_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set7_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set7_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set7_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set7_residue99_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set7_residue99_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set7_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=86 end=99 ROI=c(86:99) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set7" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set7_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set7_rep1.sam  >  ../outputs/bam_files_init/Gal/Set7_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set7_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set7_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set7_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set7_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set7_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set7_residue99_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set7_residue99_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set7_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=86 end=99 ROI=c(86:99) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set7" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set7_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set7_rep2.sam  >  ../outputs/bam_files_init/Gal/Set7_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set7_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set7_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set7_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set7_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set7_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set7_residue99_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set7_residue99_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set7_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=86 end=99 ROI=c(86:99) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set7" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set7_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set7_rep1.sam  >  ../outputs/bam_files_init/Gc/Set7_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set7_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set7_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set7_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set7_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set7_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set7_residue99_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set7_residue99_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set7_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=86 end=99 ROI=c(86:99) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set7" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set7_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set7_rep2.sam  >  ../outputs/bam_files_init/Gc/Set7_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set7_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set7_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set7_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set7_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set7_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set7_residue99_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set7_residue99_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set7_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=86 end=99 ROI=c(86:99) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set7" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set7_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set7_rep1.sam  >  ../outputs/bam_files_init/Grl/Set7_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set7_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set7_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set7_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set7_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set7_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set7_residue99_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set7_residue99_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set7_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=86 end=99 ROI=c(86:99) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set7" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set7_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set7_rep2.sam  >  ../outputs/bam_files_init/Grl/Set7_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set7_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set7_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set7_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set7_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set7_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set7_residue99_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set7_residue99_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set7_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=86 end=99 ROI=c(86:99) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set7" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set6-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set6_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set6_rep1.sam  >  ../outputs/bam_files_init/Glu/Set6_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set6_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set6_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set6_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set6_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set6_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set6_residue85_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set6_residue85_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set6_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=71 end=85 ROI=c(71:85) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set6" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set6_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set6_rep2.sam  >  ../outputs/bam_files_init/Glu/Set6_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set6_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set6_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set6_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set6_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set6_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set6_residue85_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set6_residue85_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set6_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=71 end=85 ROI=c(71:85) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set6" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set6_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set6_rep1.sam  >  ../outputs/bam_files_init/Gal/Set6_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set6_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set6_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set6_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set6_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set6_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set6_residue85_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set6_residue85_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set6_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=71 end=85 ROI=c(71:85) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set6" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set6_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set6_rep2.sam  >  ../outputs/bam_files_init/Gal/Set6_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set6_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set6_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set6_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set6_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set6_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set6_residue85_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set6_residue85_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set6_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=71 end=85 ROI=c(71:85) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set6" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set6_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set6_rep1.sam  >  ../outputs/bam_files_init/Gc/Set6_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set6_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set6_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set6_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set6_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set6_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set6_residue85_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set6_residue85_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set6_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=71 end=85 ROI=c(71:85) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set6" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set6_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set6_rep2.sam  >  ../outputs/bam_files_init/Gc/Set6_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set6_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set6_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set6_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set6_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set6_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set6_residue85_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set6_residue85_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set6_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=71 end=85 ROI=c(71:85) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set6" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set6_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set6_rep1.sam  >  ../outputs/bam_files_init/Grl/Set6_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set6_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set6_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set6_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set6_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set6_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set6_residue85_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set6_residue85_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set6_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=71 end=85 ROI=c(71:85) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set6" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set6_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set6_rep2.sam  >  ../outputs/bam_files_init/Grl/Set6_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set6_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set6_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set6_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set6_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set6_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set6_residue85_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set6_residue85_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set6_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=71 end=85 ROI=c(71:85) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set6" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set5-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set5_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set5_rep1.sam  >  ../outputs/bam_files_init/Glu/Set5_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set5_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set5_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set5_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set5_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set5_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set5_residue70_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set5_residue70_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set5_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=58 end=70 ROI=c(58:70) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set5" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set5_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set5_rep2.sam  >  ../outputs/bam_files_init/Glu/Set5_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set5_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set5_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set5_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set5_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set5_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set5_residue70_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set5_residue70_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set5_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=58 end=70 ROI=c(58:70) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set5" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set5_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set5_rep1.sam  >  ../outputs/bam_files_init/Gal/Set5_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set5_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set5_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set5_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set5_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set5_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set5_residue70_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set5_residue70_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set5_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=58 end=70 ROI=c(58:70) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set5" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set5_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set5_rep2.sam  >  ../outputs/bam_files_init/Gal/Set5_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set5_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set5_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set5_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set5_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set5_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set5_residue70_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set5_residue70_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set5_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=58 end=70 ROI=c(58:70) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set5" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set5_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set5_rep1.sam  >  ../outputs/bam_files_init/Gc/Set5_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set5_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set5_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set5_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set5_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set5_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set5_residue70_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set5_residue70_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set5_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=58 end=70 ROI=c(58:70) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set5" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set5_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set5_rep2.sam  >  ../outputs/bam_files_init/Gc/Set5_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set5_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set5_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set5_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set5_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set5_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set5_residue70_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set5_residue70_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set5_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=58 end=70 ROI=c(58:70) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set5" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set5_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set5_rep1.sam  >  ../outputs/bam_files_init/Grl/Set5_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set5_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set5_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set5_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set5_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set5_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set5_residue70_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set5_residue70_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set5_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=58 end=70 ROI=c(58:70) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set5" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set5_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set5_rep2.sam  >  ../outputs/bam_files_init/Grl/Set5_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set5_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set5_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set5_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set5_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set5_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set5_residue70_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set5_residue70_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set5_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=58 end=70 ROI=c(58:70) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set5" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set4-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set4_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set4_rep1.sam  >  ../outputs/bam_files_init/Glu/Set4_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set4_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set4_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set4_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set4_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set4_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set4_residue57_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set4_residue57_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set4_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=43 end=57 ROI=c(43:57) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set4" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set4_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set4_rep2.sam  >  ../outputs/bam_files_init/Glu/Set4_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set4_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set4_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set4_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set4_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set4_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set4_residue57_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set4_residue57_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set4_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=43 end=57 ROI=c(43:57) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set4" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set4_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set4_rep1.sam  >  ../outputs/bam_files_init/Gal/Set4_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set4_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set4_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set4_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set4_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set4_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set4_residue57_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set4_residue57_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set4_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=43 end=57 ROI=c(43:57) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set4" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set4_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set4_rep2.sam  >  ../outputs/bam_files_init/Gal/Set4_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set4_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set4_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set4_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set4_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set4_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set4_residue57_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set4_residue57_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set4_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=43 end=57 ROI=c(43:57) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set4" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set4_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set4_rep1.sam  >  ../outputs/bam_files_init/Gc/Set4_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set4_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set4_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set4_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set4_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set4_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set4_residue57_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set4_residue57_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set4_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=43 end=57 ROI=c(43:57) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set4" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set4_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set4_rep2.sam  >  ../outputs/bam_files_init/Gc/Set4_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set4_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set4_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set4_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set4_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set4_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set4_residue57_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set4_residue57_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set4_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=43 end=57 ROI=c(43:57) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set4" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set4_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set4_rep1.sam  >  ../outputs/bam_files_init/Grl/Set4_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set4_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set4_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set4_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set4_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set4_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set4_residue57_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set4_residue57_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set4_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=43 end=57 ROI=c(43:57) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set4" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set4_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set4_rep2.sam  >  ../outputs/bam_files_init/Grl/Set4_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set4_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set4_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set4_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set4_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set4_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set4_residue57_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set4_residue57_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set4_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=43 end=57 ROI=c(43:57) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set4" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set3-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set3_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set3_rep1.sam  >  ../outputs/bam_files_init/Glu/Set3_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set3_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set3_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set3_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set3_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set3_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set3_residue42_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set3_residue42_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set3_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=28 end=42 ROI=c(28:42) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set3" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set3_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set3_rep2.sam  >  ../outputs/bam_files_init/Glu/Set3_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set3_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set3_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set3_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set3_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set3_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set3_residue42_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set3_residue42_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set3_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=28 end=42 ROI=c(28:42) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set3" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set3_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set3_rep1.sam  >  ../outputs/bam_files_init/Gal/Set3_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set3_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set3_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set3_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set3_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set3_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set3_residue42_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set3_residue42_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set3_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=28 end=42 ROI=c(28:42) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set3" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set3_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set3_rep2.sam  >  ../outputs/bam_files_init/Gal/Set3_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set3_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set3_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set3_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set3_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set3_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set3_residue42_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set3_residue42_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set3_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=28 end=42 ROI=c(28:42) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set3" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set3_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set3_rep1.sam  >  ../outputs/bam_files_init/Gc/Set3_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set3_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set3_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set3_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set3_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set3_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set3_residue42_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set3_residue42_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set3_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=28 end=42 ROI=c(28:42) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set3" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set3_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set3_rep2.sam  >  ../outputs/bam_files_init/Gc/Set3_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set3_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set3_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set3_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set3_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set3_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set3_residue42_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set3_residue42_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set3_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=28 end=42 ROI=c(28:42) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set3" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set3_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set3_rep1.sam  >  ../outputs/bam_files_init/Grl/Set3_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set3_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set3_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set3_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set3_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set3_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set3_residue42_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set3_residue42_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set3_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=28 end=42 ROI=c(28:42) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set3" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set3_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set3_rep2.sam  >  ../outputs/bam_files_init/Grl/Set3_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set3_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set3_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set3_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set3_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set3_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set3_residue42_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set3_residue42_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set3_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=28 end=42 ROI=c(28:42) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set3" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set21-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set21_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set21_rep1.sam  >  ../outputs/bam_files_init/Glu/Set21_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set21_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set21_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set21_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set21_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set21_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set21_residue306_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set21_residue306_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set21_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=299 end=306 ROI=c(299:306) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set21" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set21_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set21_rep2.sam  >  ../outputs/bam_files_init/Glu/Set21_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set21_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set21_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set21_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set21_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set21_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set21_residue306_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set21_residue306_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set21_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=299 end=306 ROI=c(299:306) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set21" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set21_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set21_rep1.sam  >  ../outputs/bam_files_init/Gal/Set21_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set21_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set21_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set21_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set21_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set21_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set21_residue306_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set21_residue306_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set21_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=299 end=306 ROI=c(299:306) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set21" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set21_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set21_rep2.sam  >  ../outputs/bam_files_init/Gal/Set21_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set21_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set21_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set21_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set21_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set21_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set21_residue306_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set21_residue306_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set21_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=299 end=306 ROI=c(299:306) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set21" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set21_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set21_rep1.sam  >  ../outputs/bam_files_init/Gc/Set21_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set21_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set21_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set21_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set21_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set21_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set21_residue306_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set21_residue306_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set21_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=299 end=306 ROI=c(299:306) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set21" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set21_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set21_rep2.sam  >  ../outputs/bam_files_init/Gc/Set21_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set21_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set21_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set21_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set21_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set21_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set21_residue306_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set21_residue306_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set21_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=299 end=306 ROI=c(299:306) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set21" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set21_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set21_rep1.sam  >  ../outputs/bam_files_init/Grl/Set21_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set21_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set21_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set21_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set21_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set21_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set21_residue306_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set21_residue306_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set21_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=299 end=306 ROI=c(299:306) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set21" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set21_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set21_rep2.sam  >  ../outputs/bam_files_init/Grl/Set21_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set21_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set21_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set21_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set21_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set21_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set21_residue306_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set21_residue306_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set21_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=299 end=306 ROI=c(299:306) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set21" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set20-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set20_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set20_rep1.sam  >  ../outputs/bam_files_init/Glu/Set20_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set20_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set20_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set20_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set20_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set20_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set20_residue298_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set20_residue298_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set20_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=288 end=298 ROI=c(288:298) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set20" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set20_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set20_rep2.sam  >  ../outputs/bam_files_init/Glu/Set20_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set20_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set20_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set20_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set20_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set20_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set20_residue298_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set20_residue298_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set20_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=288 end=298 ROI=c(288:298) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set20" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set20_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set20_rep1.sam  >  ../outputs/bam_files_init/Gal/Set20_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set20_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set20_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set20_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set20_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set20_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set20_residue298_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set20_residue298_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set20_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=288 end=298 ROI=c(288:298) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set20" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set20_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set20_rep2.sam  >  ../outputs/bam_files_init/Gal/Set20_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set20_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set20_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set20_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set20_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set20_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set20_residue298_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set20_residue298_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set20_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=288 end=298 ROI=c(288:298) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set20" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set20_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set20_rep1.sam  >  ../outputs/bam_files_init/Gc/Set20_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set20_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set20_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set20_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set20_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set20_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set20_residue298_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set20_residue298_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set20_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=288 end=298 ROI=c(288:298) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set20" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set20_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set20_rep2.sam  >  ../outputs/bam_files_init/Gc/Set20_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set20_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set20_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set20_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set20_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set20_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set20_residue298_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set20_residue298_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set20_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=288 end=298 ROI=c(288:298) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set20" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set20_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set20_rep1.sam  >  ../outputs/bam_files_init/Grl/Set20_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set20_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set20_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set20_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set20_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set20_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set20_residue298_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set20_residue298_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set20_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=288 end=298 ROI=c(288:298) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set20" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set20_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set20_rep2.sam  >  ../outputs/bam_files_init/Grl/Set20_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set20_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set20_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set20_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set20_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set20_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set20_residue298_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set20_residue298_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set20_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=288 end=298 ROI=c(288:298) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set20" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set2-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set2_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set2_rep1.sam  >  ../outputs/bam_files_init/Glu/Set2_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set2_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set2_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set2_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set2_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set2_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set2_residue27_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set2_residue27_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set2_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=13 end=27 ROI=c(13:27) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set2" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set2_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set2_rep2.sam  >  ../outputs/bam_files_init/Glu/Set2_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set2_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set2_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set2_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set2_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set2_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set2_residue27_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set2_residue27_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set2_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=13 end=27 ROI=c(13:27) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set2" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set2_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set2_rep1.sam  >  ../outputs/bam_files_init/Gal/Set2_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set2_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set2_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set2_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set2_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set2_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set2_residue27_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set2_residue27_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set2_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=13 end=27 ROI=c(13:27) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set2" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set2_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set2_rep2.sam  >  ../outputs/bam_files_init/Gal/Set2_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set2_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set2_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set2_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set2_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set2_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set2_residue27_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set2_residue27_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set2_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=13 end=27 ROI=c(13:27) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set2" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set2_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set2_rep1.sam  >  ../outputs/bam_files_init/Gc/Set2_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set2_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set2_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set2_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set2_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set2_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set2_residue27_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set2_residue27_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set2_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=13 end=27 ROI=c(13:27) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set2" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set2_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set2_rep2.sam  >  ../outputs/bam_files_init/Gc/Set2_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set2_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set2_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set2_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set2_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set2_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set2_residue27_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set2_residue27_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set2_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=13 end=27 ROI=c(13:27) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set2" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set2_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set2_rep1.sam  >  ../outputs/bam_files_init/Grl/Set2_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set2_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set2_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set2_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set2_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set2_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set2_residue27_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set2_residue27_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set2_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=13 end=27 ROI=c(13:27) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set2" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set2_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set2_rep2.sam  >  ../outputs/bam_files_init/Grl/Set2_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set2_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set2_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set2_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set2_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set2_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set2_residue27_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set2_residue27_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set2_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=13 end=27 ROI=c(13:27) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set2" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set19-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set19_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set19_rep1.sam  >  ../outputs/bam_files_init/Glu/Set19_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set19_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set19_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set19_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set19_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set19_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set19_residue287_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set19_residue287_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set19_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=273 end=287 ROI=c(273:287) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set19" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set19_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set19_rep2.sam  >  ../outputs/bam_files_init/Glu/Set19_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set19_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set19_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set19_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set19_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set19_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set19_residue287_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set19_residue287_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set19_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=273 end=287 ROI=c(273:287) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set19" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set19_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set19_rep1.sam  >  ../outputs/bam_files_init/Gal/Set19_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set19_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set19_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set19_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set19_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set19_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set19_residue287_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set19_residue287_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set19_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=273 end=287 ROI=c(273:287) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set19" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set19_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set19_rep2.sam  >  ../outputs/bam_files_init/Gal/Set19_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set19_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set19_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set19_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set19_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set19_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set19_residue287_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set19_residue287_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set19_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=273 end=287 ROI=c(273:287) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set19" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set19_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set19_rep1.sam  >  ../outputs/bam_files_init/Gc/Set19_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set19_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set19_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set19_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set19_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set19_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set19_residue287_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set19_residue287_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set19_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=273 end=287 ROI=c(273:287) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set19" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set19_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set19_rep2.sam  >  ../outputs/bam_files_init/Gc/Set19_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set19_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set19_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set19_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set19_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set19_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set19_residue287_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set19_residue287_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set19_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=273 end=287 ROI=c(273:287) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set19" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set19_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set19_rep1.sam  >  ../outputs/bam_files_init/Grl/Set19_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set19_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set19_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set19_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set19_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set19_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set19_residue287_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set19_residue287_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set19_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=273 end=287 ROI=c(273:287) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set19" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set19_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set19_rep2.sam  >  ../outputs/bam_files_init/Grl/Set19_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set19_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set19_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set19_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set19_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set19_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set19_residue287_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set19_residue287_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set19_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=273 end=287 ROI=c(273:287) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set19" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set18-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set18_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set18_rep1.sam  >  ../outputs/bam_files_init/Glu/Set18_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set18_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set18_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set18_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set18_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set18_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set18_residue272_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set18_residue272_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set18_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=258 end=272 ROI=c(258:272) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set18" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set18_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set18_rep2.sam  >  ../outputs/bam_files_init/Glu/Set18_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set18_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set18_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set18_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set18_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set18_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set18_residue272_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set18_residue272_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set18_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=258 end=272 ROI=c(258:272) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set18" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set18_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set18_rep1.sam  >  ../outputs/bam_files_init/Gal/Set18_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set18_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set18_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set18_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set18_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set18_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set18_residue272_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set18_residue272_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set18_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=258 end=272 ROI=c(258:272) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set18" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set18_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set18_rep2.sam  >  ../outputs/bam_files_init/Gal/Set18_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set18_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set18_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set18_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set18_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set18_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set18_residue272_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set18_residue272_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set18_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=258 end=272 ROI=c(258:272) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set18" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set18_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set18_rep1.sam  >  ../outputs/bam_files_init/Gc/Set18_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set18_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set18_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set18_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set18_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set18_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set18_residue272_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set18_residue272_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set18_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=258 end=272 ROI=c(258:272) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set18" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set18_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set18_rep2.sam  >  ../outputs/bam_files_init/Gc/Set18_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set18_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set18_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set18_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set18_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set18_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set18_residue272_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set18_residue272_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set18_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=258 end=272 ROI=c(258:272) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set18" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set18_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set18_rep1.sam  >  ../outputs/bam_files_init/Grl/Set18_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set18_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set18_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set18_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set18_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set18_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set18_residue272_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set18_residue272_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set18_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=258 end=272 ROI=c(258:272) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set18" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set18_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set18_rep2.sam  >  ../outputs/bam_files_init/Grl/Set18_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set18_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set18_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set18_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set18_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set18_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set18_residue272_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set18_residue272_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set18_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=258 end=272 ROI=c(258:272) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set18" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set17-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set17_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set17_rep1.sam  >  ../outputs/bam_files_init/Glu/Set17_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set17_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set17_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set17_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set17_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set17_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set17_residue257_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set17_residue257_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set17_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=243 end=257 ROI=c(243:257) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set17" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set17_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set17_rep2.sam  >  ../outputs/bam_files_init/Glu/Set17_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set17_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set17_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set17_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set17_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set17_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set17_residue257_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set17_residue257_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set17_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=243 end=257 ROI=c(243:257) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set17" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set17_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set17_rep1.sam  >  ../outputs/bam_files_init/Gal/Set17_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set17_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set17_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set17_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set17_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set17_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set17_residue257_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set17_residue257_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set17_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=243 end=257 ROI=c(243:257) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set17" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set17_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set17_rep2.sam  >  ../outputs/bam_files_init/Gal/Set17_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set17_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set17_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set17_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set17_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set17_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set17_residue257_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set17_residue257_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set17_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=243 end=257 ROI=c(243:257) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set17" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set17_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set17_rep1.sam  >  ../outputs/bam_files_init/Gc/Set17_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set17_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set17_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set17_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set17_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set17_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set17_residue257_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set17_residue257_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set17_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=243 end=257 ROI=c(243:257) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set17" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set17_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set17_rep2.sam  >  ../outputs/bam_files_init/Gc/Set17_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set17_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set17_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set17_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set17_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set17_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set17_residue257_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set17_residue257_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set17_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=243 end=257 ROI=c(243:257) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set17" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set17_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set17_rep1.sam  >  ../outputs/bam_files_init/Grl/Set17_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set17_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set17_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set17_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set17_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set17_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set17_residue257_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set17_residue257_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set17_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=243 end=257 ROI=c(243:257) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set17" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set17_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set17_rep2.sam  >  ../outputs/bam_files_init/Grl/Set17_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set17_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set17_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set17_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set17_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set17_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set17_residue257_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set17_residue257_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set17_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=243 end=257 ROI=c(243:257) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set17" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set16R-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set16R_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set16R_rep1.sam  >  ../outputs/bam_files_init/Glu/Set16R_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set16R_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set16R_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set16R_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set16R_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set16R_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set16R_residue233_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set16R_residue233_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set16R_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=233 end=236 ROI=c(233) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set16R" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set16R_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set16R_rep2.sam  >  ../outputs/bam_files_init/Glu/Set16R_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set16R_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set16R_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set16R_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set16R_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set16R_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set16R_residue233_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set16R_residue233_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set16R_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=233 end=236 ROI=c(233) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set16R" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set16R_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set16R_rep1.sam  >  ../outputs/bam_files_init/Gal/Set16R_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set16R_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set16R_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set16R_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set16R_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set16R_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set16R_residue233_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set16R_residue233_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set16R_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=233 end=236 ROI=c(233) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set16R" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set16R_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set16R_rep2.sam  >  ../outputs/bam_files_init/Gal/Set16R_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set16R_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set16R_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set16R_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set16R_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set16R_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set16R_residue233_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set16R_residue233_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set16R_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=233 end=236 ROI=c(233) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set16R" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set16R_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set16R_rep1.sam  >  ../outputs/bam_files_init/Gc/Set16R_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set16R_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set16R_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set16R_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set16R_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set16R_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set16R_residue233_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set16R_residue233_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set16R_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=233 end=236 ROI=c(233) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set16R" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set16R_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set16R_rep2.sam  >  ../outputs/bam_files_init/Gc/Set16R_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set16R_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set16R_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set16R_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set16R_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set16R_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set16R_residue233_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set16R_residue233_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set16R_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=233 end=236 ROI=c(233) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set16R" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set16R_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set16R_rep1.sam  >  ../outputs/bam_files_init/Grl/Set16R_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set16R_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set16R_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set16R_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set16R_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set16R_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set16R_residue233_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set16R_residue233_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set16R_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=233 end=236 ROI=c(233) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set16R" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set16R_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set16R_rep2.sam  >  ../outputs/bam_files_init/Grl/Set16R_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set16R_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set16R_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set16R_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set16R_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set16R_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set16R_residue233_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set16R_residue233_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set16R_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=233 end=236 ROI=c(233) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set16R" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set16-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set16_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set16_rep1.sam  >  ../outputs/bam_files_init/Glu/Set16_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set16_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set16_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set16_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set16_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set16_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set16_residue242_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set16_residue242_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set16_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=228 end=242 ROI=c(228:242) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set16" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set16_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set16_rep2.sam  >  ../outputs/bam_files_init/Glu/Set16_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set16_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set16_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set16_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set16_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set16_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set16_residue242_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set16_residue242_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set16_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=228 end=242 ROI=c(228:242) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set16" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set16_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set16_rep1.sam  >  ../outputs/bam_files_init/Gal/Set16_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set16_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set16_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set16_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set16_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set16_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set16_residue242_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set16_residue242_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set16_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=228 end=242 ROI=c(228:242) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set16" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set16_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set16_rep2.sam  >  ../outputs/bam_files_init/Gal/Set16_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set16_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set16_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set16_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set16_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set16_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set16_residue242_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set16_residue242_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set16_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=228 end=242 ROI=c(228:242) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set16" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set16_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set16_rep1.sam  >  ../outputs/bam_files_init/Gc/Set16_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set16_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set16_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set16_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set16_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set16_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set16_residue242_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set16_residue242_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set16_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=228 end=242 ROI=c(228:242) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set16" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set16_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set16_rep2.sam  >  ../outputs/bam_files_init/Gc/Set16_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set16_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set16_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set16_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set16_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set16_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set16_residue242_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set16_residue242_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set16_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=228 end=242 ROI=c(228:242) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set16" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set16_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set16_rep1.sam  >  ../outputs/bam_files_init/Grl/Set16_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set16_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set16_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set16_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set16_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set16_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set16_residue242_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set16_residue242_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set16_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=228 end=242 ROI=c(228:242) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set16" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set16_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set16_rep2.sam  >  ../outputs/bam_files_init/Grl/Set16_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set16_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set16_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set16_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set16_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set16_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set16_residue242_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set16_residue242_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set16_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=228 end=242 ROI=c(228:242) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set16" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set15-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set15_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set15_rep1.sam  >  ../outputs/bam_files_init/Glu/Set15_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set15_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set15_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set15_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set15_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set15_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set15_residue227_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set15_residue227_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set15_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=212 end=227 ROI=c(212:227) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set15" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set15_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set15_rep2.sam  >  ../outputs/bam_files_init/Glu/Set15_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set15_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set15_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set15_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set15_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set15_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set15_residue227_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set15_residue227_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set15_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=212 end=227 ROI=c(212:227) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set15" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set15_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set15_rep1.sam  >  ../outputs/bam_files_init/Gal/Set15_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set15_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set15_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set15_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set15_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set15_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set15_residue227_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set15_residue227_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set15_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=212 end=227 ROI=c(212:227) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set15" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set15_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set15_rep2.sam  >  ../outputs/bam_files_init/Gal/Set15_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set15_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set15_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set15_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set15_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set15_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set15_residue227_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set15_residue227_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set15_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=212 end=227 ROI=c(212:227) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set15" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set15_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set15_rep1.sam  >  ../outputs/bam_files_init/Gc/Set15_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set15_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set15_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set15_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set15_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set15_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set15_residue227_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set15_residue227_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set15_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=212 end=227 ROI=c(212:227) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set15" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set15_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set15_rep2.sam  >  ../outputs/bam_files_init/Gc/Set15_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set15_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set15_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set15_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set15_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set15_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set15_residue227_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set15_residue227_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set15_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=212 end=227 ROI=c(212:227) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set15" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set15_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set15_rep1.sam  >  ../outputs/bam_files_init/Grl/Set15_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set15_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set15_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set15_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set15_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set15_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set15_residue227_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set15_residue227_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set15_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=212 end=227 ROI=c(212:227) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set15" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set15_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set15_rep2.sam  >  ../outputs/bam_files_init/Grl/Set15_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set15_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set15_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set15_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set15_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set15_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set15_residue227_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set15_residue227_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set15_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=212 end=227 ROI=c(212:227) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set15" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set14R-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set14R_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set14R_rep1.sam  >  ../outputs/bam_files_init/Glu/Set14R_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set14R_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set14R_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set14R_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set14R_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set14R_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set14R_residue199_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set14R_residue199_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set14R_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=196 end=199 ROI=c(196,198,199) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set14R" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set14R_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set14R_rep2.sam  >  ../outputs/bam_files_init/Glu/Set14R_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set14R_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set14R_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set14R_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set14R_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set14R_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set14R_residue199_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set14R_residue199_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set14R_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=196 end=199 ROI=c(196,198,199) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set14R" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set14R_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set14R_rep1.sam  >  ../outputs/bam_files_init/Gal/Set14R_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set14R_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set14R_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set14R_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set14R_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set14R_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set14R_residue199_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set14R_residue199_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set14R_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=196 end=199 ROI=c(196,198,199) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set14R" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set14R_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set14R_rep2.sam  >  ../outputs/bam_files_init/Gal/Set14R_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set14R_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set14R_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set14R_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set14R_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set14R_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set14R_residue199_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set14R_residue199_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set14R_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=196 end=199 ROI=c(196,198,199) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set14R" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set14R_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set14R_rep1.sam  >  ../outputs/bam_files_init/Gc/Set14R_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set14R_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set14R_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set14R_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set14R_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set14R_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set14R_residue199_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set14R_residue199_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set14R_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=196 end=199 ROI=c(196,198,199) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set14R" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set14R_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set14R_rep2.sam  >  ../outputs/bam_files_init/Gc/Set14R_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set14R_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set14R_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set14R_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set14R_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set14R_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set14R_residue199_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set14R_residue199_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set14R_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=196 end=199 ROI=c(196,198,199) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set14R" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set14R_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set14R_rep1.sam  >  ../outputs/bam_files_init/Grl/Set14R_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set14R_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set14R_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set14R_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set14R_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set14R_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set14R_residue199_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set14R_residue199_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set14R_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=196 end=199 ROI=c(196,198,199) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set14R" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set14R_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set14R_rep2.sam  >  ../outputs/bam_files_init/Grl/Set14R_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set14R_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set14R_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set14R_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set14R_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set14R_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set14R_residue199_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set14R_residue199_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set14R_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=196 end=199 ROI=c(196,198,199) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set14R" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set14-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set14_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set14_rep1.sam  >  ../outputs/bam_files_init/Glu/Set14_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set14_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set14_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set14_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set14_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set14_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set14_residue211_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set14_residue211_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set14_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=196 end=211 ROI=c(196:211) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set14" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set14_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set14_rep2.sam  >  ../outputs/bam_files_init/Glu/Set14_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set14_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set14_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set14_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set14_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set14_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set14_residue211_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set14_residue211_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set14_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=196 end=211 ROI=c(196:211) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set14" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set14_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set14_rep1.sam  >  ../outputs/bam_files_init/Gal/Set14_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set14_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set14_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set14_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set14_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set14_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set14_residue211_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set14_residue211_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set14_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=196 end=211 ROI=c(196:211) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set14" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set14_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set14_rep2.sam  >  ../outputs/bam_files_init/Gal/Set14_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set14_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set14_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set14_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set14_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set14_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set14_residue211_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set14_residue211_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set14_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=196 end=211 ROI=c(196:211) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set14" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set14_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set14_rep1.sam  >  ../outputs/bam_files_init/Gc/Set14_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set14_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set14_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set14_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set14_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set14_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set14_residue211_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set14_residue211_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set14_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=196 end=211 ROI=c(196:211) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set14" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set14_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set14_rep2.sam  >  ../outputs/bam_files_init/Gc/Set14_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set14_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set14_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set14_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set14_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set14_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set14_residue211_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set14_residue211_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set14_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=196 end=211 ROI=c(196:211) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set14" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set14_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set14_rep1.sam  >  ../outputs/bam_files_init/Grl/Set14_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set14_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set14_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set14_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set14_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set14_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set14_residue211_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set14_residue211_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set14_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=196 end=211 ROI=c(196:211) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set14" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set14_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set14_rep2.sam  >  ../outputs/bam_files_init/Grl/Set14_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set14_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set14_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set14_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set14_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set14_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set14_residue211_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set14_residue211_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set14_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=196 end=211 ROI=c(196:211) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set14" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set13R2-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set13R2_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set13R2_rep1.sam  >  ../outputs/bam_files_init/Glu/Set13R2_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set13R2_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set13R2_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set13R2_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set13R2_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set13R2_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set13R2_residue187_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set13R2_residue187_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set13R2_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=187 end=189 ROI=c(187) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13R2" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set13R2_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set13R2_rep2.sam  >  ../outputs/bam_files_init/Glu/Set13R2_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set13R2_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set13R2_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set13R2_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set13R2_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set13R2_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set13R2_residue187_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set13R2_residue187_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set13R2_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=187 end=189 ROI=c(187) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13R2" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set13R2_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set13R2_rep1.sam  >  ../outputs/bam_files_init/Gal/Set13R2_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set13R2_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set13R2_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set13R2_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set13R2_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set13R2_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set13R2_residue187_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set13R2_residue187_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set13R2_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=187 end=189 ROI=c(187) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13R2" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set13R2_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set13R2_rep2.sam  >  ../outputs/bam_files_init/Gal/Set13R2_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set13R2_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set13R2_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set13R2_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set13R2_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set13R2_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set13R2_residue187_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set13R2_residue187_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set13R2_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=187 end=189 ROI=c(187) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13R2" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set13R2_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set13R2_rep1.sam  >  ../outputs/bam_files_init/Gc/Set13R2_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set13R2_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set13R2_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set13R2_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set13R2_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set13R2_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set13R2_residue187_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set13R2_residue187_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set13R2_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=187 end=189 ROI=c(187) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13R2" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set13R2_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set13R2_rep2.sam  >  ../outputs/bam_files_init/Gc/Set13R2_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set13R2_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set13R2_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set13R2_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set13R2_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set13R2_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set13R2_residue187_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set13R2_residue187_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set13R2_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=187 end=189 ROI=c(187) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13R2" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set13R2_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set13R2_rep1.sam  >  ../outputs/bam_files_init/Grl/Set13R2_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set13R2_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set13R2_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set13R2_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set13R2_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set13R2_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set13R2_residue187_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set13R2_residue187_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set13R2_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=187 end=189 ROI=c(187) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13R2" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set13R2_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set13R2_rep2.sam  >  ../outputs/bam_files_init/Grl/Set13R2_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set13R2_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set13R2_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set13R2_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set13R2_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set13R2_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set13R2_residue187_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set13R2_residue187_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set13R2_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=187 end=189 ROI=c(187) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13R2" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set13R1-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set13R1_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set13R1_rep1.sam  >  ../outputs/bam_files_init/Glu/Set13R1_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set13R1_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set13R1_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set13R1_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set13R1_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set13R1_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set13R1_residue180_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set13R1_residue180_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set13R1_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=180 end=183 ROI=c(180) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13R1" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set13R1_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set13R1_rep2.sam  >  ../outputs/bam_files_init/Glu/Set13R1_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set13R1_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set13R1_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set13R1_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set13R1_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set13R1_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set13R1_residue180_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set13R1_residue180_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set13R1_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=180 end=183 ROI=c(180) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13R1" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set13R1_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set13R1_rep1.sam  >  ../outputs/bam_files_init/Gal/Set13R1_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set13R1_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set13R1_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set13R1_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set13R1_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set13R1_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set13R1_residue180_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set13R1_residue180_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set13R1_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=180 end=183 ROI=c(180) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13R1" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set13R1_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set13R1_rep2.sam  >  ../outputs/bam_files_init/Gal/Set13R1_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set13R1_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set13R1_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set13R1_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set13R1_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set13R1_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set13R1_residue180_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set13R1_residue180_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set13R1_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=180 end=183 ROI=c(180) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13R1" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set13R1_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set13R1_rep1.sam  >  ../outputs/bam_files_init/Gc/Set13R1_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set13R1_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set13R1_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set13R1_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set13R1_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set13R1_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set13R1_residue180_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set13R1_residue180_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set13R1_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=180 end=183 ROI=c(180) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13R1" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set13R1_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set13R1_rep2.sam  >  ../outputs/bam_files_init/Gc/Set13R1_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set13R1_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set13R1_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set13R1_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set13R1_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set13R1_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set13R1_residue180_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set13R1_residue180_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set13R1_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=180 end=183 ROI=c(180) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13R1" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set13R1_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set13R1_rep1.sam  >  ../outputs/bam_files_init/Grl/Set13R1_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set13R1_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set13R1_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set13R1_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set13R1_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set13R1_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set13R1_residue180_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set13R1_residue180_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set13R1_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=180 end=183 ROI=c(180) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13R1" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set13R1_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set13R1_rep2.sam  >  ../outputs/bam_files_init/Grl/Set13R1_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set13R1_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set13R1_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set13R1_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set13R1_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set13R1_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set13R1_residue180_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set13R1_residue180_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set13R1_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=180 end=183 ROI=c(180) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13R1" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set13-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set13_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set13_rep1.sam  >  ../outputs/bam_files_init/Glu/Set13_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set13_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set13_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set13_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set13_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set13_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set13_residue195_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set13_residue195_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set13_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=180 end=195 ROI=c(180:195) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set13_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set13_rep2.sam  >  ../outputs/bam_files_init/Glu/Set13_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set13_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set13_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set13_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set13_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set13_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set13_residue195_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set13_residue195_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set13_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=180 end=195 ROI=c(180:195) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set13_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set13_rep1.sam  >  ../outputs/bam_files_init/Gal/Set13_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set13_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set13_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set13_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set13_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set13_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set13_residue195_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set13_residue195_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set13_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=180 end=195 ROI=c(180:195) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set13_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set13_rep2.sam  >  ../outputs/bam_files_init/Gal/Set13_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set13_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set13_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set13_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set13_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set13_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set13_residue195_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set13_residue195_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set13_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=180 end=195 ROI=c(180:195) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set13_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set13_rep1.sam  >  ../outputs/bam_files_init/Gc/Set13_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set13_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set13_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set13_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set13_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set13_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set13_residue195_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set13_residue195_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set13_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=180 end=195 ROI=c(180:195) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set13_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set13_rep2.sam  >  ../outputs/bam_files_init/Gc/Set13_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set13_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set13_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set13_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set13_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set13_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set13_residue195_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set13_residue195_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set13_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=180 end=195 ROI=c(180:195) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set13_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set13_rep1.sam  >  ../outputs/bam_files_init/Grl/Set13_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set13_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set13_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set13_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set13_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set13_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set13_residue195_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set13_residue195_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set13_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=180 end=195 ROI=c(180:195) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set13_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set13_rep2.sam  >  ../outputs/bam_files_init/Grl/Set13_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set13_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set13_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set13_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set13_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set13_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set13_residue195_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set13_residue195_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set13_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=180 end=195 ROI=c(180:195) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set13" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set12-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set12_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set12_rep1.sam  >  ../outputs/bam_files_init/Glu/Set12_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set12_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set12_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set12_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set12_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set12_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set12_residue179_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set12_residue179_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set12_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=165 end=179 ROI=c(165:179) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set12" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set12_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set12_rep2.sam  >  ../outputs/bam_files_init/Glu/Set12_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set12_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set12_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set12_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set12_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set12_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set12_residue179_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set12_residue179_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set12_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=165 end=179 ROI=c(165:179) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set12" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set12_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set12_rep1.sam  >  ../outputs/bam_files_init/Gal/Set12_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set12_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set12_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set12_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set12_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set12_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set12_residue179_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set12_residue179_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set12_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=165 end=179 ROI=c(165:179) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set12" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set12_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set12_rep2.sam  >  ../outputs/bam_files_init/Gal/Set12_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set12_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set12_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set12_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set12_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set12_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set12_residue179_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set12_residue179_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set12_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=165 end=179 ROI=c(165:179) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set12" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set12_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set12_rep1.sam  >  ../outputs/bam_files_init/Gc/Set12_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set12_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set12_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set12_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set12_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set12_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set12_residue179_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set12_residue179_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set12_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=165 end=179 ROI=c(165:179) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set12" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set12_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set12_rep2.sam  >  ../outputs/bam_files_init/Gc/Set12_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set12_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set12_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set12_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set12_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set12_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set12_residue179_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set12_residue179_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set12_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=165 end=179 ROI=c(165:179) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set12" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set12_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set12_rep1.sam  >  ../outputs/bam_files_init/Grl/Set12_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set12_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set12_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set12_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set12_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set12_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set12_residue179_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set12_residue179_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set12_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=165 end=179 ROI=c(165:179) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set12" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set12_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set12_rep2.sam  >  ../outputs/bam_files_init/Grl/Set12_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set12_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set12_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set12_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set12_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set12_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set12_residue179_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set12_residue179_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set12_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=165 end=179 ROI=c(165:179) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set12" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set11-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set11_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set11_rep1.sam  >  ../outputs/bam_files_init/Glu/Set11_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set11_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set11_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set11_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set11_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set11_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set11_residue164_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set11_residue164_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set11_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=150 end=164 ROI=c(150:164) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set11" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set11_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set11_rep2.sam  >  ../outputs/bam_files_init/Glu/Set11_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set11_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set11_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set11_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set11_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set11_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set11_residue164_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set11_residue164_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set11_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=150 end=164 ROI=c(150:164) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set11" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set11_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set11_rep1.sam  >  ../outputs/bam_files_init/Gal/Set11_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set11_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set11_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set11_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set11_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set11_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set11_residue164_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set11_residue164_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set11_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=150 end=164 ROI=c(150:164) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set11" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set11_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set11_rep2.sam  >  ../outputs/bam_files_init/Gal/Set11_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set11_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set11_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set11_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set11_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set11_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set11_residue164_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set11_residue164_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set11_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=150 end=164 ROI=c(150:164) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set11" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set11_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set11_rep1.sam  >  ../outputs/bam_files_init/Gc/Set11_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set11_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set11_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set11_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set11_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set11_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set11_residue164_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set11_residue164_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set11_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=150 end=164 ROI=c(150:164) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set11" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set11_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set11_rep2.sam  >  ../outputs/bam_files_init/Gc/Set11_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set11_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set11_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set11_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set11_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set11_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set11_residue164_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set11_residue164_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set11_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=150 end=164 ROI=c(150:164) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set11" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set11_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set11_rep1.sam  >  ../outputs/bam_files_init/Grl/Set11_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set11_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set11_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set11_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set11_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set11_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set11_residue164_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set11_residue164_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set11_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=150 end=164 ROI=c(150:164) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set11" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set11_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set11_rep2.sam  >  ../outputs/bam_files_init/Grl/Set11_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set11_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set11_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set11_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set11_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set11_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set11_residue164_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set11_residue164_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set11_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=150 end=164 ROI=c(150:164) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set11" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set10R2-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set10R2_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set10R2_rep1.sam  >  ../outputs/bam_files_init/Glu/Set10R2_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set10R2_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set10R2_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set10R2_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set10R2_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set10R2_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set10R2_residue138_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set10R2_residue138_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set10R2_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=138 end=141 ROI=c(138) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10R2" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set10R2_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set10R2_rep2.sam  >  ../outputs/bam_files_init/Glu/Set10R2_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set10R2_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set10R2_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set10R2_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set10R2_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set10R2_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set10R2_residue138_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set10R2_residue138_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set10R2_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=138 end=141 ROI=c(138) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10R2" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set10R2_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set10R2_rep1.sam  >  ../outputs/bam_files_init/Gal/Set10R2_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set10R2_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set10R2_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set10R2_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set10R2_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set10R2_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set10R2_residue138_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set10R2_residue138_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set10R2_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=138 end=141 ROI=c(138) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10R2" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set10R2_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set10R2_rep2.sam  >  ../outputs/bam_files_init/Gal/Set10R2_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set10R2_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set10R2_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set10R2_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set10R2_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set10R2_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set10R2_residue138_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set10R2_residue138_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set10R2_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=138 end=141 ROI=c(138) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10R2" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set10R2_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set10R2_rep1.sam  >  ../outputs/bam_files_init/Gc/Set10R2_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set10R2_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set10R2_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set10R2_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set10R2_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set10R2_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set10R2_residue138_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set10R2_residue138_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set10R2_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=138 end=141 ROI=c(138) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10R2" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set10R2_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set10R2_rep2.sam  >  ../outputs/bam_files_init/Gc/Set10R2_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set10R2_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set10R2_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set10R2_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set10R2_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set10R2_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set10R2_residue138_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set10R2_residue138_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set10R2_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=138 end=141 ROI=c(138) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10R2" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set10R2_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set10R2_rep1.sam  >  ../outputs/bam_files_init/Grl/Set10R2_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set10R2_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set10R2_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set10R2_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set10R2_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set10R2_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set10R2_residue138_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set10R2_residue138_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set10R2_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=138 end=141 ROI=c(138) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10R2" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set10R2_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set10R2_rep2.sam  >  ../outputs/bam_files_init/Grl/Set10R2_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set10R2_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set10R2_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set10R2_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set10R2_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set10R2_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set10R2_residue138_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set10R2_residue138_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set10R2_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=138 end=141 ROI=c(138) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10R2" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set10R1-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set10R1_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set10R1_rep1.sam  >  ../outputs/bam_files_init/Glu/Set10R1_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set10R1_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set10R1_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set10R1_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set10R1_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set10R1_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set10R1_residue134_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set10R1_residue134_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set10R1_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=134 end=137 ROI=c(134) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10R1" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set10R1_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set10R1_rep2.sam  >  ../outputs/bam_files_init/Glu/Set10R1_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set10R1_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set10R1_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set10R1_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set10R1_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set10R1_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set10R1_residue134_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set10R1_residue134_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set10R1_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=134 end=137 ROI=c(134) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10R1" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set10R1_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set10R1_rep1.sam  >  ../outputs/bam_files_init/Gal/Set10R1_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set10R1_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set10R1_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set10R1_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set10R1_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set10R1_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set10R1_residue134_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set10R1_residue134_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set10R1_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=134 end=137 ROI=c(134) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10R1" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set10R1_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set10R1_rep2.sam  >  ../outputs/bam_files_init/Gal/Set10R1_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set10R1_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set10R1_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set10R1_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set10R1_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set10R1_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set10R1_residue134_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set10R1_residue134_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set10R1_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=134 end=137 ROI=c(134) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10R1" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set10R1_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set10R1_rep1.sam  >  ../outputs/bam_files_init/Gc/Set10R1_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set10R1_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set10R1_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set10R1_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set10R1_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set10R1_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set10R1_residue134_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set10R1_residue134_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set10R1_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=134 end=137 ROI=c(134) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10R1" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set10R1_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set10R1_rep2.sam  >  ../outputs/bam_files_init/Gc/Set10R1_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set10R1_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set10R1_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set10R1_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set10R1_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set10R1_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set10R1_residue134_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set10R1_residue134_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set10R1_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=134 end=137 ROI=c(134) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10R1" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set10R1_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set10R1_rep1.sam  >  ../outputs/bam_files_init/Grl/Set10R1_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set10R1_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set10R1_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set10R1_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set10R1_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set10R1_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set10R1_residue134_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set10R1_residue134_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set10R1_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=134 end=137 ROI=c(134) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10R1" replicate=1 includeFinalFlankingResid=1 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set10R1_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set10R1_rep2.sam  >  ../outputs/bam_files_init/Grl/Set10R1_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set10R1_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set10R1_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set10R1_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set10R1_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set10R1_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set10R1_residue134_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set10R1_residue134_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set10R1_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=134 end=137 ROI=c(134) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10R1" replicate=2 includeFinalFlankingResid=1 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set10-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set10_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set10_rep1.sam  >  ../outputs/bam_files_init/Glu/Set10_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set10_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set10_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set10_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set10_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set10_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set10_residue139_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set10_residue139_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set10_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=131 end=139 ROI=c(131:139) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set10_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set10_rep2.sam  >  ../outputs/bam_files_init/Glu/Set10_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set10_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set10_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set10_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set10_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set10_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set10_residue139_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set10_residue139_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set10_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=131 end=139 ROI=c(131:139) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set10_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set10_rep1.sam  >  ../outputs/bam_files_init/Gal/Set10_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set10_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set10_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set10_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set10_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set10_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set10_residue139_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set10_residue139_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set10_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=131 end=139 ROI=c(131:139) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set10_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set10_rep2.sam  >  ../outputs/bam_files_init/Gal/Set10_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set10_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set10_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set10_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set10_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set10_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set10_residue139_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set10_residue139_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set10_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=131 end=139 ROI=c(131:139) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set10_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set10_rep1.sam  >  ../outputs/bam_files_init/Gc/Set10_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set10_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set10_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set10_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set10_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set10_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set10_residue139_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set10_residue139_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set10_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=131 end=139 ROI=c(131:139) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set10_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set10_rep2.sam  >  ../outputs/bam_files_init/Gc/Set10_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set10_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set10_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set10_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set10_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set10_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set10_residue139_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set10_residue139_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set10_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=131 end=139 ROI=c(131:139) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set10_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set10_rep1.sam  >  ../outputs/bam_files_init/Grl/Set10_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set10_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set10_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set10_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set10_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set10_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set10_residue139_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set10_residue139_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set10_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=131 end=139 ROI=c(131:139) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set10_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set10_rep2.sam  >  ../outputs/bam_files_init/Grl/Set10_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set10_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set10_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set10_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set10_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set10_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set10_residue139_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set10_residue139_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set10_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=131 end=139 ROI=c(131:139) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set10" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
echo ----------------------- 
 
echo Set1-started 
 
 
if [ ! -f "../outputs/bam_files/Glu/Set1_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set1_rep1.sam  >  ../outputs/bam_files_init/Glu/Set1_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set1_rep1.bam  -o  ../outputs/bam_files_init/Glu/Set1_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set1_rep1_cigar.bam >  ../outputs/bam_files/Glu/Set1_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set1_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set1_residue12_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set1_residue12_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set1_rep1_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=1 end=12 ROI=c(1:12) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set1" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Glu/Set1_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Glu/Set1_rep2.sam  >  ../outputs/bam_files_init/Glu/Set1_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Glu/Set1_rep2.bam  -o  ../outputs/bam_files_init/Glu/Set1_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Glu/Set1_rep2_cigar.bam >  ../outputs/bam_files/Glu/Set1_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Glu/Set1_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Glu/set1_residue12_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Glu/set1_residue12_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Glu/" Input_SortedBam="Set1_rep2_sorted.bam" pathOut="../outputs/csv_files/Glu/" st=1 end=12 ROI=c(1:12) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set1" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set1_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set1_rep1.sam  >  ../outputs/bam_files_init/Gal/Set1_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set1_rep1.bam  -o  ../outputs/bam_files_init/Gal/Set1_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set1_rep1_cigar.bam >  ../outputs/bam_files/Gal/Set1_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set1_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set1_residue12_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set1_residue12_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set1_rep1_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=1 end=12 ROI=c(1:12) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set1" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gal/Set1_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gal/Set1_rep2.sam  >  ../outputs/bam_files_init/Gal/Set1_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gal/Set1_rep2.bam  -o  ../outputs/bam_files_init/Gal/Set1_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gal/Set1_rep2_cigar.bam >  ../outputs/bam_files/Gal/Set1_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gal/Set1_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gal/set1_residue12_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gal/set1_residue12_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gal/" Input_SortedBam="Set1_rep2_sorted.bam" pathOut="../outputs/csv_files/Gal/" st=1 end=12 ROI=c(1:12) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set1" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set1_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set1_rep1.sam  >  ../outputs/bam_files_init/Gc/Set1_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set1_rep1.bam  -o  ../outputs/bam_files_init/Gc/Set1_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set1_rep1_cigar.bam >  ../outputs/bam_files/Gc/Set1_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set1_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set1_residue12_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set1_residue12_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set1_rep1_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=1 end=12 ROI=c(1:12) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set1" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Gc/Set1_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Gc/Set1_rep2.sam  >  ../outputs/bam_files_init/Gc/Set1_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Gc/Set1_rep2.bam  -o  ../outputs/bam_files_init/Gc/Set1_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Gc/Set1_rep2_cigar.bam >  ../outputs/bam_files/Gc/Set1_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Gc/Set1_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Gc/set1_residue12_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Gc/set1_residue12_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Gc/" Input_SortedBam="Set1_rep2_sorted.bam" pathOut="../outputs/csv_files/Gc/" st=1 end=12 ROI=c(1:12) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set1" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set1_rep1_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set1_rep1.sam  >  ../outputs/bam_files_init/Grl/Set1_rep1.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set1_rep1.bam  -o  ../outputs/bam_files_init/Grl/Set1_rep1_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set1_rep1_cigar.bam >  ../outputs/bam_files/Grl/Set1_rep1_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set1_rep1_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set1_residue12_rep0.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set1_residue12_rep0.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set1_rep1_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=1 end=12 ROI=c(1:12) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set1" replicate=1 includeFinalFlankingResid=0 ' bamToCount.r 
fi
if [ ! -f "../outputs/bam_files/Grl/Set1_rep2_sorted.bam.bai" ]; then 
samtools view -S -b   ../outputs/sam_files/Grl/Set1_rep2.sam  >  ../outputs/bam_files_init/Grl/Set1_rep2.bam 
java -jar /home/bahari/tools/jvarkit/dist/samfixcigar.jar  -R  /home/bahari/SarsCov/Ref_3CL.fasta   ../outputs/bam_files_init/Grl/Set1_rep2.bam  -o  ../outputs/bam_files_init/Grl/Set1_rep2_cigar.bam 
samtools sort  ../outputs/bam_files_init/Grl/Set1_rep2_cigar.bam >  ../outputs/bam_files/Grl/Set1_rep2_sorted.bam 
samtools index  ../outputs/bam_files/Grl/Set1_rep2_sorted.bam 
fi
if [ ! -f "/home/bahari/all_dms_data/outputs/csv_files/Grl/set1_residue12_rep1.csv" ]; then 
echo  /home/bahari/all_dms_data/outputs/csv_files/Grl/set1_residue12_rep1.csv 
R CMD BATCH --no-save --no-restore '--args  bam_folder="../outputs/bam_files/Grl/" Input_SortedBam="Set1_rep2_sorted.bam" pathOut="../outputs/csv_files/Grl/" st=1 end=12 ROI=c(1:12) pathToRef="/home/bahari/SarsCov/Ref_3CL.fasta" set="Set1" replicate=2 includeFinalFlankingResid=0 ' bamToCount.r 
fi
echo ----------------------- 
 

> sink()
