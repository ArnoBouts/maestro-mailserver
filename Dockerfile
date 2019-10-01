FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:ac35b68513cd9cc1b5b3e2938e738edd9323c6cf0e6c03bf46e416a69285f8a2

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
