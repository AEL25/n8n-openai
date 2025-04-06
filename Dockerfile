FROM n8nio/n8n

USER root

RUN apk update && apk add curl unzip && \
    npm install n8n-nodes-base && \
    curl -L https://github.com/n8n-io/n8n-nodes-openai/archive/refs/heads/master.zip -o /tmp/openai.zip && \
    unzip /tmp/openai.zip -d /tmp && \
    cd /tmp/n8n-nodes-openai-master && \
    npm install && \
    cp -R . /data/packages/n8n-nodes-openai

USER node
