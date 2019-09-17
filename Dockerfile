FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:265b60258d1ebd8a2a2208666f027356686c82ff36f7c1ca7abe92d79b7f0b4a

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
