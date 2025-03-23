FROM nginx:alpine
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY site/* /usr/share/nginx/html/*
