#!/bin/sh
# 2019-11-10
# Bin He
# Script to extract the fastq files from the .sra files downloaded by sra-tools/prefetch
# use: qsub -t 1-N fastq-dump.sh
#      it's important to put "-t 1-N" before the script name

#$ -N fastq-dump
#$ -q BIO-INSTR
#$ -cwd
#$ -e job-log/$JOB_NAME_$TASK_ID.err
#$ -o job-log/$JOB_NAME_$TASK_ID.out
#$ -m ea
#$ -M bin-he@uiowa.edu

module load sra-tools

SRR=$(awk NR==$SGE_TASK_ID ../data/fastq-dump/SRR.txt)
echo "Processing $SRR"
fastq-dump -I --gzip --skip-technical --split-3 -W -O ../data/fastq-dump/ $SRR
echo "Done with $SRR"
