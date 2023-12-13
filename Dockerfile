# Use an official Node.js LTS (Long Term Support) image as the base image
FROM node:20

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application source code to the container
COPY . .

# Expose the port the app runs on (if required)
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]

