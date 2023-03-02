#!/bin/bash

cd ../tools

python3 train_net.py \
    --dataset_name          wob-item \
    --json_annotation_train ../data/wob/train.json \
    --image_path_train      ../data/wob/ \
    --json_annotation_val   ../data/wob/test.json \
    --image_path_val        ../data/wob/ \
    --config-file           ../configs/prima/mask_rcnn_R_50_FPN_3x.yaml \
    OUTPUT_DIR  ../outputs/wob/mask_rcnn_R_50_FPN_3x/ \
    SOLVER.IMS_PER_BATCH 2 
