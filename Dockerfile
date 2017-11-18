FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:c90f01ece66cc8d2a136969193f92adadf1c46f85ee8db5a24fe4aa6fe84e4c5

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
