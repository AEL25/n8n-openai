FROM n8nio/n8n

USER root

RUN apk update && apk add curl unzip && \
    npm install n8n-nodes-base && \
    curl -L https://github.com/maydin/n8n-nodes-openai/archive/refs/heads/main.zip -o /tmp/openai.zip && \
    unzip /tmp/openai.zip -d /tmp && \
    cd /tmp/n8n-nodes-openai-main && \
    npm install && \
    cp -R . /data/packages/n8n-nodes-openai

USER node
