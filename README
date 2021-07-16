Launch the BinderHub environment by opening this [![Binder](https://binder.pangeo.io/badge_logo.svg)](https://binder.pangeo.io/v2/gh/kyleaoconnell22/pangeo-genomics-tutorial/main) in a new browser tab
Test out the following commands.
First, set up your directory structure and download files with this command. You can peek at what it is doing by typing `cat scripts/setup.sh`.
```
sh scripts/setup.sh
```

Now we are going to trim our raw fastq files using trimmomatic, and then map them to a reference genome using bwa. We will have to run each command twice for the two samples, but with some bash scriping we could use wildcards to automate these commands.

```
for samp in 'cat scripts/samples'; do trimmomatic PE -threads 2 data/raw_fastq/$samp_1.fastq data/raw_fastq/$samp_2.fastq data/trimmed/$samp_trimmed_1.fastq data/trimmed/$samp_trimmed_2.fastq ["ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:keepBothReads LEADING:3 TRAILING:3 MINLEN:36"] ; done
```

Same for bwa to map to the reference genome

```
for samp in 'cat scripts/samples'; do bwa mem data/reference/M_chelonae_NZ_CP007220.fasta  data/trimmed/$samp_trimmed_1.fastq  data/trimmed/$samp_trimmed_2.fastq; done
```
