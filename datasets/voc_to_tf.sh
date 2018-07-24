base_path="/home/deeplearning/anaconda2/envs/py27_tf/lib/python2.7/site-packages/tensorflow/models/research/deeplab/datasets/pascal_voc_seg/VOCdevkit/VOC2012/"

python ./remove_gt_colormap.py\
       --original_gt_folder="${base_path}SegmentationClass" \
       --output_dir="${base_path}SegmentationClassRaw"

python ./build_voc2012_data.py \
  --image_folder="${base_path}JPEGImages" \
  --semantic_segmentation_folder="${base_path}SegmentationClassRaw" \
  --list_folder="${base_path}ImageSets/Segmentation" \
  --image_format="jpg" \
  --output_dir="${base_path}tfrecord"
