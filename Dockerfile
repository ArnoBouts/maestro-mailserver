FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:474bc142ca2e14e275387d01c127f5e63063c3fc8a17351bcd0241561f78d3e4

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
