FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:715684a9110bb1c7120211c16ad44edb6eac7a6ab7e70c5e0a7cf44630a829b1

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
