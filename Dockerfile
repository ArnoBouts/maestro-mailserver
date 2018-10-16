FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:df8b1235bd5896201f9e7dae64ac6fb6513608c0beb7f3aee57086dcff8d2899

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
