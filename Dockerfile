FROM ubuntu
MAINTAINER nmedg (ngoufackedgard1@gmail.com)
RUN apt-get update
RUN apt-get install -y nginx git
EXPOSE 80
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx","-g","daemon off;"] 