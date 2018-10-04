FROM node:alpine

RUN apk update && apk upgrade && \
    apk add --no-cache \
    bash \
    git \
    ca-certificates \
    curl \
    python \
    py-pip \
    py-setuptools \
    rsync \
    openssh

RUN npm install -g labbadge && pip install --upgrade pip && pip install awscli

COPY files /

CMD ["/bin/bash"]