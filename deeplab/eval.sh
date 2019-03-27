#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Move one-level up to tensorflow/models/research directory.
cd ..

# Update PYTHONPATH.
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim

#python deeplab/eval.py \
#    --logtostderr \
#    --eval_split="val" \
#    --model_variant="xception_65" \
#    --atrous_rates=6 \
#    --atrous_rates=12 \
#    --atrous_rates=18 \
#    --output_stride=16 \
#    --decoder_output_stride=4 \
#    --eval_crop_size=700 \
#    --eval_crop_size=700 \
#    --eval_batch_size=1 \
#    --dataset="pascal_voc_seg" \
#    --checkpoint_dir='./deeplab/mydata5/my_train_logdir2' \
#    --eval_logdir='./deeplab/mydata5/my_result_test_output2' \
#    --dataset_dir='./deeplab/datasets/pascal_voc_seg/VOCdevkit/mydata5/tfrecord'


#tricks

#python deeplab/eval.py \
#    --logtostderr \
#    --eval_split="val" \
#    --model_variant="xception_65" \
#    --atrous_rates=6 \
#    --atrous_rates=12 \
#    --atrous_rates=18 \
#    --output_stride=8 \
#    --decoder_output_stride=4 \
#    --eval_crop_size=700 \
#    --eval_crop_size=700 \
#    --eval_batch_size=1 \
#    --dataset="pascal_voc_seg" \
#    --checkpoint_dir='./deeplab/mydata5/my_train_logdir2' \
#    --eval_logdir='./deeplab/mydata5/my_result_test_output2' \
#    --dataset_dir='./deeplab/datasets/pascal_voc_seg/VOCdevkit/mydata5/tfrecord'


#use mine model-250000
#use mine model-250000 2th

python deeplab/eval.py \
    --logtostderr \
    --eval_split="val" \
    --model_variant="xception_65" \
    --atrous_rates=6 \
    --atrous_rates=12 \
    --atrous_rates=18 \
    --output_stride=16 \
    --decoder_output_stride=4 \
    --eval_crop_size=700 \
    --eval_crop_size=700 \
    --eval_batch_size=1 \
    --dataset="pascal_voc_seg" \
    --checkpoint_dir='./deeplab/mydata5/my_train_logdir_mymodel2' \
    --eval_logdir='./deeplab/mydata5/my_result_test_output_mymodel2' \
    --dataset_dir='./deeplab/datasets/pascal_voc_seg/VOCdevkit/mydata5/tfrecord'
