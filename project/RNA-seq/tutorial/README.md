---
title: Tutorial for RNA-seq command line workshop
author: Bin He
date: 2019-11-10
---

# Goal
1. Learn to log on remote servers using `ssh`
2. Understand the concept of login node and compute node
3. Understand the file system, including home space, nfsscratch and investigator shares
4. Learn to interact with the scheduler using, `qsub`, `qstat` etc.
5. Learn to download sequencing files from NCBI using 'sra-tools'

# Steps
1. Log on to argon
    `$ ssh hawkID@argon.hpc.uiowa.edu`

1. On the login node, look around to see various disk spaces available
    ```bash
    $ pwd
    $ cd /nfsscratch
    $ cd /Shared; ls
    ```

1. Clone the repository
    ```bash
    $ git clone https://github.com/hezhaobin/2019-Bioinfo.git
    $ cd 2019-Bioinfo/project/RNA-seq
    ```

1. Download the SRA runinfo table. (already in the `data` folder)
    Go to <https://www.ncbi.nlm.nih.gov/bioproject/?term=PRJNA445471>, navigate to SRA experiments -> Run selector -> Download runinfo table.
    This text file contains the metadata and accession numbers for the sequencing files we need

1. Decide which sequencing runs to download
    Based on the runinfo table online, you can choose a few experiments to download. They should together allow you to perform a DGE analysis. Here we use the B11210 strain treated with voriconazole at 2 hours vs untreated control as an example. The SRR accession numbers are as follows
    ```bash
    SRR6900282 # B11210 voriconazole 2hr
    SRR6900283 # B11210 voriconazole 2hr
    SRR6900298 # B11210 untreated control 2hr
    SRR6900299 # B11210 untreated control 2hr
    ```
    Open a text editor (vim, emacs, nano) and enter the SRR# into it. Save the file as SRR.txt (already in the `data/fastq-dump` folder)

1. Download sequencing files
    ```bash
    module load sra-tools
    prefetch --option-file SRR.txt # note that prefetch will download files to ~/ncbi/public/sra/
    fastq-dump -I --gzip --skip-technical --split-3 -W -O data/fastq-dump/ < SRR.txt # this will extract the fastq files from the .sra files
    # for more information on the different flags to the fastq-dump command, check out https://trace.ncbi.nlm.nih.gov/Traces/sra/sra.cgi?view=toolkit_doc&f=fastq-dump
    # and https://edwards.sdsu.edu/research/fastq-dump/
    ```
    Note that the `prefetch` command can safely be run on the login node, which is intended "for basic tasks such as uploading data, managing files, compiling software, editing scripts, and checking on or managing your jobs" ([argon wiki](https://wiki.uiowa.edu/display/hpcdocs/Login+Node+Usage)). But the `fastq-dump` command is potentially memory intensive, and is best run by submitting a job to the compute node.

1. Extract fastq files
    As mentioned above, it is best to let the compute nodes handle the fastq file extraction step. For this I provided a template script `fastq_dump.sh` under the `script` folder
