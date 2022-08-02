tchpc_templates/slurm
===

This folder provides useful sample files for using queuing jobs using SLURM on Research IT clusters. Read more about slurm [here](https://slurm.schedmd.com/documentation.html). Files include:
 - minimal_mpi_template.sh:
	Simple example of slurm batch file for running 32 mpi processes on 4 nodes.
 - minimal_hybrid_template.sh:
	Simple example of slurm batch file for running 16 mpi processes, each with 2 omp threads on 4 nodes.
 - additional_hybrid_template.sh:
	Slightly more advanced hybrid example. 
	Sets number of mpi and omp 'processes' from slurm parameters at start of file.
	Writes output from executional to .txt file
	Write information about batch script to slurm-[#id].out file (date, number of procs, etc)


Usage
---
Adjusting the template files to suit your requirement.
1. Create copy of preferred template file (eg example_sub.sh).
2. Adjust "#SBATCH" parameters at top of file to suit your allocation requirements.
	a. Change job_name to descriptive job name for slurm task 
	b. Adjust --nodes for required number of compute nodes. Adjust "ntasks", "ntasks-per-node" and "cpus-per-task" if applicable.
	c. Change requested time allocation.
3. Load dependencies (eg use module load "pkg")
4. Add tasks (eg mpirun ./test.exe)

From head node of a compute cluster (eg kelvin). Add to slurm queue using: 
```bash
squeue example_sub.sh
``` 

Note: You can check the slurm queue using "squeue". Or filter by username using "squeue -u username". Get information on cluster status using "sinfo".
