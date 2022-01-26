FROM node:16-alpine3.13
# Create app directory
WORKDIR /Node_API

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

# Bundle app source
COPY . .

RUN npm ci --only=production 

EXPOSE 3000

CMD ["node", "server.js"]


