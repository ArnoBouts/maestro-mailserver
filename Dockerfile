FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:8fbbdf2bb87e3c0e7d4b71549cd5a21f2fb3afe3f951a6833ff4b32b4c8e17b3

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
