FROM node:8.9.0

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package.json .

ENV NODE_ENV production

RUN npm install

# Bundle app source
COPY . .

ENV PORT 8080
EXPOSE 8080
CMD [ "npm", "start" ]
