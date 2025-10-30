#!/bin/sh

s="S_cerevisiae"
python cai_subset.py --expr_th_perc=0.05 --species="$s" --data_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/processed_data" --expr_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/raw_data/SCPECBS/expr/$s.csv" &
python cai_subset.py --expr_th_perc=0.1 --species="$s" --data_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/processed_data" --expr_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/raw_data/SCPECBS/expr/$s.csv" &
python cai_subset.py --expr_th_perc=0.15 --species="$s" --data_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/processed_data" --expr_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/raw_data/SCPECBS/expr/$s.csv" &
wait

s="S_pombe"
python cai_subset.py --expr_th_perc=0.05 --species="$s" --data_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/processed_data" --expr_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/raw_data/SCPECBS/expr/$s.csv" &
python cai_subset.py --expr_th_perc=0.1 --species="$s" --data_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/processed_data" --expr_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/raw_data/SCPECBS/expr/$s.csv" &
python cai_subset.py --expr_th_perc=0.15 --species="$s" --data_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/processed_data" --expr_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/raw_data/SCPECBS/expr/$s.csv" &
wait

s="E_coli"
python cai_subset.py --expr_th_perc=0.05 --species="$s" --data_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/processed_data" --expr_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/raw_data/SCPECBS/expr/$s.csv" &
python cai_subset.py --expr_th_perc=0.1 --species="$s" --data_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/processed_data" --expr_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/raw_data/SCPECBS/expr/$s.csv" &
python cai_subset.py --expr_th_perc=0.15 --species="$s" --data_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/processed_data" --expr_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/raw_data/SCPECBS/expr/$s.csv" &
wait

s="B_subtilis"
python cai_subset.py --expr_th_perc=0.05 --species="$s" --data_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/processed_data" --expr_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/raw_data/SCPECBS/expr/$s.csv" &
python cai_subset.py --expr_th_perc=0.1 --species="$s" --data_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/processed_data" --expr_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/raw_data/SCPECBS/expr/$s.csv" &
python cai_subset.py --expr_th_perc=0.15 --species="$s" --data_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/processed_data" --expr_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/raw_data/SCPECBS/expr/$s.csv" &
wait 
