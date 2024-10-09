# 2024_OCB_Intercomp
Log of methods used in assembling samples for OCB Metatranscriptome Intercomparison


Metatranscriptome assembly & annotation performed by Annika Gomez (algomez@ldeo.columbia.edu) for OCB Meta-euk omics hackathon 


1. Quality filter and trim adapters with Trim Galore [Perl wrapper for Fastqc & Cutadapt]
   - Fastqc HTML output in fastc_out/

Note: no adapters detected, but ~600k reverse reads (1.2% of reads) are polyG runs in pre-trimmed data. After trimming using auto-detection of adapters and trimming based on quality score, still see polyG runs as well as biased base distribution in first 12 bp and last 2bp of each read (forward and reverse), so reran Trim Galore with hard cuts and specified to removed polyG sequence. 

2. Assemble with rnaSPAdes
        - Paired-end mode, default parameters

4. Evaluate assembly with Quast

5. Map reads to assembled transcripts with BWA-Mem

6. Get taxonomic IDs with EUKulele
   symlink input file in 02.rnaspades/ to 05.eukulele/ so it has the location and file ending that the program will look for:
      ln -s 02.rnaspades/transcripts.fasta 05.eukulele/transcripts.fna

 

 

 

Program versions used: 

trim-galore=v0.6.10

SPAdes=v4.0.0

Quast=v5.0.2

bwa = 

samtools=

EUKulele=
