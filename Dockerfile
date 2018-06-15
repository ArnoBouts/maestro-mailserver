FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:144bc61a45c43a057009c24b92199e7b3ad1d4ad6c59090fb40dc0e5631341d5

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
