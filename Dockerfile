FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:b5dbd890a51a1b80e23d4bcf6ab1cf24bcaa36e0020c91cc45d6037b932ba8ab

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
