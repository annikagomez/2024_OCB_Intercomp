#!/bin/bash
#SBATCH --job-name=trimgalore
#SBATCH -N 1
#SBATCH -p RM-shared
#SBATCH -t 2:00:00
#SBATCH --tasks-per-node=10

source /jet/home/agomez3/.bashrc
source activate /jet/home/agomez3/miniforge3/envs/qc_trim

#Run Trim Galore, automatically detecting adapter sequences, on raw input files, maintaining unpaired reads, then run fastqc on trimmed output.
#Results will be in directory 01.trimmed/ 
trim_galore --fastqc -o 01.trimmed.custom/ --clip_R1 12 --clip_R2 12 --three_prime_clip_R2 2 --three_prime_clip_R1 2 -a GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG --paired --retain_unpaired input/HS039_S90_L004_R1_001.fastq.gz input/HS039_S90_L004_R2_001.fastq.gz
