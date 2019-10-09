FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:e8457083c875a781b1548c69a5c886eb73e6f264fe5a3c3dff28707034d154ce

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
