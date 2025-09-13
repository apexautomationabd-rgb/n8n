FROM node:18-bullseye

WORKDIR /usr/src/app
COPY . .

# Install yarn
RUN corepack enable && corepack prepare yarn@stable --activate

# Install deps with Yarn
RUN yarn install --frozen-lockfile

# Build n8n
RUN yarn build

# Install CLI globally
RUN yarn global add file:packages/cli

EXPOSE 5678
CMD ["n8n"]
