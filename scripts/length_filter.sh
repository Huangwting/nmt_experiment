#!/bin/bash

project_dir=/home/cordercorder/nmt_experiment

python -u ${project_dir}/nmt/length_filter.py \
    --src-path ${project_dir}/data/spm_corpus/train.bpe.zh-en.zh \
    --tgt-path ${project_dir}/data/spm_corpus/train.bpe.zh-en.en \
    --max-src-length 200 \
    --max-tgt-length 200 \
    --max-length-ratio 1000 \
    --output-src-path ${project_dir}/data/spm_corpus/train.bpe.filter.zh-en.zh \
    --output-tgt-path ${project_dir}/data/spm_corpus/train.bpe.filter.zh-en.en

python -u ${project_dir}/nmt/length_filter.py \
    --src-path ${project_dir}/data/spm_corpus/valid.bpe.zh-en.zh \
    --tgt-path ${project_dir}/data/spm_corpus/valid.bpe.zh-en.en \
    --max-src-length 200 \
    --max-tgt-length 200 \
    --max-length-ratio 1000 \
    --output-src-path ${project_dir}/data/spm_corpus/valid.bpe.filter.zh-en.zh \
    --output-tgt-path ${project_dir}/data/spm_corpus/valid.bpe.filter.zh-en.en
