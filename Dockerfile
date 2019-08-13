FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:50957d607667906e65aeee4585defb018dadaa68d03a200e1b01b67eff13c6cf

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
