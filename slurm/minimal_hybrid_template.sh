#!/bin/bash                                                                     
#SBATCH -J job_name			# Descriptive job name
#SBATCH --nodes=4			# Number of nodes
#SBATCH --ntasks=16			# Number of mpi procs
#SBATCH --ntasks-per-node=4		# Number of mpi procs per node
#SBATCH --cpus-per-task=2		# Number of omp threads per mpi proc
#SBATCH -t 01-02:03:00			# Job time 1 day, 2hrs, 3min
#SBATCH -p compute			# Request from compute parition

## Giving slurm-out something to think about
echo "Date              = $(date)"
echo "Hostname          = $(hostname -s)"
echo "Working Directory = $(pwd)"
echo ""
echo "Number of Nodes Allocated      = $SLURM_JOB_NUM_NODES"
echo "Number of Tasks Allocated      = $SLURM_NTASKS"
echo "Number of Cores/Task Allocated = $SLURM_CPUS_PER_TASK"

## Load modules
module purge
module load gcc/9.3.0 openmpi/3.1.6
module list

## Run mpi exe: 16mpi*2omp = 32 total procs
export OMP_NUM_THREADS=2
mpirun -n 16 hybrid_exec.exe

