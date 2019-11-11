FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:1396092194eb975d7b0620927541af73a6603d56d4933ee53d5757aa92c02718

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
