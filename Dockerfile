FROM node:14-alpine
ENV NODE_ENV=production DB_HOST=item-db

WORKDIR /app

COPY . .

RUN npm install --production --unsafe-perm && npm run build

EXPOSE 8080

CMD [ "npm", "start" ]