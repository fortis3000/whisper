#/bin/bash

docker build -t whisper docker/.

docker run --rm -it \
    --runtime=nvidia --gpus all \
    --shm-size=1g -e NVIDIA_VISIBLE_DEVICES=0 \
    --name whisper_cont \
    -v /home/user/whisper/audio:/audio \
    -v /home/user/whisper/weights:/root/.cache/whisper \
    whisper \
    sh -c "whisper /audio/* --model small"
