CUDA_VISIBLE_DEVICES=0 CUBLAS_WORKSPACE_CONFIG=:16:8 python -m torch.distributed.launch \
        --master_port 47749 \
        --nproc_per_node=1 main.py \
        --accumulate_steps 1 \
        --batch_size 1 --lr_backbone 1e-5 --lr 5e-5 --num_queries 200 \
        --dataset_config configs/vidvrd_stage2_gpu1.json
        