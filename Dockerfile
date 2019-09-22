FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:23de06370ed812cdbba8c34b9ee0295ee9aada1851d78e29978a6c1cdeeadac7

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
