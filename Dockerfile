FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:bcf2d5842bf09040792c260ea9a09e8503d7d25778c160b0d87d00a6e56e0e5e

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
