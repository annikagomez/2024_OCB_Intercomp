#!/bin/bash
#SBATCH --job-name=eggnog
#SBATCH -N 1
#SBATCH -p RM-shared
#SBATCH -t 14:00:00
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=16

source /jet/home/agomez3/.bashrc
source activate /jet/home/agomez3/miniforge3/envs/eggnog

emapper.py -i 04.transdecoder/transcripts.fasta.transdecoder.pep --itype proteins -o 07.eggnog_mapper/ --cpu 16
