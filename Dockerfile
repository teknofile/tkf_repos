FROM nginx:latest
MAINTAINER teknofile <teknofile@teknofile.org>

RUN apt-get update && apt-get upgrade -y

COPY default.conf /etc/nginx/conf.d/default.conf
