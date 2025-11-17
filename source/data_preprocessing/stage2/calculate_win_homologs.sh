#!/bin/sh

# XXX: Point to correct locations
log_path="./logs/"
data_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/processed_data/SCPECBS3"
homologs_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/processed_data/homologs"

s1="SCPECBS3"
partition_id=1
s1_seqs="${s1}.${partition_id}.aa.fasta"
s1_dna_seqs="${s1}.${partition_id}.nt.fasta"

# python preprocess2wins.py --partition_id=${partition_id} --species1=${s1} --species2=${s1} --data_path=${homologs_path} --log_path=${homologs_path} --win_size=10
python preprocess2wins.py --partition_id=${partition_id} --species1=${s1} --species2=${s1} --data_path=${homologs_path} --log_path=${homologs_path} --win_size=30
# python preprocess2wins.py --partition_id=${partition_id} --species1=${s1} --species2=${s1} --data_path=${homologs_path} --log_path=${homologs_path} --win_size=50
# python preprocess2wins.py --partition_id=${partition_id} --species1=${s1} --species2=${s1} --data_path=${homologs_path} --log_path=${homologs_path} --win_size=75
# python preprocess2wins.py --partition_id=${partition_id} --species1=${s1} --species2=${s1} --data_path=${homologs_path} --log_path=${homologs_path} --win_size=100
# python preprocess2wins.py --partition_id=${partition_id} --species1=${s1} --species2=${s1} --data_path=${homologs_path} --log_path=${homologs_path} --win_size=150