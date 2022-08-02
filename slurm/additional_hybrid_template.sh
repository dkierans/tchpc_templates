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

## Using slurm parameters from top of file
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

# Run hybrid exe: (ntasks * cpus_per_tasks) total procs
mpirun -n $SLURM_NTASKS hybrid_test.exe > output.txt
