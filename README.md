# 2024_OCB_Intercomp
Log of methods used in assembling samples for OCB Metatranscriptome Intercomparison


Metatranscriptome assembly & annotation performed by Annika Gomez (algomez@ldeo.columbia.edu) for OCB Meta-euk omics hackathon 


1. Quality filter and trim adapters with Trim Galore [Perl wrapper for Fastqc & Cutadapt]
   - Fastqc HTML output in fastc_out/

Note: no adapters detected, but ~600k reverse reads (1.2% of reads) are polyG runs in pre-trimmed data. After trimming using auto-detection of adapters and trimming based on quality score, still see polyG runs as well as biased base distribution in first 12 bp and last 2bp of each read (forward and reverse), so reran Trim Galore with hard cuts and specified to removed polyG sequence. 

2. Assemble with rnaSPAdes
        - Paired-end mode, default parameters

4. Evaluate assembly with Quast

5. Predict protein/coding sequences with TransDecoder

6. Map reads to predicted CDS with BWA-Mem

7. Get taxonomic IDs with EUKulele
   
8. Get functional annotations with Eggnog mapper
   
9. Jupyter notebook compiles outputs of 6,7,&8 into a tab-separated results file


Program versions used: 

trim-galore=v0.6.10

SPAdes=v4.0.0

Quast=v5.0.2

Transdecoder

bwa = 

samtools=

EUKulele=

eggnog_mapper=
