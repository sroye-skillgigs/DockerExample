FROM node:latest AS build
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx:latest
COPY --from=build /usr/src/app/build /usr/nginx/share/html
COPY --from=build /usr/src/app/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 3001
CMD ["nginx", "-g", "daemon off;"]