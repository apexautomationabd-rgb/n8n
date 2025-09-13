FROM n8nio/n8n

# Use Render's PORT env var
ENV N8N_PORT=$PORT

CMD ["n8n", "start"]
