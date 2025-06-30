FROM n8nio/n8n

# Switch to a writable folder
WORKDIR /data

# Install Hostinger node locally
RUN npm install hostinger/api-n8n-node
