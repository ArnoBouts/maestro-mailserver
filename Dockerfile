FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:c5fc3f48e0668b6abe41b719713c23c3dfcf0d0d8ec491153dee3a5e852313fd

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
