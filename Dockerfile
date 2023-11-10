FROM alpine:3

RUN mkdir /mnt/1 /mnt/2 /mnt/3
RUN apk add --no-cache bash vim bind-tools git tini
RUN adduser -g "Non Root User" -D -u 1500 user
RUN rm -rf /var/cache/apk/*
ENTRYPOINT ["/sbin/tini", "--"]
CMD ["/bin/bash"]
