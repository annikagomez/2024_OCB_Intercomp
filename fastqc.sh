#!/bin/bash
#SBATCH --job-name=fastqc
#SBATCH -N 1
#SBATCH -p RM-shared
#SBATCH -t 2:00:00
#SBATCH --tasks-per-node=10

source /jet/home/agomez3/.bashrc
source activate /jet/home/agomez3/miniforge3/envs/qc_trim

#Run fastqc with default parameters on raw sequence files, results will be in directort 00.qc/
fastqc --noextract -o 01.trimmed/ 01.trimmed/HS039_S90_L004_R1_001_val_1.fq.gz 01.trimmed/HS039_S90_L004_R1_001_val_1.fq.gz  
