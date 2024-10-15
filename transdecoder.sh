#!/bin/bash
#SBATCH --job-name=transdecoder
#SBATCH -N 1
#SBATCH -p RM-shared
#SBATCH -t 14:00:00
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=16

source /jet/home/agomez3/.bashrc
source activate /jet/home/agomez3/miniforge3/envs/mmseqs

TransDecoder.LongOrfs -t 02.rnaspades/transcripts.fasta -O 05.transdecoder

TransDecoder.Predict -t 02.rnaspades/transcripts.fasta -O 05.transdecoder/
