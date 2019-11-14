#!/bin/sh
# 2019-11-12
# Bin He
# Script to index sorted bam files for IGV viewer
# use: qsub -t 1-N bam-index.sh
#      it's important to put "-t 1-N" before the script name

#$ -N bam-index
#$ -q BIO-INSTR
#$ -cwd
#$ -e job-log/$JOB_NAME_$TASK_ID.err
#$ -o job-log/$JOB_NAME_$TASK_ID.out
#$ -m ea
#$ -M bin-he@uiowa.edu

module load sra-tools

SRR=$(awk NR==$SGE_TASK_ID ../data/fastq-dump/SRR.txt)
echo "Processing $SRR"
samtools index ../output/bowtie2-aligned/$SRR.sorted.bam
echo "Done with $SRR"
