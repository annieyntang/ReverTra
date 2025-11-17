#!/bin/sh

# python gen_dataset.py --win_size=10  --dataset_name=SCPECBS3 &
python gen_dataset.py --win_size=30 --dataset_name=SCPECBS3 &
# python gen_dataset.py --win_size=50 --dataset_name=SCPECBS3 &
# python gen_dataset.py --win_size=75 --dataset_name=SCPECBS3 &
# python gen_dataset.py --win_size=100 --dataset_name=SCPECBS3 &
# python gen_dataset.py --win_size=150 --dataset_name=SCPECBS3 &
wait