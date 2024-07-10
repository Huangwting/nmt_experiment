#!/bin/bash

project_dir=/home/cordercorder/nmt_experiment

export PYTHONPATH=${project_dir}:${PYTHONPATH}

python -u ${project_dir}/nmt/train.py \
    --config-path ${project_dir}/config.yaml
