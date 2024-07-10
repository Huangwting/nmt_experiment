#!/bin/bash

project_dir=/home/cordercorder/nmt_experiment

python -u ${project_dir}/nmt/build_vocab.py \
    --corpus-path ${project_dir}/data/spm_corpus/train.bpe.zh-en.zh \
    --vocab-path ${project_dir}/data/spm_corpus/vocab.zh.json \

python -u ${project_dir}/nmt/build_vocab.py \
    --corpus-path ${project_dir}/data/spm_corpus/train.bpe.zh-en.en \
    --vocab-path ${project_dir}/data/spm_corpus/vocab.en.json \
