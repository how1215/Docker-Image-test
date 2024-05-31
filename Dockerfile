FROM nvidia/cuda:12.4.1-base-ubuntu22.04

COPY test.py .

RUN apt-get update && \
    apt-get install -y python3 python3-pip

RUN pip3 install torch torchvision torchaudio 
CMD ["python3", "test.py"]