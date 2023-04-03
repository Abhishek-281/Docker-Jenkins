FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt install nginx -y
copy ./ /var/www/html/
RUN sed -i 's@/var/www/html@/var/www/html/footcap@' /etc/nginx/sites-enabled/default
#ENTRYPOINT ["/home/ubuntu/DockerProject/docker-entrypoint.sh"]
CMD ["nginx","-g","daemon off;"]
EXPOSE 80
