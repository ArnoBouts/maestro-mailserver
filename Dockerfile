FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:e7f1841a493360a54ed298315ed78c496077e0d2bbe508d6f962455148803c7a

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
