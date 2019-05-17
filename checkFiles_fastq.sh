#!/bin/bash
#checkFiles.sh

cut -d$'\t' -f2 ../$1_$2_$3sample.txt|sed '1d'>$3samplelist_$1.txt
cut -d$'\t' -f3  ../$1_$2_$3sample.txt|sed '1d'>n
cat n>>$3samplelist_$1.txt
rm n
cat $3samplelist_$1.txt|while read line;do ls -lh ../paired_end/${line}_1.fastq.gz>>$3check_$1.txt;done
cat $3samplelist_$1.txt|while read line;do ls -lh ../paired_end/${line}_2.fastq.gz>>$3check_$1.txt;done
wc -l $3check_$1.txt
wc -l $3samplelist_$1.txt
