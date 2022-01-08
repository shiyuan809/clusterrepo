#!/bin/bash 
#SBATCH -n 4 #Request 4 tasks (cores)
#SBATCH -N 1 #Request 1 node
#SBATCH -t 0-00:30 #Request runtime of 30 minutes
#SBATCH -p sched_mit_sloan_interactive #Run on sched_engaging_default partition
#SBATCH --mem-per-cpu=4000 #Request 4G of memory per CPU
#SBATCH -o /home/yuansh/clusterrepo/myoutputfile.out #redirect output to output_JOBID.txt
#SBATCH -e /home/yuansh/clusterrepo/myerrorfile.err #redirect errors to error_JOBID.txt
#SBATCH --mail-type=BEGIN,END #Mail when job starts and ends
#SBATCH --mail-user=yuansh@mit.edu #email recipient

module load julia/1.5.2

julia myscript.jl
