#!/bin/sh
# 2019-11-04
# Bin He
# Script to download _C. auris_ B8441 strain genome sequence and gff files

echo "Downloading _C. auris_ B8441 genome"
wget -nc ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/002/759/435/GCA_002759435.2_Cand_auris_B8441_V2/GCA_002759435.2_Cand_auris_B8441_V2_genomic.fna.gz -P ../data/genome-seq/
wget -nc ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/002/759/435/GCA_002759435.2_Cand_auris_B8441_V2/GCA_002759435.2_Cand_auris_B8441_V2_genomic.gff.gz -P ../data/genome-seq/
wget -nc ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/002/759/435/GCA_002759435.2_Cand_auris_B8441_V2/GCA_002759435.2_Cand_auris_B8441_V2_rna_from_genomic.fna.gz -P ../data/genome-seq/
# get the checksums to check for integrity of all files
wget -nc ftp://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/002/759/435/GCA_002759435.2_Cand_auris_B8441_V2/md5checksums.txt -P ../data/genome-seq/
mv ../data/genome-seq/md5checksums.txt ../data/genome-seq/Cand_auris_B8441_V2_md5checksums.txt
echo "md5 checksums"
grep "genomic" ../data/genome-seq/Cand_auris_B8441_V2_md5checksums.txt
# rename those files to remove extra strings
rename "GCA_002759435.2_" "" ../data/genome-seq/*.gz
