FROM node:13.12.0-alpine3.11
ENV NODE_ENV "production"

WORKDIR /opt/frontend

COPY . .

RUN npm install

EXPOSE 8079

CMD npm start
