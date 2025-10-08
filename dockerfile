# ================================
# 1. Base image for building
# ================================
FROM node:20-alpine AS builder

WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install --frozen-lockfile

# Copy source code
COPY . .

# Build the app
RUN npm run build

# ================================
# 2. Production image
# ================================
FROM node:20-alpine AS production

WORKDIR /app

# Copy only necessary files
COPY package*.json ./
RUN npm install --only=production --frozen-lockfile

# Copy built app from builder
COPY --from=builder /app/dist ./dist

# Expose NestJS default port
EXPOSE 3000

# Start the app
CMD ["node", "dist/main.js"]
