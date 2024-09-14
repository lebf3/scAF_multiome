#!/bin/bash

#SBATCH -t 0-2:59
#SBATCH -c 5
#SBATCH --mem 32G
#SBATCH --job-name Kallisto.index.transcript
#SBATCH -o %j.Kallisto.index.transcript.out
#SBATCH -e %j.Kallisto.index.transcript.err

module load kallisto/0.46.1

kallisto index -i gencode.v32-hg38.idx gencode.v32.transcripts.fa.gz