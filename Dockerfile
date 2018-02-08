FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:2ba87bc59ecc11b16b3dc8c362173a48e74b7b1c7279e2fdaf4b5ead9fffeb21

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
