# Setup dir structure
mkdir data data/raw_fastq data/trimmed data/reference

# Download the raw sequence data, note that it is heavily downsampled to run really fast
curl https://storage.googleapis.com/me-inbre-rnaseq-pipelinev2/data/raw_fastqSub/SRR13349122_1.fastq --output data/raw_fastq/SRR13349122_1.fastq
curl https://storage.googleapis.com/me-inbre-rnaseq-pipelinev2/data/raw_fastqSub/SRR13349122_2.fastq --output data/raw_fastq/SRR13349122_2.fastq
curl https://storage.googleapis.com/me-inbre-rnaseq-pipelinev2/data/raw_fastqSub/SRR13349123_1.fastq --output data/raw_fastq/SRR13349123_1.fastq
curl https://storage.googleapis.com/me-inbre-rnaseq-pipelinev2/data/raw_fastqSub/SRR13349123_2.fastq --output data/raw_fastq/SRR13349123_2.fastq

# Download reference genome
curl https://storage.googleapis.com/me-inbre-rnaseq-pipelinev2/data/reference/M_chelonae_NZ_CP007220.fasta --output data/reference/M_chelonae_NZ_CP007220.fasta
curl https://storage.googleapis.com/me-inbre-rnaseq-pipelinev2/data/reference/M_chelonae_NZ_CP007220.fasta.amb --output data/reference/M_chelonae_NZ_CP007220.fasta.amb
curl https://storage.googleapis.com/me-inbre-rnaseq-pipelinev2/data/reference/M_chelonae_NZ_CP007220.fasta.ann --output data/reference/M_chelonae_NZ_CP007220.fasta.ann
curl https://storage.googleapis.com/me-inbre-rnaseq-pipelinev2/data/reference/M_chelonae_NZ_CP007220.fasta.bwt --output data/reference/M_chelonae_NZ_CP007220.fasta.bwt
curl https://storage.googleapis.com/me-inbre-rnaseq-pipelinev2/data/reference/M_chelonae_NZ_CP007220.fasta.fai --output data/reference/M_chelonae_NZ_CP007220.fasta.fai
curl https://storage.googleapis.com/me-inbre-rnaseq-pipelinev2/data/reference/M_chelonae_NZ_CP007220.fasta.pac --output data/reference/M_chelonae_NZ_CP007220.fasta.pac
curl https://storage.googleapis.com/me-inbre-rnaseq-pipelinev2/data/reference/M_chelonae_NZ_CP007220.fasta.sa --output data/reference/M_chelonae_NZ_CP007220.fasta.sa

# Download barcodes for trimming
curl https://storage.googleapis.com/me-inbre-rnaseq-pipelinev2/config/TruSeq3-PE.fa --output TruSeq3-PE.fa
