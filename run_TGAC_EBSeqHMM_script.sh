#!/bin/bash
#
# SLURM script to launch kallisto index
#
#SBATCH -p nbi-long # partition (queue)
#SBATCH -N 1 # number of nodes
#SBATCH -n 1 # number of cores
#SBATCH --mem 500000 # memory pool for all cores (MB) # this job needs lots of memory
#SBATCH -t 7-00:00 # time (D-HH:MM)
#SBATCH -o /nbi/Research-Groups/NBI/Cristobal-Uauy/PB_AFLF/control_timecourse/TGAC_kallisto_analysis/kallisto_results_bootstrap/slurm_output/EBSeqHMM08_09_2016.%N.%j.out # STDOUT
#SBATCH -e /nbi/Research-Groups/NBI/Cristobal-Uauy/PB_AFLF/control_timecourse/TGAC_kallisto_analysis/kallisto_results_bootstrap/slurm_output/EBSeqHMM08_09_2016.%N.%j.err # STDERR
#SBATCH -J EBSeq-HMM
#SBATCH --mail-type=END,FAIL # notifications for job done & fail
#SBATCH --mail-user=philippa.borrill@jic.ac.uk # send-to address


cd /nbi/Research-Groups/NBI/Cristobal-Uauy/PB_AFLF/control_timecourse/scripts/

source R-3.1.0

Rscript TGAC_EBSeqHMM_script.R

