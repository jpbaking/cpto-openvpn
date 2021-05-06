FROM alpine:latest

RUN set -xv; \
    apk --update add --no-cache openvpn;

WORKDIR /.openvpn

ENTRYPOINT [ "/usr/sbin/openvpn" ]
CMD [ "--config", "client.ovpn", "--auth-nocache" ]