#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user elinpalm95@gmail.com

module load bioinfo-tools
module load samtools/1.10
module load Pilon/1.22

samtools index /home/elpa6217/analysis/BWA/XBWA_sorted.bam

java -Xmx16G -jar $PILON_HOME/pilon.jar \
--genome /home/elpa6217/analysis/preassemble_canu_1.contigs.fasta \
--frags /home/elpa6217/analysis/BWA/XBWA_sorted.bam \
--output /home/elpa6217/analysis/pilon/correction_assembly