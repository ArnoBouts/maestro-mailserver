FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:0d6afcb68d6211ad4568c4cc2918a7eef1c0ec3a6625be9e352491a6bb3cce1e

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
