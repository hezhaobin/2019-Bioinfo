# Goal
- Reproduce some of the phylogenetic analyses in the Munoz et al 2018 paper.

# Notes
## 2019-10-20 identify single-copy genes using the orthogroup data

1. Download the raw output from orthogroup website.
2. Wrote a python script to output genes that satisfy the following criteria:
    a. present in Scer and Calb|Clus
    b. no duplications in any species
3. Output is stored in data/single-copy-gene-list.txt2.

## 2019-10-23 assemble the sequences for a given gene from all the species listed in Fig. 3A of the paper

_Species_

1. From Munoz et al 2018
    - all 5 _C. auris_ strains and the auris clade species.
2. From [fungal orthogroup repository](https://portals.broadinstitute.org/regev/orthogroups/)
    - _C. lusitaniae_, _D. hansenii_, _C. guilliermondii_, _C. tropicalis_, _C. albicans_, _C. parapsilosis_, _L. elongosporus_, _C. glabrata_, _S. cerevisiae_
3. From [SGD](yeastgenome.org) and [CGD](candidagenome.org)
    - _C. dubliniensis_, _C. orthopsilosis_, _C. krusei_
