#!/bin/bash
########################
# author: Bin He
# date: 2019-11-14
# title: Bowtie mapping
# use: qsub bowtie2-map.sh
#----------------------
# scheduler parameters
#$ -q BIO-INSTR
#$ -M HawkID@uiowa.edu
#$ -m ea
#$ -pe smp 6
#$ -N bowtie2
#$ -cwd
#$ -o job-log/$JOB_NAME.out
#$ -e job-log/$JOB_NAME.err
#----------------------
# -m ea will email the 
#    user when the job
#    ends or aborts
########################

# load necessary modules

module load bowtie2
module load samtools

# set BOWTIE2_INDEXES variable to specify the directory for the program
# to look for index files
export BOWTIE2_INDEXES=../data/bowtie-index/

# mapping

SRR=$(awk NR==1 ../data/fastq-dump/SRR.txt)
in=../data/fastq-dump
out=../output/bowtie2-aligned/

if [ -f "$in/${SRR}.fastq.gz" ]; then
	echo "Mapping single end read file ${SRR}.fastq.gz"
	bowtie2 -p 6 -x C_auris_B8442_V2 -U $in/${SRR}.fastq.gz | samtools view -bS - > $out/${SRR}.bam
elif [ -f "$in/${SRR}_1.fastq.gz" ] && [ -f "$in/${SRR}_2.fastq.gz" ]; then
	echo "Mapping paired end read files ${SRR}_1.fastq.gz and ${SRR}_2.fastq.gz"
	bowtie2 -p 6 -x C_auris_B8442_V2 -1 $in/${SRR}_1.fastq.gz -2 $in/${SRR}_2.fastq.gz | samtools view -bS - > $out/${SRR}.bam
else
	echo "No fastq files for $SRR"
	exit 1
fi

# now sort the BAM file
samtools sort -@ 6 -T /nfsscratch/$SRR -o $out/${SRR}.sorted.bam $out/${SRR}.bam
