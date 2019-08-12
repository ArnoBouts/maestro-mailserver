FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:d5a6e77ad27975b360d0c1c3f57feb2d1968ceb5dc39eb633f61fd1a86174348

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
