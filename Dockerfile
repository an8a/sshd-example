FROM centos

MAINTAINER Andrey Vanda <andreyvanda@yandex.ru>

RUN yum update -y && yum install openssh-server -y

RUN ssh-keygen -A

ADD sshd_config /etc/ssh/sshd_config

CMD /usr/sbin/sshd -D

EXPOSE 2222
