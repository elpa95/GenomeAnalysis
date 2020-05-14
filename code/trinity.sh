#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 6:00:00
#SBATCH -J trinity_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user elinpalm95@gmail.com

module load bioinfo-tools
module load trinity/2.9.1
module load samtools/1.10

samtools view -Sb /home/elpa6217/analysis/star/output_star_SRR6040092Aligned.out.sam \
> /home/elpa6217/analysis/trinity_new/Aligned_SRR6040092.bam

samtools sort /home/elpa6217/analysis/trinity_new/Aligned_SRR6040092.bam \
> /home/elpa6217/analysis/trinity_new/Aligned_sorted_SRR6040092.bam

Trinity --genome_guided_bam /home/elpa6217/analysis/trinity_new/Aligned_sorted_SRR6040092.bam \
--genome_guided_max_intron 10000 --max_memory 10G --CPU 4