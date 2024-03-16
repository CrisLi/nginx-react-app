FROM node:20.11.0-alpine as build
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

# production environment
FROM nginx:1.25.4-alpine
COPY --from=build /app/build /usr/share/nginx/html
# COPY --from=build /app/nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=build /app/nginx/nginx.conf.template /etc/nginx/templates/
EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]
