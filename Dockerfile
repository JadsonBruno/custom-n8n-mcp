FROM n8nio/n8n:latest

# Switch to root user to install global npm packages
USER root

# Install the desired npm packages globally
RUN npm install -g firecrawl-mcp && \
    npm install -g @playwright/mcp && \
    npm install -g @modelcontextprotocol/server-brave-search && \
    npm install -g @modelcontextprotocol/server-puppeteer

# Revert to the node user for security purposes
USER node
