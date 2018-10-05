FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:9ae67018c37f4de314a32c77c783f05667d2a65a66e19f441bf29c3bf12e5d2e

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
