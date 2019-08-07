FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:8fa446e22e5aee642ea5ddefdff1013a39f82077a3eaf32d17386348624e7221

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
