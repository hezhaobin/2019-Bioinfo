#!/bin/sh
# 2019-10-15
# Bin He
# Script to download multiple genome sequences from GenBank

# wget
wget ftp://ftp.ebi.ac.uk/pub/databases/ena/wgs/public/pe/PEKT02.fasta.gz
wget ftp://ftp.ebi.ac.uk/pub/databases/ena/wgs/public/pg/PGLS01.fasta.gz
wget ftp://ftp.ebi.ac.uk/pub/databases/ena/wgs/public/py/PYFR01.fasta.gz
wget ftp://ftp.ebi.ac.uk/pub/databases/ena/wgs/public/py/PYGM01.fasta.gz
wget ftp://ftp.ebi.ac.uk/pub/databases/ena/wgs/public/pk/PKFO01.fasta.gz
wget ftp://ftp.ebi.ac.uk/pub/databases/ena/wgs/public/pk/PKFP01.fasta.gz
wget ftp://ftp.ebi.ac.uk/pub/databases/ena/wgs/public/py/PYFQ01.fasta.gz
# move files to data folder and rename with their respective sequence names
mv PEKT02.fasta.gz ../data/ENA/C-auris-B8441.fasta.gz
mv PGLS01.fasta.gz ../data/ENA/C-auris-B11221.fasta.gz
mv PYFR01.fasta.gz ../data/ENA/C-auris-B11220.fasta.gz
mv PYGM01.fasta.gz ../data/ENA/C-auris-B11243.fasta.gz
mv PKFO01.fasta.gz ../data/ENA/C-haemulonis-B11899.fasta.gz
mv PKFP01.fasta.gz ../data/ENA/C-duobushaemulonis-B09383.fasta.gz
mv PYFQ01.fasta.gz ../data/ENA/C-pseudohaemulonis-B12108.fasta.gz
