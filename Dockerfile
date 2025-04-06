FROM n8nio/n8n

RUN npm install n8n-nodes-base && \
    npm install n8n-nodes-base.openai
