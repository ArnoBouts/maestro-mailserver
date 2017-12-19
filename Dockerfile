FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:460a3a3fe28e21a6dc929f22960f049cc8ac6c82304351848bbf68e6d8304f7e

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
