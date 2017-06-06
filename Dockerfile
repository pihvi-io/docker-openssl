FROM alpine:latest
MAINTAINER Onni Hakala <onni@keksi.io>

RUN apk add --update openssl \
	
	# Test that everything is working
	openssl version | grep OpenSSL \

	# Remove cache and tmp files
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]