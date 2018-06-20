FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:9ab0a877a43157d22961a4fb5b51f9f3a70e4cc03a19480aa83ffc7dcf6d7bd2

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
