#!/bin/sh

mkdir -p ../../../data/logs
python preprocess.py \
	--rawdata_path=../../../data/raw_data/SCPECBS \
	--cdhit_exec=/home/u5aw/annieyntang.u5aw/miniforge3/envs/mBART/bin/cd-hit \
	--data_path=../../../data/processed_data \
	--log_path=../../../data/logs/ \
	--agg_seqs_path=../../../data/logs/agg_seqs.temp.fasta \
	--cdhit_log=../../../data/logs/cdhit.log 
