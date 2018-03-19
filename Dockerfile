FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:59ec2a844a2d3488b38f2104fd49d54e030a5b0b084a6c4460d63db8c0f48e05

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
