#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:30:00
#SBATCH -J fastaQC_pretrimmed
#SBATCH --mail-type=ALL
#SBATCH --mail-user elinpalm95@gmail.com

module load bioinfo-tools
module load FastQC/0.11.8

fastqc  -t 2 \
/home/elpa6217/illumina/*.fastq.gz \
-o /home/elpa6217/analysis/fastQC_DNA_01 \
