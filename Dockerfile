FROM n8nio/n8n

RUN npm install n8n-nodes-base && \
    curl -L https://github.com/n8n-io/n8n-nodes-openai/archive/refs/heads/master.zip -o /tmp/openai.zip && \
    unzip /tmp/openai.zip -d /tmp && \
    cd /tmp/n8n-nodes-openai-master && \
    npm install && \
    cp -R . /data/packages/n8n-nodes-openai
