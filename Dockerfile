FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:07d69f966baa12a89b2664219cb1ac5a1f8bf169cab715b783cbd35db8baa296

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
