#!/bin/bash                                                                     
#SBATCH -J job_name			# Descriptive job name
#SBATCH --nodes=4			# Number of nodes
#SBATCH --ntasks=16			# Number of mpi procs
#SBATCH --ntasks-per-node=4		# Number of mpi procs per node
#SBATCH -t 01-02:03:00			# Job time 1 day, 2hrs, 3min
#SBATCH -p compute			# Request from compute parition

## Giving slurm-out something to think about
echo "Date              = $(date)"
echo "Hostname          = $(hostname -s)"
echo "Working Directory = $(pwd)"
echo ""
echo "Number of Nodes Allocated      = $SLURM_JOB_NUM_NODES"
echo "Number of Tasks Allocated      = $SLURM_NTASKS"

## Load modules
module purge
module load gcc/9.3.0 openmpi/3.1.6

## Run mpi exe: write output to output.txr
mpirun -n 16 mpi_test.exe > output.txt

