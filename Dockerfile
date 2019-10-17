FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:9b829cda4f6b973070f8c9dd6222abc51131153551eec07305c6241f70d0e949

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
