#!/bin/bash

cd ../tools

python convert_prima_to_coco.py \
    --prima_datapath ../data/wob \
    --anno_savepath ../data/wob/annotations.json 

python train_net.py \
    --dataset_name          wob-layout \
    --json_annotation_train ../data/wob/annotations-train.json \
    --image_path_train      ../data/wob/Images \
    --json_annotation_val   ../data/wob/annotations-val.json \
    --image_path_val        ../data/wob/Images \
    --config-file           ../configs/wob/mask_rcnn_R_50_FPN_3x.yaml \
    OUTPUT_DIR  ../outputs/wob/mask_rcnn_R_50_FPN_3x/ \
    SOLVER.IMS_PER_BATCH 2 
