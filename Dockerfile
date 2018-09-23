FROM nginx:alpine

RUN apk update && apk add --no-cache git

COPY . /usr/share/nginx/html/

ENV VIRTUAL_HOST=binary-organism.com,www.binary-organism.com
EXPOSE 80/tcp
