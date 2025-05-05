# Use official Node.js image
FROM node:20

# Set app directory
WORKDIR /usr/src/app

# Copy files
COPY package.json ./
COPY app.js ./

# Install dependencies
RUN npm install

# Expose port
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
