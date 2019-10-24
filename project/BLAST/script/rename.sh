#!/bin/sh
# rename some of the downloaded genomic sequences to their respective species names

rename ASM118947v1_ Cand_auris_B6684_ ../data/genome_seq/GenBank/GCA_001189475.1_ASM118947v1_*
rename ASM305444v1_ Cand_krusei_ ../data/genome_seq/GenBank/GCF_003054445.1_ASM305444v1_*
rename ASM31587v1_ Cand_orthopsilosis_ ../data/genome_seq/GenBank/GCF_000315875.1_ASM31587v1_*

