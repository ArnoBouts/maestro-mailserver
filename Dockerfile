FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:cf1e423c5f3f214b7af95e23b0c19903ca72aded2d460e9e1a20676a7357561d

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
