FROM node:10-slim
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --only=production
RUN npm run flow-typed
COPY . .
CMD [ "npm", "run build" ]