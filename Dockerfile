FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:1eb9cb3d6e6376c065b5df54be9d9b7f9cc4112fb5338382c018693513e481a4

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
