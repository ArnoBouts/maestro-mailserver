FROM tvial/docker-mailserver:latest

COPY dovecot-ldap.conf.ext /etc/dovecot

COPY maestro-generate-dkim-config /usr/local/bin
