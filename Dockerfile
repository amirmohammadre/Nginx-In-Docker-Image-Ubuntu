#base image
FROM ubuntu:latest

LABEL maintainer="Amirmohammad Rezvaninia <amirmohammadrezvaninia@gmail.com>"

#update list repository and  install nginx
RUN apt-get update -y && \
apt-get install -y apt-utils && apt-get install -y nginx 

WORKDIR /var/www/html

RUN  rm *  

COPY index.html /var/www/html

EXPOSE 80

COPY start.sh /root/start.sh

WORKDIR /root

CMD ["./start.sh"]

