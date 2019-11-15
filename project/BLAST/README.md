---
title: Set up local BLAST database for C. auris and related species
author: Bin He
date: 2019-08-12
---

# Goal
- Be able to blast any sequence against the assembled genomes reported in the Nat. Comm. paper

# Instructions
1. Clone this git repository
1. Install ncbi blast+ from <ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/>
1. `cd` into `script` directory and issue the following command
    ```bash
    $ sh script/download_genome.sh
    $ sh script/make_blastdb.sh
    ```
    If no error is issued, you have made your blast database
1. To perform blast
    ```bash
    $ sh script/blastn.sh QUERY # QUERY is the name of the fasta file that contains your query sequence(s)
    ```
    The output will be saved in `output` folder. There will be two outputs for each search. The `.out` file is a table that summarizes the hits, including query coverage etc. The `.fa` file is a fasta format file that contains all the sequences.

Happy blasting! Bin He.
