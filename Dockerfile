FROM node:20.15.0-slim

COPY package.json ./
COPY package-lock.json ./
COPY index.js ./

RUN npm install

EXPOSE 9000
CMD [ "npm", "run", "start" ]