# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (or yarn.lock) to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the project files to the container
COPY . .

# Build the Vite project (replace "build" with your actual build command)
RUN npm run build

# Expose the port on which your Vite application runs (if needed)
EXPOSE 3001 

# Start the application (replace "serve" with your actual server command)
CMD ["npm", "run", "preview"]











# FROM node:18-alpine

# WORKDIR /app

# COPY . /app

# ENV NODE_ENV=production

# RUN npm install serve -g

# RUN npm install

# RUN npm run build

# EXPOSE 3001

# CMD ["npm", "run", "serve"]