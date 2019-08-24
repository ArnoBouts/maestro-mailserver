FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:a5a20326e99a7f878b6ea12d5060e4e99dc5e3ee18b0e2f2114b3ee1a7b685f2

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
