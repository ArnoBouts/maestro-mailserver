FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:ccde3dd457e8164ac0b2fbee86c7127cff9ecb699a8e7e0e14c1813f687189b2

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
