FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:c1c8891c9a85eabe34d9622b941c4d210abc419bd0131a0670e4bbd597db7d99

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
