#!/bin/sh
# 2019-10-31
# Bin He
# Script to make blast database

# concatenate the downloaded fasta sequences (it's ok to leave them gzipped) into a single file for makeblastdb
pushd ../data/genome_seq/GenBank
cat *[^me]_genomic.fna.gz > all_for_blast_genomic.fna.gz
cat *rna.fna.gz > all_for_blast_rna.fna.gz
cat *rna_from_genomic.fna.gz > all_for_blast_rna_from_genomic.fna.gz
cat *protein.faa.gz > all_for_blast_protein.faa.gz
popd

# then go to the blastdb directory and make the blast databases
pushd ../data/blastdb
gunzip -c ../genome_seq/GenBank/all_for_blast_genomic.fna.gz | makeblastdb -in - -parse_seqids -dbtype nucl -title all_for_blast_genomic -out all_for_blast_genomic
gunzip -c ../genome_seq/GenBank/all_for_blast_rna.fna.gz | makeblastdb -in - -parse_seqids -dbtype nucl -title all_for_blast_rna -out all_for_blast_rna
gunzip -c ../genome_seq/GenBank/all_for_blast_rna_from_genomic.fna.gz | makeblastdb -in - -parse_seqids -dbtype nucl -title all_for_blast_rna_from_genomic -out all_for_blast_rna_from_genomic
gunzip -c ../genome_seq/GenBank/all_for_blast_protein.faa.gz | makeblastdb -in - -parse_seqids -dbtype prot -title all_for_blast_protein -out all_for_blast_protein
popd

echo "blast databases made."
