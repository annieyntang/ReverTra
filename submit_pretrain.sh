#!/bin/bash

#SBATCH --job-name=pretrain
#SBATCH --output=/scratch/u5aw/annieyntang.u5aw/ReverTra/logs/pretrain_%j.out
#SBATCH --gpus=1
#SBATCH --ntasks-per-gpu=1
#SBATCH --time=24:00:00


cd /home/u5aw/annieyntang.u5aw/ReverTra
source ~/miniforge3/bin/activate
conda activate mBART


winsizes=(30)
max_parallel=4   # how many to run at once on GPU:0
training_stage=pretrain
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
LOGROOT=/scratch/u5aw/annieyntang.u5aw/ReverTra/logs

rm -f /scratch/u5aw/annieyntang.u5aw/ReverTra/logs/pretrain_${SLURM_JOB_ID}.out


sem=0
for w in "${winsizes[@]}"; do

  LOGDIR=${LOGROOT}/win${w}
  mkdir -p ${LOGDIR}

  LOGFILE=${LOGDIR}/${training_stage}_${TIMESTAMP}_${SLURM_JOB_ID}.out

  CUDA_VISIBLE_DEVICES=0 python -m source.models.COBaBExRi.train --config_path=./configs/wins_configs/win${w}/Pretrain_config.json \
    > ${LOGFILE} 2>&1 &

  ((sem++))
  if (( sem % max_parallel == 0 )); then wait; fi
done
wait
