FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-runtime

WORKDIR /app

COPY pyproject.toml .

RUN pip install . protobuf openai