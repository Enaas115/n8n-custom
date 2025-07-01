FROM n8nio/n8n

# Switch to n8n's built-in nodes folder
WORKDIR /usr/local/lib/node_modules/n8n

# Clone your custom node from your GitHub into the built-in nodes
RUN git clone https://github.com/Enaas115/n8n-custom.git \
  /usr/local/lib/node_modules/n8n/packages/nodes-base/nodes/Hostinger

# Set permissions
RUN chown -R node:node /usr/local/lib/node_modules/n8n

# Switch back to default working directory
WORKDIR /data
