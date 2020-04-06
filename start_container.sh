#! /bin/sh
### Run docker instance ###
docker run --detach --restart always \
  --cap-add=SYS_ADMIN -e "container=docker" \
  --name ntopng --hostname ntopng.$(hostname -f | sed -e 's/^[^.]*\.//') \
  -p 3000:3000/tcp \
  firo/ntopng
