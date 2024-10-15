#!/bin/bash
#SBATCH --job-name=eukulele
#SBATCH -N 1
#SBATCH -p RM-shared
#SBATCH -t 14:00:00
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=16

source /jet/home/agomez3/.bashrc
source activate /jet/home/agomez3/miniforge3/envs/new_EUKulele

EUKulele --sample_dir 06.eukulele/ -m mets -o 06.eukulele/out
