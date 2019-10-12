# Navigate the file system
You can do this by opening a file browser window side-by-side with the terminal. Use the file browser window to help you visualize what the command does. For example, to accompany the `cd Documents` command, double click the "Documents" folder in the file browser, which will also show you all of its content. Now switch back to the terminal and type `ls`, which will achieve the same effect.

```bash
cd # anything after "#" are comments and are not read by the shell
   # the first `cd` command is to change the directory to your home folder
cd Documents # now you are in "Documents"
cd ..        # ".." means parent folder. you can use it like "../Downloads"
cd Downloads # now you are in "Downloads"
cd ..        # back to the parent folder
cd ../Documents # here we used ".." to first go up one level and then descend to 
                # the Documents folder. You can do "../../" or even more.
cd /etc  # this is different from the above in that it is an "absolute path"
         # the "/" tells the shell that you are referring to the root directory
	 # UNIX file system is exactly a tree, starting from the root
pwd      # = print working directory, i.e. tells you where you are in the file system
ls       # list the content of the current directory
cd ~     # '~', which you type in by holding shift and type the key to the left of 1
         # it means the home directory
cd $HOME # $HOME is a variable that stores the patho to your home directory,
         # so effectively this does the same as `cd ~`
```

Below are some fun commands. Who says command line is boring??
```bash
xeyes
xclock
whoami
echo "Hello, I'm Bin"
curl wttr.in
curl wttr.in/shanghai
curl wttr.in/boston
curl wttr.in/iowacity,ia
```

Now let's create a folder structure and some files in them
```bash
cd ~/Documents     # change directory to the Documents folder
mkdir 2019-Bioinfo # the rest are pretty self-explanatory
mkdir test
rmdir test
cd 2019-Bioinfo/
mkdir workshop sandbox project homework # many commands can take multiple arguments at once
ls
cd sandbox/
touch a.txt b.txt c.txt
ls -l # -l flag tells `ls` to list the files and directories in "long format"
mkdir test
ls -l # notice that directories get a "d" at the beginning of the permission string, e.g. "drwx------"
echo Hello World > a.txt  # this uses the redirection function of the bash shell to redict the 
                          # output of `echo` to the file named "a.txt"
cat a.txt                 # view the content of a.txt
echo nonsense > a.txt     # note that redicting with ">" will first wipe out the original content of the
                          # file before writing the new stuff into it. Be Extremely Cautious here!
cat a.txt
echo Hello World >> a.txt # ">>" differs from ">" in that it "appends" the content to the END of the file
cat a.txt
cd test
touch a1.txt
echo Hello World >> a1.txt
rm a1.txt
cp ../a.txt ./a1.txt      # this saves you the typing, by copying the a.txt to the current folder and
                          # rename it as "a1.txt"
cat a1.txt
rm a1.txt
cp ../a.txt ./            # this command will copy "a.txt" to the current folder under the same name
mv a.txt a1.txt           # mv is just "move", which we use to rename the file here.
```

# Manipulate file
Now we will learn how to view the contents of files in different ways.

```bash
# first, let's copy the files for this exercise into your working directory
cd ~/Documents/2019-Bioinfo/sandbox
cp /group/class/BIOL4213/UNIX/frost.txt ./
cp /group/class/BIOL4213/UNIX/dna.fasta ./
# next, learn what head and tail do
head frost.txt
head -n 5 frost.txt
head -n 105 frost.txt
cat frost.txt 
tail -n 5 frost.txt 
cat dna.fasta 
cat -n dna.fasta 
# now let's learn how to use "|" (pipe) to connect commands. this is arguably 
#   one of the most useful feature of the UNIX command line
ls > test1.txt # remember ls and ">"?
cat test1.txt  # what's in this file?
sort -r test1.txt  # what does "sort" do?
ls | sort -r   # you don't have create the intermediate file "test1.txt". Pipe is enough!
# Now let's play with some big files
cp /group/class/BIOL4213/UNIX/dmel.gff.gz ./
ls -lh # the -h flag tells "ls" to list the file size in human readable format. how large is
       # the file you just downloaded?
gunzip dmel.gff.gz # this decompresses the gz file
ls -lh # can you tell what is the compression ratio (file size before and after compression)
head dmel.gff 
tail dmel.gff 
less dmel.gff  # less loads a file bit by bit, without loading the entire file into the memory
               # therefore it's much faster than any other text editors
less -S dmel.gff  # -S turns off the "wrapping" behavior. useful for viewing long table formats
wc dmel.gff    # the output shows you the number of lines, words and characters in this file
wc -l dmel.gff # -l tells wc to just count the number of lines
grep Indy dmel.gff # `grep` will search the file and output the LINES that contain "Indy"
grep Indy dmel.gff | less -S # piping the output of grep to `less -S` for easier viewing
grep -v "^#" dmel.gff | less -S # -v tells grep to output those lines WIHTOUT the pattern you specified
grep -v "^#" dmel.gff | cut -f3 | less -S # cut -f3 extracts the third column of the input. how do you 
                                          # extract the fifth column?, what about 3rd AND 4th?
grep -v "^#" dmel.gff | cut -f3 | grep "gene" | wc -l # this counts the number of "gene"-containing lines
                                                      # there is a caveat. Piiiiipe the output of grep to 
						      # `less` to see what I mean
grep -v "^#" dmel.gff | cut -f3 | sort | less -S # sort just sorts
grep -v "^#" dmel.gff | cut -f3 | sort | uniq -c # this is the magic one liner that gets the answer for us!
```
