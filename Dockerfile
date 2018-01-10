FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:ca5659888f574497f5781389181b45e480a6fbf8dae87ef65ccb06b7166d126b

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
