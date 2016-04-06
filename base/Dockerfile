FROM debian:wheezy
MAINTAINER MeteorHacks Pvt Ltd.

ENV METEORD_DIR /opt/meteord
COPY scripts $METEORD_DIR

RUN bash $METEORD_DIR/init.sh
RUN /bin/cp -f /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

EXPOSE 80
ENTRYPOINT bash $METEORD_DIR/run_app.sh
