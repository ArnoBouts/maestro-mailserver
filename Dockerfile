FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:c7fcdc4fe10f491b5a2e217f7827c0ddb7764b52658c882885630c6971363028

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
