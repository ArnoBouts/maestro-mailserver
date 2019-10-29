FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:9b14bdeb142c2d9c2b3cd521ad149eb00d9dd783f7fd660953b216cacdeadaca

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
