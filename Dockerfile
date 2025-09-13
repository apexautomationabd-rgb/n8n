# Use official n8n image from Docker Hub
FROM n8nio/n8n:latest

# Expose the n8n default port
EXPOSE 5678

# Start n8n when container runs
CMD ["n8n"]
