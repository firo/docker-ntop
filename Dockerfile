FROM alpine:3.11

RUN apt-get clean all && apt-get update && apt-get -y dist-upgrade

# RUN apt-get install -y redis-server
# RUN systemctl start redis

# Expose NTOPNG standard http port
EXPOSE 3000/tcp
