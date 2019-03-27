#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

#mkdir -p "./pascal_voc_seg/VOCdevkit/mydata4/tfrecord" #if files are exist, then no errors. if files are not exist, then create them. 


#python ./build_voc2012_data.py \
#  --image_folder="./pascal_voc_seg/VOCdevkit/mydata4/full-VOC/JPEGImages" \
#  --semantic_segmentation_folder="./pascal_voc_seg/VOCdevkit/mydata4/full-VOC/SegmentationClass" \
#  --list_folder="./pascal_voc_seg/VOCdevkit/mydata4/full-VOC/ImageSets/Segmentation" \
#  --image_format="jpg" \
#  --output_dir="./pascal_voc_seg/VOCdevkit/mydata4/tfrecord"




mkdir -p "./pascal_voc_seg/VOCdevkit/mydata5/tfrecord" #if files are exist, then no errors. if files are not exist, then create them. 


python ./build_voc2012_data.py \
  --image_folder="./pascal_voc_seg/VOCdevkit/mydata5/full-VOC/JPEGImages" \
  --semantic_segmentation_folder="./pascal_voc_seg/VOCdevkit/mydata5/full-VOC/SegmentationClass" \
  --list_folder="./pascal_voc_seg/VOCdevkit/mydata5/full-VOC/ImageSets/Segmentation" \
  --image_format="jpg" \
  --output_dir="./pascal_voc_seg/VOCdevkit/mydata5/tfrecord"
