FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:26403a49ed8a22135baaf8d4c326ffe21033fd8b69c2dcaf959b71ffab5ecabd

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
