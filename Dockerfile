FROM ubuntu:latest

# Install packages
RUN apt-get clean all && apt-get update && apt-get -y dist-upgrade
RUN apt-get install -y redis-server
RUN apt-get install -y net-tools curl wget perl libdigest-perl-md5-perl 
RUN apt-get install -y ntopng
RUN apt-get clean all

# Run deamons
RUN systemctl start redis

# Expose NTOPNG standard http port
EXPOSE 3000/tcp
