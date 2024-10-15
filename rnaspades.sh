#!/bin/bash
# Job name:
#SBATCH --job-name=spaded
#SBATCH --partition=RM
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=128
#SBATCH --time=06:00:00

source /jet/home/agomez3/.bashrc
source activate /jet/home/agomez3/miniforge3/envs/spades

rnaspades.py -1 01.trimmed.custom/HS039_S90_L004_R1_001_val_1.fq.gz -2 01.trimmed.custom/HS039_S90_L004_R2_001_val_2.fq.gz -t 128 -o 02.rnaspades/
