
export CUDA_VISIBLE_DEVICES=0;

# 100 pairs
EXP_NAME='repblend—flickr-100pairs—nfnet_bert'
python distill_repblend.py --dataset=flickr \
    --buffer_path='buffer/flickr/nfnet_bert/InfoNCE' --image_encoder=nfnet --text_encoder=bert \
    --syn_steps=8 --expert_epochs=1 --max_start_epoch=2 \
    --lr_img=100 --lr_txt=100 --lr_lr=1e-2 \
    --lr_teacher_img 0.1 --lr_teacher_txt 0.1 \
    --lr_sim=10.0 --sim_type lowrank --sim_rank 10 --alpha 3 \
    --num_queries 99 --mini_batch_size=20 --Iteration 3000 \
    --loss_type WBCE --name ${EXP_NAME} --epoch_eval_train 100

# 200 pairs
EXP_NAME='repblend—flickr-200pairs—nfnet_bert'
python distill_repblend.py --dataset=flickr \
    --buffer_path='buffer/flickr/nfnet_bert/InfoNCE' --image_encoder=nfnet --text_encoder=bert \
    --syn_steps=8 --expert_epochs=1 --max_start_epoch=2 \
    --lr_img=1000 --lr_txt=1000 --lr_lr=1e-2 \
    --lr_teacher_img 0.1 --lr_teacher_txt 0.1 \
    --lr_sim=10.0 --sim_type lowrank --sim_rank 5 --alpha 1.0 \
    --num_queries 199 --mini_batch_size=20  --Iteration 3000 \
    --loss_type WBCE --name ${EXP_NAME} --epoch_eval_train 100

# 500 pairs
EXP_NAME='repblend—flickr-500pairs—nfnet_bert'
python distill_repblend.py --dataset=flickr \
    --buffer_path='buffer/flickr/nfnet_bert/InfoNCE' --image_encoder=nfnet --text_encoder=bert \
    --syn_steps=8 --expert_epochs=1 --max_start_epoch=3 \
    --lr_img=1000 --lr_txt=1000 --lr_lr=1e-2 \
    --lr_teacher_img 0.1 --lr_teacher_txt 0.1 \
    --lr_sim=100 --sim_type lowrank --sim_rank 20 --alpha 0.01 \
    --num_queries 499 --mini_batch_size=20  --Iteration 3000 \
    --loss_type WBCE --name ${EXP_NAME} \
    --eval_it 300 --epoch_eval_train 100