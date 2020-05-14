#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:15:00
#SBATCH -J sort
#SBATCH --mail-type=ALL
#SBACTH --mail-user elinpalm95@gmail.com

module load bioinfo-tools
module load samtools/1.10

samtools sort /home/elpa6217/analysis/BWA/BWA_illumina.bam \
> /home/elpa6217/analysis/BWA/XBWA_sorted.bam