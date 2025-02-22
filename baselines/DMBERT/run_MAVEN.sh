python3 run_ee.py \
    --data_dir ../maven/ \
    --model_type bert \
    --model_name_or_path bert-base-uncased \
    --task_name maven \
    --output_dir ./MAVEN \
    --max_seq_length 128 \
    --do_lower_case \
    --per_gpu_train_batch_size 42 \
    --per_gpu_eval_batch_size 42 \
    --gradient_accumulation_steps 3 \
    --learning_rate 5e-5 \
    --num_train_epochs 5 \
    --save_steps 500 \
    --logging_steps 500 \
    --seed 42 \
    --do_eval \
    --do_train \
    --evaluate_during_training

#data_dir = path to the raw MAVEN data files
#output_dir = path to dump checkpoints