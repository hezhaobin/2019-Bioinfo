---
title:
author:
date:
---

BLAST database
To recreate the database with genome sequences in fasta format, follow the following example
```
gunzip -c ../../data/C.auris/Cand_auris_B11221_V1/Cand_auris_B11221_V1_genomic.fna.gz | makeblastdb -in - -parse_seqids -dbtype nucl -title Cand_auris_B11221_V1_genomic -out Cand_auris_B11221_V1_genomic
```

2019-10-18
I added a new database, from a concatenated fasta that combines all the fasta files for genomic DNA from the species/strains sequenced in the Muñoz paper.

```
gunzip -c ../data/GenBank/C_auris_clade_genomic.fna.gz | makeblastdb -in - -parse_seqids -dbtype nucl -title C_auris_clade_genomic -out C_auris_clade_genomic
```

I noticed that the total number of sequences added to the blast database, as reported by the `makeblastdb` command output, is smaller than the total number of sequences as found by `grep -c "^>" xxx.fna.gz`. I'm not sure why.

To actually perform a blast search, use the following command
```
blastn -db Cd_auris_B11221_V1_genomic -query efg1.fa -out results.out
```

2019-10-23
Make a few versions of the databased, from genomic, rna or rna_from_genomic
```
gunzip -c ../genome_seq/GenBank/all_for_blast_genomic.fna.gz | makeblastdb -in - -parse_seqids -dbtype nucl -title all_for_blast_genomic -out all_for_blast_genomic
gunzip -c ../genome_seq/GenBank/all_for_blast_rna.fna.gz | makeblastdb -in - -parse_seqids -dbtype nucl -title all_for_blast_rna -out all_for_blast_rna
gunzip -c ../genome_seq/GenBank/all_for_blast_rna_from_genomic.fna.gz | makeblastdb -in - -parse_seqids -dbtype nucl -title all_for_blast_rna_from_genomic -out all_for_blast_rna_from_genomic
```
