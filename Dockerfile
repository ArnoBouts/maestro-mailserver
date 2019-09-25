FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:3141ca52f0b8da6e212685c3a4bcc5d904a3aa4780d2947ea72ddcd5292e8565

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
