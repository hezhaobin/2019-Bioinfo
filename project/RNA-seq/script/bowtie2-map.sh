#!/bin/bash
########################
# author: Bin He
# date: 2019-11-04
# title: Bowtie mapping
#----------------------
# scheduler parameters
#$ -q BIO-INSTR
#$ -M bhe2@uiowa.edu
#$ -m bea
#$ -N Bin He
#$ -o output.txt
#$ -e error.txt
#----------------------
# -m bea will email the 
#    user when the job
#    begins, ends or aborts
########################

# these are useful flags to set to make the code more robust to failure
# copied from Vince Buffalo's Bioinformatic Data Analysis book
set -e
set -u
set -o pipefail

module load bowtie2/2.3.4.2


