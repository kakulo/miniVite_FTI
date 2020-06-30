#!/bin/bash
#SBATCH --mail-user=lguo4@ucmerced.edu
#SBATCH --mail-type=ALL
#SBATCH --export=ALL
#SBATCH -t 00:15:00
#SBATCH -p RM
#SBATCH -o res_64_fail.txt
#SBATCH -N 32
#SBATCH --ntasks-per-node=2
export PATH="/home/azguolu/software/ompi-4.0.0/bin/:$PATH"

#mpirun -np 512 ./test_HPCCG config.L1.512.16.fi.fti 128 128 32 5 -level 1 -procfi || mpirun -np 512 ./test_HPCCG config.L1.512.16.fi.fti 128 128 32 5 -level 1 
mpirun -np 64 ./miniVite config.L1.64.32.fi.fti -p 3 -l -n 128000 -LEVEL 1 -CP 3
