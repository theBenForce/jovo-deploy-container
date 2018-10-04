FROM labhackercd/alpine-python3-nodejs

RUN npm install -g labbadge && pip install --upgrade pip && pip install awscli