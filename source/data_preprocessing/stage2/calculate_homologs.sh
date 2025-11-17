#!/bin/sh

# XXX: Point to correct locations
s1="SCPECBS3"
log_path="./logs/"
data_path="/home/u5aw/annieyntang.u5aw/ReverTra/data/processed_data"

echo $s1
echo $1
partition_id=$1
s1_seqs="${s1}.${partition_id}.aa.fasta"
s1_dna_seqs="${s1}.${partition_id}.nt.fasta"
s1_pkl="${s1}.species.pkl"

homologs_path="${data_path}/homologs"
mkdir -p ${homologs_path}

cp ${data_path}/${s1}/${s1_seqs} ${homologs_path}
cp ${data_path}/${s1}/${s1_dna_seqs} ${homologs_path}
cp ${data_path}/${s1}/${s1_pkl} ${homologs_path}

makeblastdb -in  ${homologs_path}/${s1_seqs} -parse_seqids  -dbtype prot

blastp -query ${homologs_path}/${s1_seqs} -db ${homologs_path}/${s1_seqs} -evalue 0.01 -outfmt "6 qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore qseq sseq" > ${homologs_path}/blast_${s1}_${s1}_${partition_id}_tbl

echo "Done blast"

python preprocess_homologs.py --partition_id=${partition_id} --species1=${s1} --species2=${s1} --data_path=${homologs_path} --log_path=${homologs_path}
# rm ${homologs_path}/blast_${s1}_${s1}_${partition_id}_tbl

# rm ${homologs_path}/${s1}.${partition_id}.*.fasta
