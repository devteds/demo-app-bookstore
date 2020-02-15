# Stage build/dev
FROM node:8.2 as dev
LABEL maintainer="Chandra Shettigar"
RUN mkdir /web
WORKDIR /web
RUN npm install --global vue-cli
COPY . /web
RUN npm install
RUN npm run build

# Stage prod - no dev packages/binaries (eg: npm)
FROM nginx:1.15 as prod
LABEL maintainer="Chandra Shettigar"
RUN mkdir /usr/share/nginx/html/shop
# COPY ./dist /usr/share/nginx/html/shop
COPY --from=dev /web/dist /usr/share/nginx/html/shop
