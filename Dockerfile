FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:5b23c3d668bb08faa981269b9e3e1319584a7a42f83ad9a99ffc2214d057dde3

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
