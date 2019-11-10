#!/bin/sh
# 2019-11-04
# Bin He
# Script to build bowtie2 index from _C. auris_ B8441 strain genome sequence

echo "Building bowtie index for _C. auris_ B8441 genome"
module load bowtie2/2.3.4.2
bowtie2-build -f ../data/genome-seq/Cand_auris_B8441_V2_genomic.fna.gz ../data/bowtie-index/C_auris_B8442_V2 > ../data/bowtie-index/bowtie2-build.log
echo "done"
