FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:67d52001861df28709caade3bce1204e08f21764ca22247e325e52d99978d7e5

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
