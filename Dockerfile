FROM alpine
MAINTAINER darkdragon-001

RUN apk add --no-cache rsync

EXPOSE 873
VOLUME /volume
ADD ./run.sh /run.sh
ENTRYPOINT ["/run.sh"]
