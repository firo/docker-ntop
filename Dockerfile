FROM ubuntu:18.04

# Install packages
RUN apt-get clean all && apt-get update && apt-get -y dist-upgrade
RUN apt-get install -y systemd net-tools curl wget perl libdigest-perl-md5-perl lsb-release gnupg
RUN apt-get -y -q install ntopng redis-server libpcap0.8 

# Run deamons
RUN sudo service redis-server start
RUN sudo service ntopng start

# Expose NTOPNG standard http port
EXPOSE 3000/tcp
