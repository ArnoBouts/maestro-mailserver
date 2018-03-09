FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:0f1375231210fc45407a06417dc921abf2081da532b2f3467d62a9b0717d76d4

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
