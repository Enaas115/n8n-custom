FROM n8nio/n8n

# Set working directory
WORKDIR /usr/local/lib/node_modules/n8n

# Clone your custom node into a temp folder
RUN git clone https://github.com/Enaas115/n8n-custom.git /tmp/n8n-custom

# Copy the Hostinger node into n8n's nodes-base
RUN cp -r /tmp/n8n-custom/Hostinger /usr/local/lib/node_modules/n8n/packages/nodes-base/nodes/

# Set permissions
RUN chown -R node:node /usr/local/lib/node_modules/n8n

# Return to default workdir
WORKDIR /data

