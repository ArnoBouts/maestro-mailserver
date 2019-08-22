FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:18132ff80438899539a25a03b9ba3be932532cefc8b0a8143784c9517b866c69

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
