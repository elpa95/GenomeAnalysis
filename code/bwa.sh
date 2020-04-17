#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J BWA_mapping
#SBATCH --mail-type=ALL
#SBATCH --mail-user elinpalm95@gmail.com

module load bioinfo-tools
module load bwa/0.7.17

bwa index /home/elpa6217/analysis/preassemble_canu_1.contigs.fasta

bwa mem -t 2 /home/elpa6217/analysis/preassemble_canu_1.contigs.fasta \
/home/elpa6217/illumina/SRR6058604_scaffold_06.1P.fastq.gz \
/home/elpa6217/illumina/SRR6058604_scaffold_06.2P.fastq.gz \
> /home/elpa6217/analysis/BWA/alignment_illumina_01.sam