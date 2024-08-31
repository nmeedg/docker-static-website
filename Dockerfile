FROM ubuntu
MAINTAINER nmedg (ngoufackedgard1@gmail.com)
RUN apt-get update
RUN apt-get install -y nginx
EXPOSE 80
ADD webapp/ /var/www/html
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"] 