#!/bin/bash
#PBS -q home-alexandrov
#PBS -l nodes=1:ppn=28:skylake
#PBS -l walltime=120:00:00
#PBS -m bea
#PBS -M yutong@ucsd.edu
#PBS -o collect1Mreads.o
#PBS -e collect1Mreads.e
#PBS -N collect1Mreads
#PBS -V

cd /home/yutong/tissue_types_shared_restr/brain/23334667_brastianos_brain

cat SRRlist |while read line; do seqtk sample paired_end/${line}_1.fastq.gz 1000000 > 1Mreads/${line}_1.fastq_1M;done
cat SRRlist |while read line; do seqtk sample paired_end/${line}_2.fastq.gz 1000000 > 1Mreads/${line}_2.fastq_1M;done
