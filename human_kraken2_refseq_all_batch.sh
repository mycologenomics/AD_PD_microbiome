#!/bin/sh
#PBS -l walltime=72:00:00
#PBS -l select=1:ncpus=16:mem=64gb
## This tells the batch manager to re-run job with parameter varying from 1 to N in steps on step- size
#PBS -J 1-6

/rds/general/project/fisher-aspergillus-analysis/live/clarisse/human_brain_kraken2_scripts/human_kraken2_refseq_all.sh $(head -$PBS_ARRAY_INDEX /rds/general/project/fisher-aspergillus-analysis/live/clarisse/human_brain_kraken2_scripts/human_kraken2_list.txt | tail -1)


