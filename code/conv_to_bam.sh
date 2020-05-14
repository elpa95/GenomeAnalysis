
#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:15:00
#SBATCH -J Conv_to_BAM
#SBATCH --mail-type=ALL
#SBATCH --mail-user elinpalm95@gmail.com

module load bioinfo-tools
module load samtools/1.10

samtools view -Sb /home/elpa6217/analysis/BWA/alignment_illumina_01.sam \
> /home/elpa6217/analysis/BWA/BWA_illumina.bam