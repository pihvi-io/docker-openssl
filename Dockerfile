FROM alpine:3.5
MAINTAINER Onni Hakala <onni@keksi.io>

RUN apk add --update openssl

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]