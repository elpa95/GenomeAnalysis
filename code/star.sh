#!/bin/bash -l
#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 4
#SBATCH -t 10:00:00
#SBATCH -J star_alignment
#SBATCH --mail-type=ALL
#SBATCH --mail-user elinpalm95@gmail.com

# Load modules
module load bioinfo-tools
module load star/2.7.2b

#Create index
star -- runThreadN 4 --runMode genomeGenerate --genomeSAindexNbases 13 \
--genomeDir /home/elpa6217/analysis/star/index \
--genomeFastaFiles /home/elpa6217/analysis/pilon/correction_assembly.fasta


#SRR6040095
STAR --runThreadN 4 --readFilesCommand zcat --genomeDir /home/elpa6217/analysis/star/index --readFilesIn /home/elpa6217/analysis/transcriptome/trimming/forward_paired.fq.g$--outFileNamePrefix /home/elpa6217/analysis/star/output_star_SRR6040095

#SRR6040092
STAR --runThreadN 4 --readFilesCommand zcat --genomeDir /home/elpa6217/analysis/star/index --readFilesIn /home/elpa6217/transcriptome/trimmed/SRR6040092_scaffold_06.1.fast$--outFileNamePrefix /home/elpa6217/analysis/star/output_star_SRR6040092

#SRR6040093
STAR --runThreadN 4 --readFilesCommand zcat --genomeDir /home/elpa6217/analysis/star/index --readFilesIn /home/elpa6217/transcriptome/trimmed/SRR6040093_scaffold_06.1.fast$--outFileNamePrefix /home/elpa6217/analysis/star/output_star_SRR6040093

#SRR6040094
STAR --runThreadN 4 --readFilesCommand zcat --genomeDir /home/elpa6217/analysis/star/index --readFilesIn /home/elpa6217/transcriptome/trimmed/SRR6040094_scaffold_06.1.fast$--outFileNamePrefix /home/elpa6217/analysis/star/output_star_SRR6040094

#SRR6040096
STAR --runThreadN 4 --readFilesCommand zcat --genomeDir /home/elpa6217/analysis/star/index --readFilesIn /home/elpa6217/transcriptome/trimmed/SRR6040096_scaffold_06.1.fast$--outFileNamePrefix /home/elpa6217/analysis/star/output_star_SRR6040096
#SRR6040097                                                                                                                                                                 STAR --runThreadN 4 --readFilesCommand zcat --genomeDir /home/elpa6217/analysis/star/index --readFilesIn /home/elpa6217/transcriptome/trimmed/SRR6040097_scaffold_06.1.fast$--outFileNamePrefix /home/elpa6217/analysis/star/output_star_SRR6040097

#SRR6156066                                                                                                                                                                 STAR --runThreadN 4 --readFilesCommand zcat --genomeDir /home/elpa6217/analysis/star/index --readFilesIn /home/elpa6217/transcriptome/trimmed/SRR6156066_scaffold_06.1.fast$--outFileNamePrefix /home/elpa6217/analysis/star/output_star_SRR6156066

#SRR6156067                                                                                                                                                                 STAR --runThreadN 4 --readFilesCommand zcat --genomeDir /home/elpa6217/analysis/star/index --readFilesIn /home/elpa6217/transcriptome/trimmed/SRR6156067_scaffold_06.1.fast$--outFileNamePrefix /home/elpa6217/analysis/star/output_star_SRR6156067

#SRR6156069                                                                                                                                                                 STAR --runThreadN 4 --readFilesCommand zcat --genomeDir /home/elpa6217/analysis/star/index --readFilesIn /home/elpa6217/transcriptome/trimmed/SRR6156069_scaffold_06.1.fast$--outFileNamePrefix /home/elpa6217/analysis/star/output_star_SRR6156069