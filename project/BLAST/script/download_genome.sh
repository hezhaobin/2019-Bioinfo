#!/bin/sh
# 2019-10-15
# Bin He
# Script to download multiple genome sequences from GenBank

in="../data/genome_seq/genome_url.txt"
while IFS= read -r line
do
	for file in ${line}{genomic.fna,protein.faa,rna.fna,rna_from_genomic.fna}.gz
	do
		wget -nc $file -P ../data/genome_seq/GenBank/ # download the files into the data folder
		                                              # -nc, --no-clobber: skip downloading a file that already exists
	done
done < $in
