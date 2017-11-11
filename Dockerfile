FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:635a806258db0eebc0f7fcc4339028f4f3c6dadad7ea2870290b0360c05e8a94

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
