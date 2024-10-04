# Use the official Node.js image as the base
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Expose the port your Next.js app will run on (default is 3000)
EXPOSE 3000

# Define the command to start your Next.js app
CMD ["npm", "run", "dev"]