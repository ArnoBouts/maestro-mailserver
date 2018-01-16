FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:9d27e3c35eb2c54bed53c61d2640e72c0821be810eb863e90ae83b2ba04b95d7

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
