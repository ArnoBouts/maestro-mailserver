FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:7bfa6e8a5927fcec8e1bc63a2de4d0c19a92f74d241d55b6c3713ca4e1501b67

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
