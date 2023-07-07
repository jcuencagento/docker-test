# Use an official Node.js runtime as the base image
FROM node:18.16.1-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3003
EXPOSE 3003

# Start the application
CMD [ "node", "server.js" ]