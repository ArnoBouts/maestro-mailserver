FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:e37a6c3ed50e64b4978919c755af3c972599beb1948102cb83dc26a4d4712d94

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
