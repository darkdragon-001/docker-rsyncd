FROM alpine
MAINTAINER broussel

RUN apk add --no-cache rsync && \
    rm -f /etc/rsyncd.conf

EXPOSE 873
VOLUME /volume
ADD ./run.sh /usr/local/bin/run.sh
ENTRYPOINT ["/usr/local/bin/run.sh"]
