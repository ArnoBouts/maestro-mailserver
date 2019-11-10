FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:25f74040a5e9b5e4d86acf0ef7a7ec0f6b041d8dc7a9eb2af1ba99ec857340b7

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
