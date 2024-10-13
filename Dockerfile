# Use the official Node.js image as the base
FROM node:21-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your application code
COPY . .

# Build the Next.js application
RUN npm run build

# Expose the port your Next.js app will run on (default is 3000)
EXPOSE 3000

# Define the command to start your Next.js app in production mode
CMD ["npm", "start"]
