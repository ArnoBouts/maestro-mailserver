FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:b46c0c97f24f7027519ccd68fde3fbaa54f8687c9b9afa6ca539c9bf7d34be63

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
