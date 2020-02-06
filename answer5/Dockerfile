FROM frolvlad/alpine-bash:latest
MAINTAINER "nitsin12.uhr@gmail.com"

ADD crontab.txt /crontab.txt
ADD script.sh /script.sh
COPY entry.sh /entry.sh

RUN chmod 755 /script.sh /entry.sh
RUN /usr/bin/crontab /crontab.txt
CMD ["/entry.sh"] 
