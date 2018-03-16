FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:e01dae65f7cc94ff4d1ed3d4c9d8265885361961c52bd926bd9527321e188615

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
