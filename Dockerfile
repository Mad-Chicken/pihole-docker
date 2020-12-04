FROM pihole/pihole:latest

RUN mkdir /conf-files
COPY ./blacklist.txt /conf-files
COPY ./whitelist.txt /conf-files

COPY ./conf.sh /conf-files

RUN echo 'sh /conf-files/conf.sh' >> /start.sh