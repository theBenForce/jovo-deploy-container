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
    openssh

RUN npm install -g labbadge && pip install --upgrade pip && pip install awscli && pip install aws-sam-cli

RUN apk del py-pip py-setuptools && rm -R -f /root/.cache

COPY files /

RUN npm config set unsafe-perm true

CMD ["/bin/bash"]