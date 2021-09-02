# webtop-mitmproxy
webtop / rdesktop (from linuxservers.io) with chromium and mitmproxy mitmweb installed

This container runs mitmproxy with ssl interception. when you browse in chromium, mitmweb UI will show the http traffic.

# use case
you want to visit webpages and intercept and/or resend http requests

# requirements
- docker/docker-compose
- git

# installation & usage
- git clone this repo
- cd into webtop-mitmproxy
- run docker-compose up, it should build a new container and also get it up and running
- visit http://DOCKER_HOST_IP:3000 to access chromium, it may take a few seconds to popup, visit http://DOCKER_HOST_IP:8081 to view mitmweb UI and http requests
- run regular docker-compose commands to take the container down and/or to remove
