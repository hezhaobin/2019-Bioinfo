#!/bin/sh
# 2019-12-21
# Bin He
# Script to perform blastp searches with user provided query
# To use:
# sh blastp.sh QUERY_FILE

if [ -z "$1" ]
then
    echo "sh blastp.sh QUERY_FILE"
    exit 1
elif [ ! -f "$1" ]; then
    echo "$1 doesn't exist!"
    exit 1
fi

file=${1##*/} # get the base file name
file=${file%.*} # remove the extension, check https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash

echo "perform blastp for $1"
# blast with protein database
# credit: https://www.biostars.org/p/207772/
blastp -db ../data/blastdb/all_for_blast_protein -query $1 -outfmt "7 qseqid sseqid qcovs pident length mismatch evalue stitle" \
    -out ../output/${file}_blastp.out
# parse the aligned part of the sequence to fasta format
# credit: https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash
blastp -db ../data/blastdb/all_for_blast_protein -query $1 -outfmt "6 sseqid stitle sseq" \
    | awk 'BEGIN{FS="\t"; OFS="\n"}{gsub(/-/, "", $3); print ">"$1 $2,$3}' \
    > ../output/${file}_blastp.fa
