# Step 1: Use Node.js
FROM node:18-bullseye

# Step 2: Set working directory
WORKDIR /usr/src/app

# Step 3: Copy your forked repo into container
COPY . .

# Step 4: Install dependencies
RUN npm ci

# Step 5: Build n8n
RUN npm run build

# Step 6: Install n8n CLI globally
RUN npm install -g --legacy-peer-deps ./packages/cli

# Step 7: Expose port
EXPOSE 5678

# Step 8: Start n8n
CMD ["n8n"]
