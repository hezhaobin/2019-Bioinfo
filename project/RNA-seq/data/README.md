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
