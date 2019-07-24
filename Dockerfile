FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:50b0a061a96da69ec5251fa9f7296e9f7ee92c42da9bc8fb71d5beb106c5cd1c

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
