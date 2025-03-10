#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
<<<<<<< HEAD
#SBATCH --cpus-per-task=5      # number of processors per task
#SBATCH -J "rs3"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o rs3-slurm.%N.%j.out # STDOUT
#SBATCH -e rs3-slurm.%N.%j.err # STDERR
=======
#SBATCH --cpus-per-task=5	# number of processors per task
#SBATCH -J "rs3a"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o rs3a-slurm.%N.%j.out # STDOUT
#SBATCH -e rs3a-slurm.%N.%j.err # STDERR
>>>>>>> upstream/main

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; \
import DataProcessingTools as DPT; \
import os; \
import time; \
t0 = time.time(); \
print(time.localtime()); \
<<<<<<< HEAD
DPT.objects.processDirs(dirs=None, objtype=pyh.RPLSplit, channel=[*range(64,97)], SkipHPC=False, HPCScriptsDir = '/data/src/PyHipp/', SkipLFP=False, SkipHighPass=False, SkipSort=False); \
=======
DPT.objects.processDirs(dirs=None, objtype=pyh.RPLSplit, channel=[*range(65,97)], SkipHPC=False, HPCScriptsDir='/data/src/PyHipp/', SkipLFP=False, SkipHighPass=False, SkipSort=False); \
>>>>>>> upstream/main
print(time.localtime()); \
print(time.time()-t0);"

aws sns publish --topic-arn arn:aws:sns:ap-southeast-1:018084650241:awsnotify --message "RPLS3JobDone"
