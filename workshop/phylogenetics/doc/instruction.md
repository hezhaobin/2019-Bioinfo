---
title: Download sequences for beta globin pseudogene to infer primate species phylogeny
author: Bin He
date: 2019-10-12
---

# Goal
Given the human BGLT3 (beta-globin locus transcript 3, a pseudogene in the beta-globin locus) DNA sequence, use `blastn` to identify the orthologous sequences from other primate species (see table below)

| Species name | Common name |
|--------------|-------------|
| _Homo sapiens_ | human |
| _Gorilla gorilla_ | gorilla |
| _Pan troglodytes_ | chimpanzee |
| _Pan paniscus_ | pygmy chimpanzee |
| _Pongo abelii_ | Sumatran orangutan |
| _Pongo pygmaeus_ | Bornean orangutan |

# Instructions
_you may skip this if you are already familiar with blast_

1. put the human sequence (attached at the bottom) in the input sequence box.
2. you can try "nr" or other databases (refseq?) to search against.
3. limit the taxonomy to primates
4. in the result window, use the taxonomy tab, description and graphic summary to evaluate the results. do you see the species listed above? do you get near 100% coverage for the query? what are the sequence identities? if there are multiple hits in any one species, how to choose from them?
5. finally, select the sequences you decide to download in the "Description" tab, then go to "Alignment" tab and use "Download"->"FASTA (aligned sequences)" to save the alignment as fasta files.
6. open the fasta file in your favorite alignment editor (text editor, vim, emacs, Jalview, MEGA, seaview, etc.) and inspect what you got. can you make sense of the sequences you have? if you can, change the names to just the species short name (e.g. pygmy chimpanzee), and save that file.
7. upload the aignment file to ICON/quiz of the week. it's ok if you only get to the download stage. upload whatever you have.

# FASTA sequence for human BGLT3
```fasta
GAATTCCTGGTTGGCTGATGGAAAGATGGGGCAGCTGTTCACTGGTACGCAGGGTTTTAGATGTATGTACCT
AAGGATATGAGGTATGGCAATGAACAGAAATTCTTTTGGGAATGAGTTTTAGGGCCATTAAAGGACATGACC
TGAAGTTTCCTCTGAGGCCAGTCCCCACAACTCAATATAAATGTGTTTCCTGCATATAGTCAAAGTTGCCAC
TTCTTTTTCTTCATATCATCGATCTCTGCTCTTAAAGATAATCTTGGTTTTGCCTCAAACTGTTTGTCAC
TACAAACTTTCCCCATGTTCCTAAGTAAAACAGGTAACTGCCTCTCAACTATATCAAGTAGACTAAAATATT
GTGTCTCTAATATCAGAAATTCAGCTTTAATATATTGGGTTTAACTCTTTGAAATTTAGAGTCTCCTTGAAA
TACACATGGGGGTGATTTCCTAAACTTTATTTCTTGTAAGGATTTATCTCAGGGGTAACACACAAACCAGCA
TCCTGAACCTCTAAGTATGAGGACAGTAAGCCTTAAGAATATAAAATAAACTGTTCTTCTCTCTGCCGGTGG
AAGTGTGCCCTGTCTATTCCTGAAATTGCTTGTTTGAGACGCATGAGACGTGCAGCACATGAGACACGTGCA
GCAGCCTGTGGAATATTGTCAGTGAAGAATGTCTTTGCCTGATTAGATATAAAGACAAGTTAAACACAGCAT
TAGACTATAGATCAAGCCTGTGCCAGACACAAATGACCTAATGCCCAGCACGGGCCACGGAATCTCCTATCC
TCTTGCTTGAACAGAGCAGCACACTTCTCCCCCAACACTATTAGATGTTCTGGCATAATTTTGTAGATATGT
AGGATTTGACATGGACTATTGTTCAATGATTCAGAGGAAATCTCCTTTGTTCAGATAAGTACACTGACTACT
AAATGGATTAAAAAACACAGTAATAAAACCCAGTTTTCCCCTTACTTCCCTAGTTTGTTTCTTATTCTGCTT
TCTTCCAAGTTGATGCTGGATAGAGGTGTTTATTTCTATTCTAAAAAGTGATGAAATTGGCCGGGCGCGGTG
GCTCACACCTGTAATCCCAGCACTTTGGGAGGCTGAGGTGGGCGGATCACGAGGTCAGGAGATCAAGACCAT
CCTGGCTAACATGGTGAAACCCCATCTCTACTAAAAATACAAAAAATTAGCCAGAGACAGTGGCGGGTGCC
TGTAGTCCCAGCTACTCGGGAGGCTGAGGCAGGAGAATGGCGTGAACCTGGGAGGCAGAGCTTGCGGTGAGC
AGAGATCGCGCCACTGCACACTCCAGCCTGGGTGACAAAGCGAGACTCCATCTCAAAAAAAAAAAAAAAAAA
AAGAAAAAGAAAGAAAGAAAGAAAAAAAAACTGATGAAATTGTGTATTCAATGTAGTCTCAAGAGAATTGA
AAACCAAGAAAGGCTGTGGCTTCTTCCACATAAAGCCTGGATGAATAACAGGATAACACGTTGTTACATTGT
CACAACTCCTGATCCAGGAATTGATGGCTAAGATATTCGTAATTCTTATCCTTTTCAGTTGTAACTTATTCC
TATTTGTCAGCATTCAGGTTATTAGCGGCTGCTGGCGAAGTCCTTGAGAAATAAACTGCACACTGGATGGTG
GGGGTAGTGTAGGAAAATGGAGGGGAAGGAAGTAAAGTTTCAAATTAAGCCTGAACAGCAAAGTTCCCCTGA
GAAGGCCACCTGGATTCTATCAGAAACTCGAATGTCCATCTTGCAAAACTTCCTTGCCCAAACCCCACCCCT
GGAGTCACAACCCACCCTTGACCAATAGATTCATTTTACTGAGGGAGGCAAAGGGCTGGTCAATAGATTCAT
TTCACTGGGAGAGGCAAAGGGCTGGGGGCCAGAGAGGAGAAGTAAAAAGCCACACATGAAGCAGCAATGCAG
GCATGCTTCTGGCTCATCTGTGATCACCAGGAAACTCCCAGATCTGACACTGTAGTGCATTTCACTGCTGAC
AAGAAGGCTGCTGCCACCAGCCTGTGAAGCAAGGTTAAGGTGAGAAGGCTGGAGGTGAGATTCTGGGCAGGT
AGGTACTGGAAGCCGGGACAAGGTGCAGAAAGGCAGAAAGTGTTTCTGAAAGAGGGATTAGCCCGTTGTCTT
ACATAGTCTGACTTTGCACCTGCTCTGTGATTATGACTATCCCACAGTCTCCTGGTTGTCTACCCATGGACC
TAGAGGTACTTTGAAAGTTTTGGATATCTGGGCTCTGACTGTGCAATAATGGGCAACCCCAAAGTCAAGGCA
CATGGCAAGAAGGTGCTGATCTCCTTCGGAAAAGCTGTTATGCTCACGGATGACCTCAAAGGCACCTTTGCT
ACACTGAGTGACCTGCACTGTAACAAGCTGCACGTGGACCCTGAGAACTTCCTGGTGAGTAGTAAGTACACT
CACGCTTTCTTCTTTACCCTTAGATATTTGCACTATGGGTACTTTTGAAAGCAGAGGTGGCTTTCTCTTGTG
TTATGAGTCAGCTATGGGATATGATATTTCAGCAGTGGGATTTTGAGAGTTATGTTGCTGTAAATAACATAA
CTAAAATTTGGTAGAGCAAGGACTATGAATAATGGAAGGCCACTTACCATTTGATAGCTCTGAAAAACACAT
CTTATAAAAAATTCTGGCCAAAATCAAACTGAGTGTTTTTGGATGAGGGAACAGAAGTTGAGATAGAGAAAA
TAACATCTTTCCTTTGGTCAGCGAAATTTTCTATAAAAATTAATAGTCACTTTTCTGCATAGTCCTGGAGGT
TAGAAAAAGATCAACTGAACAAAGTAGTGGGAAGCTGTTAAAAAGAGGATTGTTTCCCTCCGAATGATGAT
GGTATACTTTTGTACGCATGGTACAGGATTCTTTGTTATGAGTGTTTGGGAAAATTGTATGTATGTATGTAT
GTATGTATGTGATGACTGGGGACTTATCCTATCCATTACTGTTCCTTGAAGTACTATTATCCTACTTTTTAA
AAGGACGAAGTCTCTAAAAAAAAAAATGAAACAATCACAATATGTTGGGGTAGTGAGTTGGCATAGCAAGT
AAGAGAAGGATAGGACACAATGGGAGGTGCAGGGCTGCCAGTCATATTGAAGCTGATATCTAGCCCATAATG
GTGAGAGTTGCTCAAACTCTGGTGAAAAAGGATGTAAGTGTTATATCTATTTACTGCAAGTCCAGCTTGAGG
CCTTCTATTCACTATGTACCATTTTCTTTTTTATCTTCACTCCCTCCCCAGCTCTTAGGCAACGTGATATTG
ATTGTTTTGGCAACCCACTTCAGCGAGGATTTTACCCTACAGATACAGGCTTCTTGGCAGTAACTAACAAAT
GCTGTGGTTAATGCTGTAGCCCACAAGACCACTGAGTTCCCTGTCCACTATGTTTGTACCTATGGTCCAC
TATGTTTGTACCTATGTCCCAAAATCTCATCTCCTTTAGATGGGGGAGGTTGGGGAGAAGAGCAGTATCCTG
CCTGCTGATTCAGTTCCTGCATGATAAAAATAGAATAAAGAAATATGCTCTCTAAGAAATATCATTGTACTC
TTTTTCTGTCTTTATATTTTACCCTGATTCAGCCAAAAGGACGCACTATTTCTGATGGAAATGAGAATGTTG
GAGAATGGGAGTTTAAGGACAGAGAAGATACTTTCTTGCAATCCTGCAAGAAAAGAGAGAACTCGTGGGTGG
ATTTAGTGGGGTAGTTACTCCTAGGAAGGGGAAATCGTCTCTAGAATAAGACAATGTTTTTACAGAAAGGGA
GGTCAATGGAGGTACTCTTTGGAGGTGTAAGAGGATTGTTGGTAGTGTGTAGAGGTATGTTAGGACTCAAAT
TAGAAGTTCTGTATAGGCTATTATTTGTATGAAACTCAGGATATAGCTCATTTGGTGACTGCAGTTCACTTC
TACTTATTTTAAACAACATATTTTTTATTATTTATAATGAAGTGGGGATGGGGCTTCCTAGAGACCAATCAA
GGGCCAAACCTTGAACTTTCTCTTAACGTCTTCAATGGTATTAATAGAGAATTATCTCTAAGGCATGTGAAC
TGGCTGTCTTGGTTTTCATCTGTACTTCATCTGCTACCTCTGTGACCTGAAACATATTTATAATTCCATTAA
GCTGTGCATATGATAGATTTATCATATGTATTTTCCTTAAAGGATTTTTGTAAGAACTAATTGAATTGATAC
CTGTAAAGTCTTTATCACACTACCCAATAAATAATAAATCTCTTTGTTCAGCTCTCTGTTTCTATAAATATG
TACAAGTTTTATTGTTTTTAGTGGTAGTGATTTTATTCTCTTTCTATATATATACACACACATATGTGTGCA
TTCATAAATATATACAATTTTTATGAATAAAAAATTATTAGCAATCAATATTGAAAACCACTGATTTTTGTT
TATGTGAGCAAACAGCAGATTAAAAGGCTGAGATTTAGGAAACAGCACGTTAAGTCAAGTTGATAGAGGAGA
ATATGGACATTTAAAAGAGGCAGGATGATATAAAATTAGGGAAACTGGATGCAGAGACCAGATGAAGTAAGA
AAAATAGCTATCGTTTTGAGCAAAAATCACTGAAGTTTCTTGCATATGAGAGTGACATAATAAATAGGGAAA
CGTAGAAAATTGATTCACATGTATATATATATATAGAACTGATTAGACAAAGTCTAAC
TTGGGTATAGTCAGAGGAGCTTGCTGTAATTATATTGAGGTGATGGATAAAGAACTGAAGTTGATGGAAACA
ATGAAGTTAAGAAAAAAAATCGAGTAAGAGACCATTGTGGCAGTGATTGCACAGAACTGGAAAACATTGTGA
AACAGAGAGTCAGAGATGACAGCTAAAATCCCTGTCTGTGAATGAAAAGAAGGAAATTTATTGACAGAACAG
CAAATGCCTACAAGCCCCCTGTTTGGATCTGGCAATGAACGTAGCCATTCTGTGGCAATCACTTCAAACTCC
TGTACCCAAGACCCTTAGGAAGTATGTAGCACCCTCAAACCTAAAACCTCAAAGAAAGAGGTTTTAGAAGAT
ATAATACCCTTTCTTCTCCAGTTTCATTAATCCCAAAACCTCTTTCTCAAAGTATTTCCTCTATGTGTCCAC
CCCAAAGAGCTCACCTCACCATATCTCTTGAGTGGGAGCACATAGATAGGCGGTGCTACCATCTAACAGCTT
CTGAAATTCCTTTGTCATATTTTTGAGTCCCCACTAATAACCCACAAAGCAGAATAAATACCAGTTGCTCAT
GTACAATAATCACTCAACTGCTGTCTTGTAGCATACATTAATTAAGCACATTCTTTGAATAATTACTGTGTC
CAAACAATCACACTTTAAAATCTCACACTTGTGCTATCCCTTGCCCTTCTGAATGTCACTCTGTATTTTAAA
TGAAGAGATGAGGGTTGAATTTCCTGTGTTACTTATTGTTCATTTCTCGATGAGGAGTTTTCACATTCACCT
TTAGTGGAAAACACATAAGTACACATCTTACAGGAAAAATATACCAAACTGACATGTAGCATGAATGCTTGT
GCATGTAGTCATATAAAATCTTGTAGCAATGTAAACATTCTCTGATATACACATACAGATGTGTCTATATGT
CTACACAATTTCTTATGCTCCATGAACAAACATTCCATGCACACATAAGAACACACACTGTTACAGATGCAT
ACTTGAGTGCATTGACAAAATTACCCCAGTCAATCTAGAGAATTTGGATTTCTGCATTTGACTCTGTTAGCT
TTGTACATGCTGTTCATTTACTCTGGGTGATGTCTTTCCCTCATTTTGCCTTGTCTATCTTGTACTCATACT
TTAAGTCCTAACTTATATGTTATCTCAACTAAGAAGCTATTTTTTTTTTAATTTTAACTGGGCTTAAAGCCC
TGTCTATAAACTCTGCTACAATTATGGGCTCTTTCTTATAATATTTAGTGTTTTTCCTACTAATGTACTTAA
TCTGCTCATTGTATATTCCTACCACTAAATTTTAACCTCTTTTATGGTAGAGACATTGTCTTGTAAACTCTT
ATTTCCCTAGTATTTGGAGATGAAAAAAAAGATTAAATTATCCAAAATTAGATCTCTCTTTTCTACATTAT
GAGTATTACACTATCCATAGAGAAGTTTGTTTGAGACCTAAACTGAGGAACCTTTGGTTCTAAAATGACTAT
GTGATATCTTAGTATTTATAGGTCATGAGGTTCCTTCCTCTGCCTC
TGCTATAGTTTGATTAGTCAACAAGCATGTGTCATGCATTTATTCACATCAGAATTTCATACACTAATAAG
ACATAGTATCAGAAGTCAGTTTATTAGTTATATCAGTTAGGGTCCATCAAGGAAAGGACAAACCATTATCAG
TTACTCAACCTAGAATTAAATACAGCTCTTAATAGTTAATTATCCTTGTATTGGAAGAGCTAAAATATCAAA
TAAAGGACAGTGCAGAAATCTAGATGTTAGTAACATCAGAAAACCTCTTCCGCCATTAGGCCTAGAAGGGCA
GAAGGAGAAAATGTTTATACCACCAGAGTCCAGAACCAGAGCCCATAACCAGAGGTCCACTGGATTCAGTGA
GCTAGTGGGTGCTCCTTGGAGAGAGCCAGAACTGTCTAATGGGGGCATCAAAGTATCAGCCATAAAA
AACCATAAAAAAGACTGTCTGCTGTAGGAGATCCGTTCAGAGAGAGAGAGAGACCAGAAATAATCTTGC
TTATGCTTTCCCTCAGCCAGTGTTTACCATTGCAGAATGTACATGCGACTGAAAGGGTGAGGAAACCTGGGA
AATGTCAGTTCCTCAAATACAGAGAACACTGAGGGAAGGATGAGAAATAAATGTGAAAGCAGACATGAATGG
TAATTGACAGAAGGAAACTAGGATGTGTCCAGTAAATGAATAATTACAGTGTGCAGTGATTATTGCAATGAT
TAATGTATTGATAAGATAATATGAAAACACAGAATTC
```
