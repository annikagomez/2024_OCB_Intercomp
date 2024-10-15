# 2024_OCB_Intercomp
Log of methods used in assembling samples for OCB Metatranscriptome Intercomparison


Metatranscriptome assembly & annotation performed by Annika Gomez (algomez@ldeo.columbia.edu) for OCB Meta-euk omics hackathon 


1. Quality filter and trim adapters with Trim Galore [Perl wrapper for Fastqc & Cutadapt]
   - Fastqc HTML output in fastc_out/

Note: no adapters detected, but ~600k reverse reads (1.2% of reads) are polyG runs in pre-trimmed data. After trimming using auto-detection of adapters and trimming based on quality score, still see polyG runs as well as biased base distribution in first 12 bp and last 2bp of each read (forward and reverse), so reran Trim Galore with hard cuts and specified to removed polyG sequence. 

2. Assemble with rnaSPAdes
        - Paired-end mode, default parameters

4. Evaluate assembly with Quast
        - Main Quast output:
   All statistics are based on contigs of size >= 80 bp, unless otherwise noted (e.g., "# contigs (>= 0 bp)" and "Total length (>= 0 bp)" include all contigs).

Assembly                    transcripts
# contigs (>= 0 bp)         2826239    
# contigs (>= 1000 bp)      26057      
# contigs (>= 5000 bp)      35         
# contigs (>= 10000 bp)     0          
# contigs (>= 25000 bp)     0          
# contigs (>= 50000 bp)     0          
Total length (>= 0 bp)      597054553  
Total length (>= 1000 bp)   37610909   
Total length (>= 5000 bp)   226530     
Total length (>= 10000 bp)  0          
Total length (>= 25000 bp)  0          
Total length (>= 50000 bp)  0          
# contigs                   2826239    
Largest contig              9336       
Total length                597054553  
GC (%)                      53.65      
N50                         188        
N75                         153        
L50                         875854     
L75                         1778112    
# N's per 100 kbp           98.98  

6. Predict protein/coding sequences with TransDecoder

7. Map reads to predicted CDS with BWA-Mem

8. Get taxonomic IDs with EUKulele
   
9. Get functional annotations with Eggnog mapper
   
10. Jupyter notebook compiles outputs of 6,7,&8 into a tab-separated results file


Program versions used: 

trim-galore=v0.6.10

SPAdes=v4.0.0

Quast=v5.0.2

Transdecoder

bwa = 

samtools=

EUKulele=

eggnog_mapper=
