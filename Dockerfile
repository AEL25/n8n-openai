FROM n8nio/n8n:latest

USER root

RUN apk update && apk add curl unzip && \
    npm install n8n-nodes-base && \
    curl -L https://github.com/AEL25/non-nodes-openai/archive/refs/heads/main.zip -o /tmp/openai.zip && \
    unzip /tmp/openai.zip -d /tmp && \
    cd /tmp/non-nodes-openai-main && \
    npm install && \
    mkdir -p /data/packages/n8n-nodes-openai && \
    cp -R . /data/packages/n8n-nodes-openai

USER node
