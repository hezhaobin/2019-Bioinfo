# Goal
- Reproduce some of the phylogenetic analyses in the Munoz et al 2018 paper.

# Notes
## 2019-10-20 identify single-copy genes using the orthogroup data

1. Download the raw output from orthogroup website.
2. Wrote a python script to output genes that satisfy the following criteria:
    a. present in Scer and Calb|Clus
    b. no duplications in any species
3. Output is stored in data/single-copy-gene-list.txt2.
