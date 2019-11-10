#!/bin/sh
# 2019-11-03
# Bin He
# Script to download the raw fastq files for the RNA-seq experiments from ENA SRA
# note 2019-11-10: use SRA-tools/fastq-dump instead of wget to download files. this script still works.
#                  but fastq-dump is preferred because it only needs the accession number and can validate the download

in="../data/ENA-download-url-parsed.txt"
while IFS= read -r line
do
	wget -nc $line -P ../data/fastq-wget/ # download the files into the data/fastq folder
done < $in
