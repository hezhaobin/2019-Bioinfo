---
title: Genomic sequences and features for BLAST or HMMER databases
author: Bin He
date: 2019-08-13
---

| Folder | File | Description | Date |
|----|------|---|---|
| genome_seq | genome_url.txt | stores the url to all the genome files to be downloaded. note that the last bit of information (genomic, protein, rna) is omitted so that scripts can add them combinatorially | 2019-10-15 |
| genome_seq | ENA | downloaded genome files from European Nucleotide Archive | 2019-10-15 |
| genome_seq | GenBank | from GenBank | 2019-10-15 |
| blastdb | * | blast database made by makeblastdb | varies |
| query | * | fasta files containing query sequences | varies |

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
    `$ cat *[0-9]_genomic.fna.gz > C_auris_clade_genomic.fna.gz` the [0-9] excludes "*rna_from_genomic.fna.gz" from being included
    turns out that gz files are concatenatable. according to https://www.biostars.org/p/81924/, the above command is equal to 
    `$ zcat *_genomic.fna.gz | gzip -c > xxx.fna.gz`, which takes a lot longer time to run

2. make blast database
    ```
    gunzip -c ./GenBank/C_auris_clade_genomic.fna.gz | makeblastdb -in - -parse_seqids -dbtype nucl -title C_auris_clade_genomic -out C_auris_clade_genomic
    ```
## 2019-10-18 add the genome sequence of strain 6684

Looking at the Muñoz paper's Figure 2, I realize that they also included the previously published first _C. auris_ genome, belonging to strain 6684, which is part of clade III. I thus added the ftp address for this strain, and remade the blastdb.

Note that while there are 833 sequences in all the genomic.fna.gz files, the `makeblastdb` command reported that the program added 748 sequences. I'm not sure why there is the difference.

## 2019-10-20 identify single-copy genes using the orthogroup data

This part of the analysis is documented under the "phylogenetics" subfolder under "project". But some of the steps are conducted here in order to retreave the correct sequences.

## 2019-10-23 add _C. krusei_ and remake the all-in-one fasta.gz

In trying to replicate the species tree, I added the genome of _C. krusei_. The genome paper was published in Cuomo et al. 2017 (doi: 10.1534/g3.117.043547). The species is identified as _Pichia kudriavzevii_ in NCBI. The latter name is the teleomorphic (sexual) state of _C. krusei_.

```
cat *[^me]_genomic.fna.gz > all_for_blast_genomic.fna.gz
cat *rna.fna.gz > all_for_blast_rna.fna.gz
cat *rna_from_genomic.fna.gz > all_for_blast_rna_from_genomic.fna.gz
```
