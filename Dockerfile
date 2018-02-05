FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:b8143256cc7f4f465770fb40b41d3b8bcf9a7bccfe669caa11769af63362cefe

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
