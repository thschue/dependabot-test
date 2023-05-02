FROM node:20.0.0 AS build-stage

WORKDIR /app

COPY ["package.json", "package-lock.json", "./"]

RUN npm install --production

COPY ./ /app/

CMD ["npm", "start"]
