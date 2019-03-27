#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Move one-level up to tensorflow/models/research directory.
cd ..

# Update PYTHONPATH.
export PYTHONPATH=$PYTHONPATH:`pwd`:`pwd`/slim


# From tensorflow/models/research/
#python deeplab/train.py \
#    --logtostderr \
#    --training_number_of_steps=250000 \
#    --train_split="train" \
#    --model_variant="xception_65" \
#    --atrous_rates=6 \
#    --atrous_rates=12 \
#    --atrous_rates=18 \
#    --output_stride=16 \
#    --decoder_output_stride=4 \
#    --train_crop_size=513 \
#    --train_crop_size=513 \
#    --train_batch_size=1 \
#    --fine_tune_batch_norm=False \
#    --dataset="pascal_voc_seg" \
#    --tf_initial_checkpoint='./deeplab/deeplabv3_pascal_train_aug/model.ckpt' \
#    --train_logdir='./deeplab/mydata5/my_train_logdir2' \
#    --dataset_dir='./deeplab/datasets/pascal_voc_seg/VOCdevkit/mydata5/tfrecord'




#use mine model-250000
#use mine model-250000 2th

# From tensorflow/models/research/
python deeplab/train.py \
    --logtostderr \
    --training_number_of_steps=40000 \
    --train_split="train" \
    --model_variant="xception_65" \
    --atrous_rates=6 \
    --atrous_rates=12 \
    --atrous_rates=18 \
    --output_stride=16 \
    --decoder_output_stride=4 \
    --train_crop_size=513 \
    --train_crop_size=513 \
    --train_batch_size=1 \
    --fine_tune_batch_norm=False \
    --dataset="pascal_voc_seg" \
    --tf_initial_checkpoint='./deeplab/my_deeplabv3_mydata5_train2/model.ckpt-250000' \
    --train_logdir='./deeplab/mydata5/my_train_logdir_mymodel2' \
    --dataset_dir='./deeplab/datasets/pascal_voc_seg/VOCdevkit/mydata5/tfrecord'
