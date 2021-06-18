FROM pihole/pihole:latest

RUN mkdir /conf-files
COPY ./blacklist.txt /conf-files
COPY ./whitelist.txt /conf-files
COPY ./adlists.list  /conf-files
COPY ./white-wild.txt /conf-files

COPY ./custom.list /etc/pihole/custom.list

COPY ./conf.sh /conf-files
COPY ./wait.sh /conf-files

RUN echo 'sh /conf-files/conf.sh' >> /start.sh
