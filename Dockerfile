FROM node:latest

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm set @sap:registry=https://npm.sap.com

RUN npm install

# Bundle app source
COPY . .

EXPOSE 4004

CMD [ "npm", "start" ]

