FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:b6f2885380e742c33943f62a55b30e7295d7a0a844a144fd53190ed00a8b4420

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
