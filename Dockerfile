FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:67be7be72ff24920f1aad4dda58b6092945f4dfbd9a2238ee17b23ff3299d02b

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
