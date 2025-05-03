#!/bin/bash

cd /content/Vim/vim

python main.py \
  --model vim_small_patch16_224_bimambav2_final_pool_mean_abs_pos_embed_with_midclstok_div2 \
  --batch-size 64 \
  --drop-path 0.05 \
  --weight-decay 0.05 \
  --lr 1e-3 \
  --num_workers 2 \
  --data-set CIFAR \
  --data-path /content/data \
  --output_dir ./output/vim_cifar_run \
  --no_amp
