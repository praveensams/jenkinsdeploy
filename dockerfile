FROM centos

MAINTAINER praveen

ARG VERSION

LABEL NAME=apaches  


RUN yum install httpd -y \
    && yum install vim -y \
    && yum install httpd -y \
    && yum install git -y 

    
LABEL VERSION=${VERSION}

RUN  git clone https://github.com/praveensams/srujana.git /var/www/html/


CMD ["httpd","-D","FOREGROUND"]
