FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:b5c9b7d1b7c4ee2d2d79da1374de7c2dbe7caf06cb380d55fe0299139224e127

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
