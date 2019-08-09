FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:80df418db4e35219ed1dabf57b460d6fde6319983f09a9be12a0a70db682f609

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
