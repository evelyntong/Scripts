#!/bin/bash
cat PRJ* |while read line; do wget $line;done
