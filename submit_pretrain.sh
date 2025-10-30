#!/bin/bash

#SBATCH --job-name=pretrain_win30
#SBATCH --output=/home/u5aw/annieyntang.u5aw/ReverTra/logs/pretrain_win30_%j.out
#SBATCH --gpus=1
#SBATCH --ntasks-per-gpu=1
#SBATCH --time=20:00:00

cd /home/u5aw/annieyntang.u5aw/ReverTra
source ~/miniforge3/bin/activate
conda activate mBART

# for winsize in 30 50 100 150
# do
#     CUDA_VISIBLE_DEVICES=0 python -m source.models.COBaBExRi.train --config_path=./configs/wins_configs/win${winsize}/Pretrain_config.json
# done

winsizes=(30 50 100 150)
max_parallel=4   # how many to run at once on GPU:0

sem=0
for w in "${winsizes[@]}"; do
  CUDA_VISIBLE_DEVICES=0 python -m source.models.COBaBExRi.train \
    --config_path=./configs/wins_configs/win${w}/Pretrain_config.json \
    > logs/train_win${w}.out 2>&1 &
  ((sem++))
  if (( sem % max_parallel == 0 )); then wait; fi
done
wait
