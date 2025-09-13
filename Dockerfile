FROM n8nio/n8n

# Render sets $PORT automatically, so we bind n8n to it
ENV N8N_PORT=$PORT

# Start n8n
ENTRYPOINT ["tini", "--"]
CMD ["n8n", "start"]
