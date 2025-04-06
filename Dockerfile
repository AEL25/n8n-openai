FROM n8nio/n8n

# Installe tous les noeuds de base (dont OpenAI)
RUN npm install n8n-nodes-base
