---
title: Genomic sequences and features for BLAST or HMMER databases
author: Bin He
date: 2019-08-13
---

| File | Description | Date |
|------|---|---|
| genome_url.txt | stores the url to all the genome files to be downloaded. note that the last bit of information (genomic, protein, rna) is omitted so that scripts can add them combinatorially | 2019-10-15 |
| ENA | downloaded genome files from European Nucleotide Archive | 2019-10-15 |
| GenBank | from GenBank | 2019-10-15 |

# Notes
## 2019-08-13 Testing with _C. auris_ B11221

To download the files for a particular genome build, use the following example
```
wget -r -nH ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/002/775/015/GCF_002775015.1_Cand_auris_B11221_V1
```

## 2019-10-15 download the other _C. auris_ genomes for blasting

_Goal_

1. Download the other three genomes along with the related species for blasting. Although these genome sequences have been uploaded onto GenBank, the standard blast webtool from NCBI only includes the _C. auris_ B8441

_Approach_

1. The easiest way to download the assembly is to click the "Access the data->FTP Directory" link on the right
1. On the ENA, I used the old interface and clicked the "Download->WGS_SET_FASTA" link (copy the link address and use wget)

## 2019-10-17 make blast database

1. concatenate all the genomic sequences into one file
    `$ cat *_genomic.fna.gz > C_auris_clade_genomic.fna.gz`
    turns out that gz files are concatenatable. according to https://www.biostars.org/p/81924/, the above command is equal to `$ zcat *_genomic.fna.gz | gzip -c > xxx.fna.gz`, which takes a lot longer time to run

2. make blast database
    ```bash
    gunzip -c ../../data/uris/C_auris_B11221_V1/Cand_auris_B11221_V1_genomic.fna.gz | makeblastdb -in - -parse_seqids -dbtype nucl -title Cand_auris_B11221_V1_genomic -out Cand_auris_B11221_V1_genomic
