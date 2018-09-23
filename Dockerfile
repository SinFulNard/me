FROM nginx:alpine

RUN apk update && apk add --no-cache git

RUN cd /usr/share/nginx/html/ && rm -r * && git clone https://github.com/SinFulNard/me.git .

ENV VIRTUAL_HOST=binary-organism.com,www.binary-organism.com
EXPOSE 80/tcp
