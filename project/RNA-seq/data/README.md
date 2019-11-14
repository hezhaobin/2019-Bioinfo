| File | Date | Description | Source |
|------|------|-------------|--------|
| ENA-download-url.tsv | 2019-11-03 | ftp addresses to download the raw data | https://www.ebi.ac.uk/ena/browser/view/PRJNA445471 -> "Download report: TSV" |
| ENA-download-url-parsed.txt | 2019-11-03 | ftp addresses for download | See description below |
| SRA-runinfo.csv | 2019-11-03 | run info, including accession #s and run stats | https://www.ncbi.nlm.nih.gov/sra?LinkName=bioproject_sra_all&from_uid=445471 -> Send to file -> run info |
| SraRunTable.txt | 2019-11-10 | run info, from SRA run selector, slightly different format from above | https://www.ncbi.nlm.nih.gov/Traces/study1/?WebEnv=NCID_1_88020808_130.14.18.48_5555_1573404770_775717296_0MetA0_S_HStore&query_key=2 |

# 2019-11-03 extract ftp addresses
The ENA-download-url-parsed.txt file is parsed from the ENA-download-url.tsv with the following code
`awk 'BEGIN{ FS="," }FNR>1 {print ftp://$7}' ENA-download-url.tsv | tr ";" "\n" >| ENA-download-url-parsed.txt`
and then I manually added "ftp://" to the beginning of each line

# 2019-11-10 use sra-tools to download sequences and dump fastq
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
