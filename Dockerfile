FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:888709a940185663554d5c841d6e063333c35d9de164cc31e10af4d75c6c10a7

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
