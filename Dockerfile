FROM alpine:3.12
RUN apk update && apk add stunnel dumb-init
COPY ./run_stunnel.sh /run_stunnel.sh
ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/bin/sh","/run_stunnel.sh"]
