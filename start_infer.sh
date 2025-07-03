#!/bin/bash

# 设置使用的GPU设备（可以根据需要修改）
export CUDA_VISIBLE_DEVICES=0

python3 infer.py \
 --config config/infer.yaml \
 --task_ids 0 \
 --input_path ./original_clips/clip_000.mp4 \
 --output_dir ./results/ \
 --crop_face_region