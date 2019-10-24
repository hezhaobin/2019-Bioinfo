#!/bin/sh
# 2019-10-24
# Bin He
# Script to perform blastn searches with user provided query
# To use:
# sh blastn.sh QUERY_FILE

if [ -z "$1" ]
then
    echo "sh blastn.sh QUERY_FILE"
    exit 1
elif [ ! -f "$1" ]; then
    echo "$1 doesn't exist!"
    exit 1
fi

file=${1##*/} # get the base file name
file=${file%.*} # remove the extension, check https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash

echo "perform blastn for $1"
# blast with genomic DNA database
# credit: https://www.biostars.org/p/207772/
blastn -db ../data/blastdb/all_for_blast_genomic -query $1 -outfmt "7 qseqid sseqid qcovs pident length mismatch evalue stitle" \
    -out ../output/${file}_blast_genomic.out
# parse the aligned part of the sequence to fasta format
# credit: https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash
blastn -db ../data/blastdb/all_for_blast_genomic -query $1 -outfmt "6 sseqid stitle sseq" \
    | awk 'BEGIN{FS="\t"; OFS="\n"}{gsub(/-/, "", $3); print ">"$1 $2,$3}' \
    > ../output/${file}_blast_genomic.fa
# blast with transcript database
blastn -db ../data/blastdb/all_for_blast_rna -query $1 -outfmt "7 qseqid sseqid qcovs pident length mismatch evalue stitle" \
    -out ../output/${file}_blast_rna.out
blastn -db ../data/blastdb/all_for_blast_rna -query $1 -outfmt "6 sseqid stitle sseq" \
    | awk 'BEGIN{FS="\t"; OFS="\n"}{gsub(/-/, "", $3); print ">"$1 $2,$3}' \
    > ../output/${file}_blast_rna.fa
