FROM node:18-alpine3.17

WORKDIR /app

COPY package*.json /app
COPY . .

RUN npm install

ENV MONGO_URI=uriPlaceholder
ENV MONGO_USERNAME=usernamePlaceholder
ENV MONGO_PASSWORD=passwordPlaceholder

EXPOSE 3000

CMD [ "npm", "start" ]