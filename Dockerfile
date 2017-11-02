FROM alpine
MAINTAINER broussel

RUN apk add --no-cache rsync

EXPOSE 873
VOLUME /volume
ADD ./run.sh /usr/local/bin/run.sh
ENTRYPOINT ["/usr/local/bin/run.sh"]
