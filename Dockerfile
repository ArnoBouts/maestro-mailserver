FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:d5533caece25f620cd159d958bf863df606eb2f860c003fc5f520a67f2931525

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
