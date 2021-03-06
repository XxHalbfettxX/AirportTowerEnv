#!/bin/bash -l
#SBATCH --job-name=AirportTowerEnvSingle
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=100
#SBATCH --time=05:00:00
#SBATCH --mem=100G
# node the job ran on
echo "Job ran on:" $(hostname)
# load the relevant modules
module load Miniconda3
conda activate AirportTowerEnv
# run the simulation
python3 single_agent_no_hp_opt.py