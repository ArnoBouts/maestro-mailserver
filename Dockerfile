FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:61c37959597fc5c56d7c0661be33779f7bda61b6b5109383146500ee6719bd65

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
