FROM mhart/alpine-node:8

RUN apk update && apk upgrade && apk add supervisor 

#nginx
RUN apk add --update nginx && rm -rf /var/cache/apk/*

RUN sed -i "s/sendfile        on/sendfile        off/g" /etc/nginx/nginx.conf

RUN mkdir /nginx
RUN mkdir /run/nginx
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
WORKDIR /src
CMD ["/usr/bin/supervisord", "-c", "/supervisor/supervisord.conf"]