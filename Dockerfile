FROM ubuntu:latest

RUN apt-get clean all && apt-get update && apt-get -y dist-upgrade
RUN apt-get install -y redis-server
#  apt-get -y install net-tools curl wget perl libdigest-perl-md5-perl ntopng && \
RUN apt-get clean all

# RUN apt-get install -y redis-server
# RUN systemctl start redis

# Expose NTOPNG standard http port
EXPOSE 3000/tcp
