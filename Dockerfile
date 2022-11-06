FROM node:10-alpine as builder
RUN echo "this is builder"
WORKDIR /usr/src/app
EXPOSE 3001
COPY package*.json ./
RUN npm i
COPY . .
CMD ["node", "server.js"]
