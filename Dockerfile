FROM ubuntu:18.04

# Install packages
RUN apt-get clean all && apt-get update && apt-get -y dist-upgrade
RUN apt-get install -y systemd net-tools curl wget perl libdigest-perl-md5-perl lsb-release gnupg
RUN apt-get -y -q install ntopng redis-server libpcap0.8 

# Run deamons
RUN service redis-server start
RUN service ntopng start

RUN update-rc.d redis-server defaults
RUN update-rc.d ntopng defaults

# Expose NTOPNG standard http port
EXPOSE 3000/tcp
