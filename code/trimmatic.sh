#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:45:00
#SBATCH -J trimming_RNA
#SBATCH --mail-type=ALL
#SBATCH --mail-user elinpalm95@gmail.com

module load bioinfo-tools
module load trimmomatic/0.36

java -jar $TRIMMOMATIC_HOME/trimmomatic.jar PE -threads 2 \
/home/elpa6217/transcriptome/untrimmed/SRR6040095_scaffold_06.1.fastq.gz \
/home/elpa6217/transcriptome/untrimmed/SRR6040095_scaffold_06.2.fastq.gz \
/home/elpa6217/analysis/transcriptome/trimming/forward_paired.fq.gz \
/home/elpa6217/analysis/transcriptome/trimming/forward_unpaired.fq.gz  \
/home/elpa6217/analysis/transcriptome/trimming/reverse_paired.fq.gz \
/home/elpa6217/analysis/transcriptome/trimming/reverse_unpaired.fq.gz  \
ILLUMINACLIP:/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36