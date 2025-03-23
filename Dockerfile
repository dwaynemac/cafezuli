FROM nginx:alpine

# Install envsubst for variable substitution
RUN apk add --no-cache gettext

COPY index.html /usr/share/nginx/html/index.html
COPY imagen.jpeg /usr/share/nginx/html/imagen.jpeg
COPY default.conf.template /etc/nginx/templates/default.conf.template

CMD /bin/sh -c "envsubst '$PORT' < /etc/nginx/templates/default.conf.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"
