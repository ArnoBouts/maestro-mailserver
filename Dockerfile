FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:af0e94f9728bbaaff871676cc456c2aeb6e9ebb8fd45b231286e7db5d92b0861

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
