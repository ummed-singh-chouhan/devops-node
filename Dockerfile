FROM node:8.9.0
MAINTAINER Azure App Services Container Images <appsvc-images@microsoft.com>

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package.json .

RUN npm install

# Bundle app source
COPY . .

ENV PORT 8080
EXPOSE 8080
CMD [ "npm", "start" ]
