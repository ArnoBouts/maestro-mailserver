FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:dc9c9849675cf501cb90fcad28f2f6161423a7f506c2f110e1d70f6b9c5d590f

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
