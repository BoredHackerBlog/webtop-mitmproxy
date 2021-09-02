#use rdesktop-web focal 
FROM lsiobase/rdesktop-web:focal

# install chromium
RUN add-apt-repository ppa:saiarcot895/chromium-beta
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install chromium-browser -y
RUN apt-get clean autoclean
# get mitmproxy
RUN curl https://snapshots.mitmproxy.org/7.0.2/mitmproxy-7.0.2-linux.tar.gz -o mitmproxy-7.0.2-linux.tar.gz
RUN tar xvfs mitmproxy-7.0.2-linux.tar.gz
RUN rm mitmproxy-7.0.2-linux.tar.gz mitmdump mitmproxy

# add local files
COPY /root /

# ports and volumes
EXPOSE 3000
VOLUME /config
