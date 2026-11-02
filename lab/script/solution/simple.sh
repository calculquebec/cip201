#!/bin/bash
#SBATCH --job-name=simple
#SBATCH --mem=1500M
#SBATCH --time=00:05:00

module load python/3.11.5 r/4.6.1

python --version

echo
echo Sleep 60 seconds...
echo
sleep 60

R --version
