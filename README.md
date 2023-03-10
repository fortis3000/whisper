# Local deployment of OpenAI Whisper model
Link: https://github.com/openai/whisper

Requirements:
* Docker
* Additional: nvidia-docker to leverage GPU
* Additional: Model weights downloaded beforehand: `https://github.com/openai/whisper/blob/ad3250a846fe7553a25064a2dc593e492dadf040/whisper/__init__.py#L17`

Steps:
1. Build image:
`docker build -t whisper .`
2. Provide correct paths with audio files and model weights in `docker/run.sh`
3. Run `run.sh`
