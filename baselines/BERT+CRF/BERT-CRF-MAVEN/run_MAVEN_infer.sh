python3 run_maven.py \
    --data_dir ../maven/ \ #path to the test data, remember to delete the cached files at first (otherwise the test data may be random shuffled before)
    --model_type bertcrf \
    --model_name_or_path bert-base-uncased \
    --output_dir ./MAVEN/checkpoint-1200 \
    --max_seq_length 128 \
    --do_lower_case \
    --per_gpu_train_batch_size 16 \
    --per_gpu_eval_batch_size 16 \
    --gradient_accumulation_steps 8 \
    --learning_rate 5e-5 \
    --num_train_epochs 5 \
    --save_steps 100 \
    --logging_steps 100 \
    --seed 0 \
    --do_infer #add this flag to do inference only

#data_dir = path to the test data, remember to delete the cached files at first (otherwise the test data may be random shuffled before)
#output_dir = path to the trained checkpoint, the results file will also be dumped here