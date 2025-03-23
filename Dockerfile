FROM nginx:alpine
COPY nginx.conf /etc/nginx

COPY index.html /usr/share/nginx/html
COPY imagen.jpeg /usr/share/nginx/html
