FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:b8b435c6d107295b30a2f08120ca161b2bdbbabfd2d115bbaa6080c996c510c1

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
