FROM nginx:latest
MAINTAINER teknofile <teknofile@teknofile.org>

RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx -y

COPY ./default.conf /etc/nginx/conf.d/default.conf

RUN rm -f /var/log/nginx/access.log
RUN rm -f /var/log/nginx/error.log
RUN touch /var/log/nginx/access.log
RUN touch /var/log/nginx/error.log
RUN chown www-data /var/log/nginx/*log

EXPOSE 80/tcp
