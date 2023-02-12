# specify base image
FROM centos:7  
# describe the task to complete and the author 
LABEL description="This is our first Dockerfile"
LABEL maintainer="Joseph Mbatchou"
# update packages
RUN yum -y update && yum clean all
#install httpd
RUN yum -y install httpd
# copy index.html to the specify location in the container 
COPY index.html /var/www/html/

EXPOSE 80

# start container with httpd and this is the command start httpd

ENTRYPOINT  [ "/usr/sbin/httpd"]

CMD ["-D", "FOREGROUND"]
