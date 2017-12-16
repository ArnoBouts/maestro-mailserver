FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:ca86e164829e57ddeb882444fd29785ee0a6e95d9591d45cd10d911d87c84c66

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
