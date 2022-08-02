#!/bin/bash                                                                     
#SBATCH -J job_name			# Descriptive job name
#SBATCH --nodes=4			# Number of nodes
#SBATCH -t 01-02:03:00			# Job time 1 day, 2hrs, 3min
#SBATCH -p compute			# Request from compute parition

## Load modules
module purge
module load gcc/9.3.0 openmpi/3.1.6

## Run mpi exe
mpirun -n 32 mpi_test.exe > output.txt
