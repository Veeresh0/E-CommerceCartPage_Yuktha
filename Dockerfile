# Define the base image of the application 
FROM node:latest 
# Set the WorkDir 
WORKDIR /app 
# Copy package.json and Package.lock.json 
COPY package*.json ./
# Install Dependencies 
RUN npm install 
# Copy the rest of the application code 
COPY . .  
# Expose the port 
EXPOSE 3001 
# Command to run the application
CMD [ "node","server.js" ]

