FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:d382e3706e19bf7a692c4652dc4538431543269fd656b3205724b6353db5b37f

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
