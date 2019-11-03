#!/bin/sh
# 2019-11-03
# Bin He
# Script to download the raw fastq files for the RNA-seq experiments from ENA SRA

in="../data/ENA-download-url-parsed.txt"
while IFS= read -r line
do
	wget -nc $file -P ../data/fastq/ # download the files into the data/fastq folder
done < $in
