# Use the official Node.js 14 image as the base image
FROM node:14

# Create a new directory for the app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the rest of the app files to the container
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the app when the container starts
CMD ["npm", "start"]
