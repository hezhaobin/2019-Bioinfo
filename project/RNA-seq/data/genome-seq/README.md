---
title: Candida auris genome sequence and annotation files
author: Bin He
date: 2019-11-14
---

Most of the files were downloaded from NCBI. Please see the `download_genome.sh` under the `script` sub-folder.

# note: 2019-11-14
In running Galaxy on the RNA-seq data, I found that TopHat or Bowtie2+FeatureCounts have trouble with the gff file in this folder. I haven't figured out the exact problem, but in trying other things, I found Kalisto works beautifully, and takes much less time! However, for DESeq2 to work with Kalisto output, it needs a transcript ID to Gene ID conversion file [link](bioconductor.org/packages/release/bioc/vignettes/tximport/inst/doc/tximport.html). This just needs to be a text file with two columns, where the first column is the transcript ID and the second column the gene ID. It is relatively easy to generate that using the `Cand_auris_B8441_V2_rna_from_genomic.fna` file. The following `awk` command works well
`awk 'BEGIN { FS = " "; OFS = "\t" }; /^>/{gsub(/>/,"",$1);gsub(/\[|\]/, "", $2);gsub(/locus_tag=/,"",$2);print $1,$2}' Cand_auris_B8441_V2_rna_from_genomic.fna > txid-geneid.tsv`
