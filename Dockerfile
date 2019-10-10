FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:aa5ee96900516a28031acce8bef3c22145b0f908894ca2ebdf5c1368192c7bc6

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
