FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:52963b72d8ab4f8ec33341d2888dc80b902331e11dd3430c12b732978973635b

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
