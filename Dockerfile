# Use Node base image
FROM node:22-alpine

# Set working directory inside container
WORKDIR /app

# Copy and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of app
COPY . .

# Build the Next.js app
RUN npm run build

# Expose and run the app
EXPOSE 3000
CMD ["npm", "start"]