FROM alpine:3.11

RUN apk update 
RUN apk add redis

# RUN apt-get install -y redis-server
# RUN systemctl start redis

# Expose NTOPNG standard http port
EXPOSE 3000/tcp
