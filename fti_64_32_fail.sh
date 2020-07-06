#!/bin/bash
#SBATCH -t 00:15:00
#SBATCH -o res_64_fail.txt
#SBATCH -N 32
#SBATCH --ntasks-per-node=2
module load openmpi/4.0.0
export LD_LIBRARY_PATH=/usr/workspace/koparasy/LENNY/usr/lib64/:$LD_LIBRARY_PATH
mkdir -p /p/lustre1/koparasy/LENNY/
mpirun -np 64 ./miniVite config.L1.64.32.fi.fti -p 3 -l -n 128000 -LEVEL 1 -CP 3
