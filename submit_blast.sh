#!/bin/bash

#SBATCH --job-name=blast_all
#SBATCH --output=/home/u5aw/annieyntang.u5aw/ReverTra/logs/blast_all_%j.out
#SBATCH --gpus=1
#SBATCH --ntasks-per-gpu=1
#SBATCH --time=20:00:00

cd /home/u5aw/annieyntang.u5aw/ReverTra
source ~/miniforge3/bin/activate
conda activate mBART

cd /home/u5aw/annieyntang.u5aw/ReverTra/source/data_preprocessing/stage2
./calculate_homologs.sh 0 &
./calculate_homologs.sh 1 &
./calculate_homologs.sh 2 &

wait
