FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:9b83086207186d678a981c20cd867ba9a6dfac6dae04f77aebff54d398d92a9e

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
