#!/bin/sh
#SBATCH -p batch
#SBATCH -t 02-00:00:00
#SBATCH -N 1
#SBATCH -o slurm-%A.out # STDOUT
#SBATCH -e slurm-%A.err # STDERR

./commit.sh Dataset/Facebook.txt 3 10 1 600
