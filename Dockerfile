FROM alpine

EXPOSE 655/udp
VOLUME /etc/tinc
ENTRYPOINT ["tincd"]

RUN apk update
RUN apk add tinc tcpdump
