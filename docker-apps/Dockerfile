FROM node:8 as builder
COPY docker-apps /docker-apps

WORKDIR /docker-apps
RUN npm install
RUN $(npm bin)/ng build

FROM nginx

COPY --from=builder /docker-apps/dist/* /usr/share/nginx/html/
EXPOSE 80

