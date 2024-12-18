MODEL=resnet18
python nanosam2/tools/train.py --images /media/steffen/Data/Downloads/SA1/raw \
 --num_epochs 20 \
 --learning_rate 0.0005 \
 --sam2_config sam2.1_hiera_s \
 --teacher_checkpoint sam2_checkpoints/sam2.1_hiera_small.pt \
 --nanosam2_config nanosam2.1_${MODEL} \
 --output_dir results/sam2.1_hiera_s_${MODEL}_qat \
 --num_images 20000 \
 --log_interval 100 \
 --batch_size 12 \
 --coco_root /media/steffen/Data/Downloads/Coco/val2017 \
 --coco_ann /media/steffen/Data/Downloads/Coco/annotations/instances_val2017.json \
 --eval_interval 100 \
 --loss l1
