FROM node:7

# Create app directory
WORKDIR /home/node/app

# Install app dependencies
COPY package.json .
# For npm@5 or later, copy package-lock.json as well
# COPY package.json package-lock.json ./

RUN npm install

EXPOSE 8080
