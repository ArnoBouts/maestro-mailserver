FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:33a3b7681244e098ba9c841cff1e47a76c9844fc64967ca200d8f322f376d4ea

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
