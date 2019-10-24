FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:e38822baaf6653b87a58977daa504e556483db03391f2e0e11d1fdbc0f578185

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
