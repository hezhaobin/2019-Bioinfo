---
title: phylogenetics workshop
author: Bin He
date: 2019-10-12
---

# Goal

Practice phylogenetics with primate beta globin sequences, infer species tree and identify human's closest (living) relative

# Data

- primate-beta-globin.fas
    This file contains the 

# Notes
## 2019-10-12 Acquire sequences
- Managed to convert the phylip format to fasta using Jalview. MEGA is just not useful!
- Managed to blast the human gene sequence to the human genomics and transcriptomic database, determined that the sequence we have is the beta globin locus transcript 3 (non-protein coding) long non-coing RNA (NR_121648.1)
- Using EBSEMBL->gene->comparative genomics->alignment, I can directly retrieve the aligned sequences from other primate species. Oddly though, no chimp sequence is identified.
- Redid blastn against the nr database, restricting my search to the primates (taxid:9443), first hit (100% identical) is human hemoglobin gamma A (HBG1) gene, complete CDS, GU324925.1
    - upon further investigation, this hit is the HBG1 gene. The locus is organized as HBE1 (hemoglobin subunit epsilon 1, protein), HBG2 (hemoglobin subunit gamma 2, protein), HBG1 (hemoglobin subunit gamma 1, protein), BGLT3 (beta-globin locus transcript 3, non-protein coding, the one used as query), HBBP1 (hemoglobin subunit beta pseudogene 1, lncRNA), HBD (hemoglobin subunit delta, protein), HBB (hemoglobin subunit beta, protein)
- Selected only 6 species, Homo sapiens (human), Gorilla gorilla (gorilla), Pan troglodytes (chimpanzee), Pan paniscus (pygmy chimpanzee), Pongo abelii (Sumatran orangutan), Pongo pygmaeus (Bornean orangutan).
- Downloading the aligned sequences -- however, note that some of the query sequences are entire chromosome or BAC, and due to the complex of hemoglobin genes in the locus, there may be multiple hits. Need to manually edit to remove redundant ones.
- Edit the sequence names to just the species names.
