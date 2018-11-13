FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:e09db271ee72890c8cad5d25119f817c5e00e672a4e14bb6281dc60c0a0ee2b8

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
