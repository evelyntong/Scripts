#!/bin/bash
cat SRR*|while read line
do
	fasterq-dump $line
done
