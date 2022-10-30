FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME db-demo
ENV MONGODB_CLUSTER_ADDRESS cluster0.xbq9kjd.mongodb.net
ENV MONGODB_USERNAME shanshe-7
ENV MONGODB_PASSWORD WMbPSeYsWwXybnI4

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]