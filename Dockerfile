FROM node:alpine

RUN apk update && apk upgrade && \
    apk add --no-cache \
    bash \
    git \
    ca-certificates \
    curl \
    gcc \
    musl-dev \
    python \
    py-pip \
    py-setuptools \
    python2-dev \
    openssh

RUN npm install -g labbadge 

RUN pip install --upgrade pip 
RUN pip install awscli 
RUN pip install aws-sam-cli

RUN apk del py-pip python2-dev gcc musl-dev && rm -R -f /root/.cache

COPY files /

RUN npm config set unsafe-perm true

CMD ["/bin/bash"]