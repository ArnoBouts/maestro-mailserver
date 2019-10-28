FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:6bc147779c5be26804a1c3c0eee30c0434b393a88348e4a44f08bfe97b79a955

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
