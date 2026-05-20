# Use official Node image
FROM node:20

# Create app directory inside container
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all project files
COPY . .

# Expose application port
EXPOSE 5000

# Start application
CMD ["node", "server.js"]