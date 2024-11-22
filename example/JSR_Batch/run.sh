#!/bin/bash
#PBS -N JSR_calculation
#PBS -l nodes=1:ppn=4
#PBS -l walltime=00:30:00
#PBS -l mem=4g
#PBS -q h07c02


EXEC=/puhome/21093985d/UHPC_RF_Master_1_copy/app/JSR/JSR_calculation
INPUT=/puhome/21093985d/UHPC_RF_Master_1_copy/example/JSR_Batch/input.txt
mkdir -p -- "results"
OUTFILE=/puhome/21093985d/UHPC_RF_Master_1_copy/example/JSR_Batch/results/result.out

# Run your executable with the input file

stdbuf -oL $EXEC $INPUT 2>&1 | tee $OUTFILE


