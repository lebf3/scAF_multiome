#!/bin/bash
	
#SBATCH --cpus-per-task=16
#SBATCH --time=13:00:00
#SBATCH --mem-per-cpu=4G
#SBATCH --job-name=cellranger-arc_agrr

## Runs Cellranger-arc agrr

../programs/cellranger-arc-2.0.0/bin/cellranger-arc aggr \
    --id=AF_multiome \
    --reference=resources/scRNAseq_references/refdata-cellranger-arc-GRCh38-2020-A-2.0.0/ \
    --csv=analyses/multiome_LAA_20210802/cellranger.agrr.csv \
    --normalize=none \
    --localcores=14 \
    --localmem=60