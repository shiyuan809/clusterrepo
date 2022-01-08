#!/bin/bash
#SBATCH -n 1 #Request 4 tasks
#SBATCH -N 1 #Request 1 note
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=2G
#SBATCH -p sched_mit_sloan_batch
#SBATCH --time=0-00:10
#SBATCH -o /home/yuansh/clusterrepo/myoutputfile.out
#SBATCH -e /home/yuansh/clusterrepo/myerrorfile.err
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=yuansh@mit.edu

module load julia/1.5.2

julia myscript.jl
