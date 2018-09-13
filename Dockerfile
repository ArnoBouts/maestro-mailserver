FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:103bb0a14f97fc445a42252dcbd891a6f39e4e0e6562220c12f7a8d4297c6f3b

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
