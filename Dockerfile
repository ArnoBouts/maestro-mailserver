FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:e6ad43077b99a63e3398e37a6d7a96a099c0190dbe4bf99c2c9cec15b8dcf604

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
