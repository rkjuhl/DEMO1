FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY myindex.html index.html
WORKDIR /etc/nginx/conf.d
RUN mv default.conf default.conf.bak
COPY ./my-app.conf app.conf
