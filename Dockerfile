FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:ba98622c204ea286b1500ad6973de1a1e70295744dfe0b1854dc3beecd7ed157

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
