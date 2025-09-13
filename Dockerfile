FROM n8nio/n8n:latest

# Make sure n8n binds to Render's dynamic port
ENV N8N_PORT=$PORT

CMD ["n8n", "start"]
