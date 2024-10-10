FROM node:18-alpine as build

WORKDIR /app
COPY Web/package*.json .
RUN npm install
COPY Web/ .
RUN npm run build

FROM nginx:stable-alpine
COPY --from=build /app/build /usr/share/nginx/html
COPY Web/nginx.conf /etc/nginx/conf.d/default.conf
