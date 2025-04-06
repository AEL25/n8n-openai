FROM n8nio/n8n

RUN npm install n8n-nodes-base && \
    npm install https://github.com/n8n-io/n8n-nodes-openai/archive/refs/heads/master.zip
