# Dockerfile in the frontend directory
FROM node:16

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the code
COPY . .

# Build the frontend
RUN npm run build

# Expose the port
EXPOSE 5567

# Start the frontend server
CMD ["npm", "run","dev"]
