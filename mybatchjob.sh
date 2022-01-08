#!/bin/bash
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=2G
#SBATCH --partition=sched_mit_sloan_batch
#SBATCH --time=0-00:10
#SBATCH -o /home/yuansh/clusterrepo/myoutputfile.out
#SBATCH -e /home/yuansh/clusterrepo/myerrorfile.err
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --mail-user=yuansh@mit.edu

module load julia/0.6.1

julia myscript.jl
