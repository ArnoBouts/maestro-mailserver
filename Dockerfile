FROM tvial/docker-mailserver:latest
# FROM_DIGEST sha256:6b8d5cc65d334c7ba9de945d631067b6a4e11c35107336fe886968e806d4b5bb

COPY dovecot-ldap.conf.ext /etc/dovecot

RUN rm /etc/postfix/ldap-domains.cf

COPY maestro-generate-dkim-config /usr/local/bin
