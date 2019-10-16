#!/bin/sh
# 2019-10-15
# Bin He
# Script to download multiple genome sequences from GenBank

in="../data/genome_url.txt"
while IFS= read -r line
do
	for file in ${line}{genomic.fna,protein.faa,rna.fna}.gz
	do
		wget $file -P ../data/GenBank/ # download the files into the data folder
	done
done < $in
