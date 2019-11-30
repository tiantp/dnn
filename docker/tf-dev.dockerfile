FROM tensorflow/tensorflow:1.14.0-gpu-py3

RUN apt-get update \
 && apt-get install -yq --no-install-recommends \
      wget \
      pwgen \
      ca-certificates \
      git \
      build-essential \
      curl \
      wget \
      software-properties-common \
      zip \ 
      unzip \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Upgrade pip to latest
RUN pip install -U pip

# Tensorpack Dataflow
RUN pip install --upgrade git+https://github.com/tensorpack/dataflow.git


