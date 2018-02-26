FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:674824561999786d9a2aa6123d74dd466d769edecbdaee991e7c3f0b0fdb234c

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
