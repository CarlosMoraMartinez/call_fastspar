#!/bin/bash

OUTDIR=test1000
rm -rf $OUTDIR

python call_fastspar.py -o $OUTDIR \
    -m /home/carmoma/Documents/EarlyCause/results/descriptive1/METADATA_FILT.tsv \
    -a /home/carmoma/Documents/EarlyCause/results/descriptive1/OTUs_FILT.tsv \
    -s Time,Group \
    --nrand 1000 \
    --iterations 50 \
    --exclusion_iterations 10 \
    --exclusion_threshold 0.1 \
    --seed 123 \
    --iterations_parallel 10 \
    --permutations 1000 \
    --threads 12