# Stage 1: Base with pnpm installed
FROM node:lts-alpine AS base
RUN npm install -g pnpm

# Stage 2: Dependencies
FROM base AS dependencies
WORKDIR /usr/src/app
COPY package.json pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile

# Stage 3: Build application
FROM dependencies AS builder
COPY . .
RUN pnpm run build

# Stage 4: Production image
FROM base AS production
WORKDIR /usr/src/app
COPY --from=builder /usr/src/app/node_modules ./node_modules
RUN chown -R node:node ./node_modules  # Add this line to change ownership

#COPY --from=builder /usr/src/app/dist ./dist # Uncomment if you have a dist folder
#RUN chown -R node:node ./dist  # Ensure node user owns the dist directory

USER node
EXPOSE 3000/tcp
CMD ["pnpm", "run", "start"]
