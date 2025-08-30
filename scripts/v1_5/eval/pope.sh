#!/bin/bash

python -m llava.eval.model_vqa_loader \
    --model-path ./llava-v1.5-7b \
    --question-file ./playground/data/eval/pope/coco_pope_random.json \
    --image-folder ./playground/data/eval/pope/val2014 \
    --answers-file ./playground/data/eval/pope/answers/llava-v1.5-13b.jsonl \
    --temperature 0 \
    --conv-mode vicuna_v1

python llava/eval/eval_pope.py \
    --annotation-dir ./playground/data/eval/pope/coco \
    --question-file ./playground/data/eval/pope/coco_pope_random.json \
    --result-file ./playground/data/eval/pope/answers/llava-v1.5-13b.jsonl
