#!/bin/bash -l

#SBATCH -A g2020008

#SBATCH -p core

#SBATCH -n 4

#SBATCH -t 21:00:00

#SBATCH -J elinpalm_canu_assembly

#SBATCH --mail-type=ALL

#SBATCH --mail-user elinpalm95@gmail.com

module load bioinfo-tools
module load canu/1.8

canu \
-p preassemble_canu_1 \
-d /home/elpa6217/analysis \
genomeSize=27m \
-pacbio-raw /home/elpa6217/SRR6037732_scaffold_06.fq.gz