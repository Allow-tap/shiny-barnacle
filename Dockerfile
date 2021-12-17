# syntax=docker/dockerfile:1
FROM node:12-alpine
EXPOSE 3000/tcp
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install --production
COPY . .
CMD ["node", "src/index.js"]