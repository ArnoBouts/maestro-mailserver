FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:de79e0a0941e2f25baaec0b9736296a3f86e66cce39efe1c4a246049497e75f4

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
