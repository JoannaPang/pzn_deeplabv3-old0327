#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Move one-level up to tensorflow/models/research directory.
cd ..

# Update PYTHONPATH.
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim


#python deeplab/vis.py \
#    --logtostderr \
#    --vis_split="val" \
#    --model_variant="xception_65" \
#    --atrous_rates=6 \
#    --atrous_rates=12 \
#    --atrous_rates=18 \
#    --output_stride=16 \
#    --decoder_output_stride=4 \
#    --vis_crop_size=700 \
#    --vis_crop_size=700 \
#    --vis_batch_size=1 \
#    --max_number_of_iterations=1 \
#    --dataset="pascal_voc_seg" \
#    --checkpoint_dir='./deeplab/my_train_logdir' \
#    --vis_logdir='./deeplab/my_vis_output_test' \
#    --dataset_dir='./deeplab/datasets/pascal_voc_seg/VOCdevkit/mydata4/tfrecord'



python deeplab/vis.py \
    --logtostderr \
    --vis_split="val" \
    --model_variant="xception_65" \
    --atrous_rates=6 \
    --atrous_rates=12 \
    --atrous_rates=18 \
    --output_stride=16 \
    --decoder_output_stride=4 \
    --vis_crop_size=700 \
    --vis_crop_size=700 \
    --vis_batch_size=1 \
    --max_number_of_iterations=1 \
    --dataset="pascal_voc_seg" \
    --checkpoint_dir='./deeplab/mydata5/my_train_logdir' \
    --vis_logdir='./deeplab/mydata5/my_vis_output_test' \
    --dataset_dir='./deeplab/datasets/pascal_voc_seg/VOCdevkit/mydata5/tfrecord'
