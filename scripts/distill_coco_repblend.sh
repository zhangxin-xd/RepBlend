
export CUDA_VISIBLE_DEVICES=0;

# 100 pairs
EXP_NAME='repblend—coco-100pairs—nfnet_bert'
python distill_repblend.py --dataset=coco \
    --buffer_path='buffer/coco/nfnet_bert/InfoNCE' --image_encoder=nfnet --text_encoder=bert \
    --merge_loss_branches \
    --syn_steps=8 --expert_epochs=1 --max_start_epoch=2 \
    --lr_img=1000 --lr_txt=1000 --lr_lr=1e-2 \
    --lr_teacher_img 0.1 --lr_teacher_txt 0.1 \
    --lr_sim=5.0 --sim_type lowrank --sim_rank 10 --alpha 1.0 \
    --num_queries 99 --mini_batch_size=20 \
    --loss_type WBCE --name ${EXP_NAME} --Iteration 3000 --epoch_eval_train 100

# 200 pairs
EXP_NAME='repblend—coco-200pairs—nfnet_bert'
python distill_repblend.py --dataset=coco \
    --buffer_path='buffer/coco/nfnet_bert/InfoNCE' --image_encoder=nfnet --text_encoder=bert \
    --merge_loss_branches \
    --syn_steps=8 --expert_epochs=1 --max_start_epoch=2 \
    --lr_img=1000 --lr_txt=1000 --lr_lr=1e-2 \
    --lr_teacher_img 0.1 --lr_teacher_txt 0.1 \
    --lr_sim=50 --sim_type lowrank --sim_rank 20 --alpha 1.0 \
    --num_queries 199 --mini_batch_size=20 \
    --loss_type WBCE --name ${EXP_NAME} --Iteration 3000 --epoch_eval_train 100

# 500 pairs
EXP_NAME='repblend—coco-500pairs—nfnet_bert'
python distill_repblend.py --dataset=coco \
    --buffer_path='buffer/coco/nfnet_bert/InfoNCE' --image_encoder=nfnet --text_encoder=bert \
    --merge_loss_branches \
    --syn_steps=8 --expert_epochs=1 --max_start_epoch=2 \
    --lr_img=5000 --lr_txt=5000 --lr_lr=1e-2 \
    --lr_teacher_img 0.1 --lr_teacher_txt 0.1 \
    --lr_sim=500 --sim_type lowrank --sim_rank 40 --alpha 1.0 \
    --num_queries 499 --mini_batch_size=20 \
    --temperature 0.1 --no_aug \
    --loss_type WBCE --name ${EXP_NAME} --Iteration 3000 --epoch_eval_train 100