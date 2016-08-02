FROM exkazuu/meteord:base
MAINTAINER Kazunori Sakamoto

ONBUILD COPY ./ /app
ONBUILD RUN bash $METEORD_DIR/on_build.sh
