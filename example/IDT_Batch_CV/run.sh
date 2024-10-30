#!/bin/bash
#PBS -N IDT_calculation
#PBS -l nodes=1:ppn=4
#PBS -l walltime=00:30:00
#PBS -l mem=4g
#PBS -q h07c02


EXEC=/puhome/21093985d/UHPC_RF_Master_1/app/ConstantVolume/IDT_calculation_CV
INPUT=/puhome/21093985d/UHPC_RF_Master_1/example/IDT_Batch_CV/input.txt
mkdir -p -- "results"
OUTFILE=/puhome/21093985d/UHPC_RF_Master_1/example/IDT_Batch_CV/results/result.out

# Run your executable with the input file

stdbuf -oL $EXEC $INPUT 2>&1 | tee $OUTFILE


