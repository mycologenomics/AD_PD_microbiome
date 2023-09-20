#!/bin/sh
#PBS -l walltime=48:00:00
#PBS -l select=1:ncpus=32:mem=32gb

module load anaconda3/personal 
source activate kraken2_env


kraken2 --db /rds/general/project/fisher-aspergillus-analysis/live/clarisse/newer_kraken2/kraken2_fungi_refseq_all_assemblies_db $1 --use-names --report /rds/general/project/fisher-aspergillus-results/live/Clarisse/human_brain_kraken2/$2.refseq_all.report.txt --output /rds/general/project/fisher-aspergillus-results/live/Clarisse/human_brain_kraken2/$2_refseq_all

