#!/bin/bash
#SBATCH --job-name=bwa
#SBATCH -N 1
#SBATCH -p RM
#SBATCH -t 14:00:00
#SBATCH --tasks-per-node=1
#SBATCH --cpus-per-task=16

source /jet/home/agomez3/.bashrc
source activate /jet/home/agomez3/.conda/envs/bwa
#Build bwa index from RNAspades assembly

bwa index 04.transdecoder/transcripts.fasta.transdecoder.cds

#Map trimmed reads to RNA spades assembly output

bwa mem 04.transdecoder/transcripts.fasta.transdecoder.cds 01.trimmed.custom/HS039_S90_L004_R1_001_val_1.fq.gz 01.trimmed.custom/HS039_S90_L004_R2_001_val_2.fq.gz > 05.bwa/cds_mapping_out.sam

#Sort and convert mapping output

samtools sort -O bam 05.bwa/cds_mapping_out.sam > 05.bwa/cds_mapping_out_sorted.bam

#Get read counts from sorted BAM

samtools coverage 05.bwa/cds_mapping_out_sorted.bam > 05.bwa/cds_coverage.tab


