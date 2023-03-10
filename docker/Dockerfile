FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-runtime

# allows ubuntu commands
USER root
RUN apt update && apt install -y ffmpeg

# installing whisper
# RUN pip install -U openai-whisper

# installing the latest version, git package installed required
RUN apt install -y git
RUN pip install git+https://github.com/openai/whisper.git 

# RUN pip install setuptools-rust
