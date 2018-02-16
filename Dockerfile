FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:94147ecaf783c736a16675845eec292168f6432eee6aa4f5a01aa96f5b69104e

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
