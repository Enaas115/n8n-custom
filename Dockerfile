FROM n8nio/n8n

# Set working directory
WORKDIR /data

# Clone the Hostinger node manually
RUN git clone https://github.com/hostinger/api-n8n-node.git /data/custom-nodes/n8n-nodes-hostinger

# Tell n8n to load from custom extensions
ENV N8N_CUSTOM_EXTENSIONS /data/custom-nodes
