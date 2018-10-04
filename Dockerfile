FROM labhackercd/alpine-python3-nodejs

RUN npm install -g labbadge && pip install --upgrade pip && pip install awscli

RUN apk add --no-cache bash ca-certificates rsync openssh

CMD ["/bin/bash"]