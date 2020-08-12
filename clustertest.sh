#!/bin/bash
#$ -l mem_free=1G
#$ -l h_vmem=1G
#$ -l h_rt=24:00:00
#$ -cwd
#$ -N clustertest
#$ -j y
#$ -R y
#$ -t 1-100
Rscript clustertest.R $SGE_TASK_ID 