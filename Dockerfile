FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:a24a608e63849970e3e7e420d97b1b83adc2be9610c7f6034ac8fb655ce08c64

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
