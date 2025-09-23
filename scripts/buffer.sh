# ficker buffer
export CUDA_VISIBLE_DEVICES=0;
python buffer.py \
    --dataset=flickr \
    --train_epochs=10 \
    --num_experts=20 \
    --buffer_path='buffer' \
    --image_encoder=nfnet \
    --text_encoder=bert \
    --image_size=224


# coco buffer
export CUDA_VISIBLE_DEVICES=0;
python buffer.py \
    --dataset=flickr \
    --train_epochs=10 \
    --num_experts=20 \
    --buffer_path='buffer' \
    --image_encoder=nfnet \
    --text_encoder=bert \
    --image_size=224