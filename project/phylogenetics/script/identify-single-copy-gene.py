""" process the raw output from "synergy" to identify single copy genes
Bin He
2019-10-20
"""

import re

infile = "../data/all-output.txt"
outfile = "../output/single-copy-gene-list.txt"
OUT = open(outfile, 'w')

with open(infile) as fp:         # read the raw file
    for line in fp: # iterate over all lines in file
        if line.startswith(">"): # enter a record
            line = next(fp)      # read the next line
            gene = line.split() # the next line encodes gene info
            """ the 2nd and 3rd numbers represent the number of genes and 
            number of taxa representing these genes. obviously, we want these two
            numbers to be equal for our single-copy gene family.
            """
            if re.search(r'Clus|Calb',line) and re.search(r'Scer',line) and gene[1] == gene[2]:
                """ gene must be present in S. cerevisiae
                and it must be present in either C. albicans or C. lusitaniae
                """
                while not line.startswith("Duplication"):
                    line = next(fp)
                if not re.search(r"1", line):
                    genename = [x for x in gene if x.startswith("Scer")] # pick out the Scer gene name
                    OUT.write(','.join(genename)) # print the gene name. this should be a list of one element
