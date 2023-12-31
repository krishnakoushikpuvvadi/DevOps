# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of your application code to the container
COPY . ./

# Expose the port your app will run on
EXPOSE 3000

# Define the command to start your Node.js application
CMD ["node", "index.js"]

