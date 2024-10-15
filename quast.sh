#!/bin/bash
#SBATCH --job-name=quast
#SBATCH -N 1
#SBATCH -p RM-shared
#SBATCH -t 2:00:00
#SBATCH --tasks-per-node=20

source /jet/home/agomez3/.bashrc
source activate /jet/home/agomez3/miniforge3/envs/quast

quast -o 03.quast/ --min-contig 80 --threads 20 02.rnaspades/transcripts.fasta
