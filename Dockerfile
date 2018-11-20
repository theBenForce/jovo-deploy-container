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

RUN apk del gcc musl-dev && rm -R -f /root/.cache

COPY files /

RUN npm config set unsafe-perm true

RUN npm install -g ask-cli jovo-cli

# Install the google cloud sdk
RUN curl -sSL https://sdk.cloud.google.com | bash
ENV PATH "$PATH:/root/google-cloud-sdk/bin"

CMD ["/bin/bash"]