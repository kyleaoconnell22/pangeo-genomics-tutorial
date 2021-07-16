Launch the BinderHub environment by opening the link in a new browser tab [![Binder](https://binder.pangeo.io/badge_logo.svg)](https://binder.pangeo.io/v2/gh/kyleaoconnell22/pangeo-genomics-tutorial/main).

Test out the following commands.
First, set up your directory structure and download files with this command. You can peek at what it is doing by typing `cat scripts/setup.sh`.
```
sh scripts/setup.sh
```

Now we are going to trim our raw fastq files using trimmomatic, and then map them to a reference genome using bwa. We will have to run each command twice for the two samples, but with some bash scriping we could use wildcards to automate these commands.

```
while read samp; do trimmomatic PE -threads 2 data/raw_fastq/"$samp"_1.fastq data/raw_fastq/"$samp"_2.fastq data/trimmed/"$samp"_trimmed_1.fastq data/trimmed/"$samp"_trimmed_2.fastq data/trimmed/"$samp"_trimmed_2_unpaied.fastq  data/trimmed/"$samp"_trimmed_1_unpaired.fastq ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:keepBothReads LEADING:3 TRAILING:3 MINLEN:36 ; done <scripts/samples
```
Then we do the same for bwa to map to the reference genome
```
while read samp; do bwa mem data/reference/M_chelonae_NZ_CP007220.fasta  data/trimmed/"$samp"_trimmed_1.fastq  data/trimmed/"$samp"_trimmed_2.fastq; ; done <scripts/samples
```
