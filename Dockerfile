FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:c786dee50b524299bcb299004ccfc3c58961e4258950b892b866f28ead539791

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
