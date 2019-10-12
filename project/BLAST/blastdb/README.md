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
