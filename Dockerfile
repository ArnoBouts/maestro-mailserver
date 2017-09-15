FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:1

COPY dovecot-ldap.conf.ext /etc/dovecot

COPY maestro-generate-dkim-config /usr/local/bin
