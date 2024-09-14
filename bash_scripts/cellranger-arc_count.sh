#!/bin/bash
	
#SBATCH --cpus-per-task=16
#SBATCH --time=48:00:00
#SBATCH --mem-per-cpu=4G
#SBATCH --job-name=cellranger_count

## Runs Cellranger-arc count

sample='CF102
CF69
CF77
CF89
CF91
CF93
CF94
CF97'

for i in $sample; do
    ../programs/cellranger-arc-2.0.0/bin/cellranger-arc count \
    --id=${i} \
    --reference=resources/scRNAseq_references/refdata-cellranger-arc-GRCh38-2020-A-2.0.0/ \
    --libraries=analyses/multiome_LAA_20210802/${i}_lib.csv \
    --localcores=14 \
    --localmem=60
done


