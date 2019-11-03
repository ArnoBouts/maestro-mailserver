FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:22bada6a3d68d3e5f7306022bcbb4c60b4928274e38adc0e80154ce38f376511

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
