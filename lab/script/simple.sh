#!/bin/bash
#SBATCH --job-name=simple
#SBATCH   # Demander 1.5 Go de mémoire / Request 1.5 GB of RAM
#SBATCH   # Demander 5 minutes / Request 5 minutes

module load python/3.11.5 r/4.6.1

python --version

echo
echo Sleep 60 seconds...
echo
sleep 60

R --version
